-- by albion#0123
-- seriously, thanks Albion!
if isClient() then return end

local Overrides = require 'overrides/STFR_overrides'
local VehicleOverrides = {}
VehicleOverrides.vehicleToSkin = require "STFR_Vehicle_Skins"

---@class RadioPresetData Opaque type that stores information about a radio preset.
---@field package name string Displayed name of the station.
---@field package frequency integer Frequency of the station.

---@type table<string, table<string, table<integer, RadioPresetData>>>
VehicleOverrides.radioPresets = {}

---Creates a radio preset object. This doesn't actually add the preset to any vehicles - it must then be registered for each vehicle and zone pair.
---@param name string Translated string to display for the station's name.
---@param frequency integer Frequency of the station in hertz. Must be a multiple of 200.
---@return RadioPresetData preset The radio preset.
---@nodiscard
VehicleOverrides.createRadioPreset = function(name, frequency)
    return {name = name, frequency = frequency}
end

---Registers a preset for a specific vehicle. All newly spawning vehicles who match the criteria will have the preset added to their radio.
---@param preset RadioPresetData The preset to register for this vehicle.
---@param vehicle string Full type of the vehicle to register the preset for (e.g. "Base.CarLightsPolice").
---@param zone string? Name of the overrides zone to restrict this preset to. All zones will receive it if not specified.
VehicleOverrides.registerRadioPreset = function(preset, vehicle, zone)
    zone = zone or "_all"

    local vehicleTable = VehicleOverrides.radioPresets[vehicle]
    if not vehicleTable then
        vehicleTable = {}
        VehicleOverrides.radioPresets[vehicle] = vehicleTable
    end

    local zonePresets = vehicleTable[zone]
    if not zonePresets then
        zonePresets = {}
        vehicleTable[zone] = zonePresets
    end
    table.insert(zonePresets, preset)
end



---@param vehicle BaseVehicle
---@param radio VehiclePart
---@param type string?
---@param zone string?
VehicleOverrides.addMissingRadioPresets = function(vehicle, radio, type, zone)
    type = type or vehicle:getScriptName()
    local vehicleTable = VehicleOverrides.radioPresets[type]
    if not vehicleTable then return end

    local allPresets = vehicleTable._all

    zone = zone or Overrides.getZone(vehicle:getX(), vehicle:getY(), Overrides.zonesPolice)
    local zonePresets = vehicleTable[zone]

    if not allPresets and not zonePresets then return end

    local deviceData = radio:getDeviceData()
    local devicePresets = deviceData:getDevicePresets()

    if allPresets then
        for i = 1, #allPresets do
            local preset = allPresets[i]
            devicePresets:addPreset(preset.name, preset.frequency)
        end
    end

    if zonePresets then
        for i = 1, #zonePresets do
            local preset = zonePresets[i]
            devicePresets:addPreset(preset.name, preset.frequency)
        end
    end

    -- TODO: is this necessary?
    deviceData:transmitPresets()
end

---@param vehicle BaseVehicle
---@param skin integer
VehicleOverrides.changeVehicleSkin = function(vehicle, skin)
    vehicle:setSkinIndex(skin)
    vehicle:updateSkin()
    vehicle:transmitSkinIndex()
end

---@param vehicle BaseVehicle
VehicleOverrides.overrideVehicle = function(vehicle)
    local script = vehicle:getScriptName()
    local skinTable = VehicleOverrides.vehicleToSkin[script]
    if not skinTable then return end

    local newSkin
    if skinTable.Replace then
        newSkin = skinTable.Replace[vehicle:getSkinIndex()]
    else
        local x = vehicle:getX()
        local y = vehicle:getY()
        local zone
        if skinTable.Police then
            zone = Overrides.getZone(x,y,Overrides.zonesPolice)
        else
            zone = Overrides.getZone(x,y)
        end

        newSkin = skinTable[zone] or skinTable.Meade
    end
    if not newSkin then return end

    if type(newSkin) == 'table' then newSkin = newSkin[ZombRand(1, #newSkin+1)] end

    VehicleOverrides.changeVehicleSkin(vehicle, newSkin)
end

local old_create_engine = Vehicles.Create.Engine
---@type VehiclePart_create
function Vehicles.Create.Engine(vehicle, part)
	old_create_engine(vehicle, part)
	if SandboxVars.STFR.VehicleOverrides and getWorld():getMap():contains("Muldraugh, KY") then
		VehicleOverrides.overrideVehicle(vehicle)
	end
end

local old_create_radio = Vehicles.Create.Radio
---@type VehiclePart_create
function Vehicles.Create.Radio(vehicle, part)
    old_create_radio(vehicle, part)
    if getWorld():getMap():contains("Muldraugh, KY") then
        VehicleOverrides.addMissingRadioPresets(vehicle, part)
    end
end

local old_create_radio_HAM = Vehicles.Create.Radio_HAM
---@type VehiclePart_create
function Vehicles.Create.Radio_HAM(vehicle, part)
    old_create_radio_HAM(vehicle, part)
    if getWorld():getMap():contains("Muldraugh, KY") then
        VehicleOverrides.addMissingRadioPresets(vehicle, part)
    end
end

return VehicleOverrides