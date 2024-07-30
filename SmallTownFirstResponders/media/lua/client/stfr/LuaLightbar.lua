---@type IsoCell
local cell
Events.OnPostMapLoad.Add(function (c, x, y)
    cell = c
end)

local currentTime = 0

--- Lua reimplementation of vehicle lightbars
---@class LuaLightbar
---@field private _vehicle BaseVehicle
---@field private _light IsoLightSource
---@field private _startTime number
---@field private _lastX integer
---@field private _lastY integer
---@field private _lastZ integer
---@field private _lastMode LightbarMode
---@field private _lastSide LightbarActiveLight
---@field private _leftR number
---@field private _leftG number
---@field private _leftB number
---@field private _rightR number
---@field private _rightG number
---@field private _rightB number
local LuaLightbar = {}
LuaLightbar.__index = LuaLightbar
---@type LuaLightbar[]
LuaLightbar.list = {}

---@alias LightbarActiveLight
---| 0 # None
---| 1 # Left
---| 2 # Right

---@alias LightbarMode
---| 0 # Off
---| 1 # Slow blink
---| 2 # Double blink
---| 3 # Fast blink

---@private
---@param mode LightbarMode
---@return LightbarActiveLight
LuaLightbar._getActiveLight = function(self, mode)
    local time = currentTime - self._startTime
    if mode == 1 then -- slow blinking
        time = time % 1000
        if time >= 50 and time < 450 then
            return 1
        elseif time >= 550 and time < 950 then
            return 2
        end
    elseif mode == 2 then -- double blink
        time = time % 1000
        if time >= 50 and time < 250 then
            return 1
        elseif time >= 300 and time < 500 then
            return 1
        elseif time >= 550 and time < 750 then
            return 2
        elseif time > 800 then
            return 2
        end
    elseif mode == 3 then -- fast blinking
        time = time % 300
        if time >= 25 and time < 125 then
            return 1
        elseif time >= 175 and time < 275 then
            return 2
        end
    end
    return 0
end

---@param r number
---@param g number
---@param b number
LuaLightbar.setColourLeft = function(self, r, g, b)
    self._leftR = r
    self._leftG = g
    self._leftB = b
end

---@param r number
---@param g number
---@param b number
LuaLightbar.setColourRight = function(self, r, g, b)
    self._rightR = r
    self._rightG = g
    self._rightB = b
end

---@return BaseVehicle
LuaLightbar.getVehicle = function(self)
    return self._vehicle
end

local vec3 = Vector3f.new()

---Updates the position and colour of the active light
LuaLightbar.update = function(self)
    if not self._vehicle:getSquare() then
        self:delete()
        return
    end
    ---@type LightbarMode
    local mode = self._vehicle:getLightbarLightsMode()
    if mode ~= self._lastMode then
        self._lastMode = mode
        self._startTime = getTimeInMillis()
    end
    if mode == 0 or self._vehicle:getBatteryCharge() <= 0 then
        return
    end

    local activeSide = self:_getActiveLight(mode)

    if activeSide ~= 0 then
        local x,y,z = 0,0,0
        local r, g, b
        if activeSide == 1 then
            x = x + 0.4
            r = self._leftR
            g = self._leftG
            b = self._leftB
        else
            x = x - 0.4
            r = self._rightR
            g = self._rightG
            b = self._rightB
        end

        self._vehicle:getWorldPos(x, y, z, vec3)
        x = math.floor(vec3:x())
        y = math.floor(vec3:y())
        z = math.floor(vec3:z() + 1)

        if self._lastSide == activeSide and self._lastX == x and self._lastY == y and self._lastZ == z then
            return
        end

        cell:removeLamppost(self._light)
        self._light = IsoLightSource.new(x, y, z, r, g, b, 8)
        cell:addLamppost(self._light)

        self._lastX = x
        self._lastY = y
        self._lastZ = z
        self._lastSide = activeSide
    elseif self._lastSide ~= 0 then
        cell:removeLamppost(self._light)
        self._lastSide = 0
    end
end

---Creates a LuaLightbar for a vehicle with the given colours
---@param vehicle BaseVehicle The vehicle
---@param leftR number Left red
---@param leftG number Left green
---@param leftB number Left blue
---@param rightR number Right red
---@param rightG number Right green
---@param rightB number Right blue
---@return LuaLightbar
LuaLightbar.new = function(vehicle, leftR, leftG, leftB, rightR, rightG, rightB)
    local o = {}

    setmetatable(o, LuaLightbar)
    ---@cast o LuaLightbar

    o._vehicle = vehicle
    o._startTime = -1

    o._leftR = leftR
    o._leftG = leftG
    o._leftB = leftB
    o._rightR = rightR
    o._rightG = rightG
    o._rightB = rightB

    o._lastX = 0
    o._lastY = 0
    o._lastZ = 0
    o._lastMode = 0
    o._lastSide = 0

    -- this one gets deleted right away but needs to exist to avoid a null pointer error
    o._light = IsoLightSource.new(0, 0, 0, 0, 0, 0, 8)

    table.insert(LuaLightbar.list, o)

    return o
end

---Cleans up resources so that the lightbar can be collected. Remove any references to the object after calling this.
LuaLightbar.delete = function(self)
    for i = 1, #LuaLightbar.list do
        if LuaLightbar.list[i] == self then
            table.remove(LuaLightbar.list, i)
            break
        end
    end

    cell:removeLamppost(self._light)
end

Events.OnTick.Add(function(tick)
    currentTime = getTimeInMillis()
    for i = 1, #LuaLightbar.list do
        LuaLightbar.list[i]:update()
    end
end)

---Creates a LuaLightbar for a vehicle
---@type VehiclePart_init
LuaLightbar_Init = function(vehicle, part)
    local colours = part:getTable("colours")
    local skinColours = luautils.split(colours[vehicle:getSkinIndex()] or colours.default, ";")
    for i = 1, 6 do
        skinColours[i] = tonumber(skinColours[i])
    end
    LuaLightbar.new(vehicle, unpack(skinColours))
end

return LuaLightbar