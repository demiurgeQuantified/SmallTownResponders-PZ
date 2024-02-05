-- by albion#0123
-- seriously, thanks Albion!
if isClient() then return end

local Overrides = require 'overrides/STFR_overrides'
local VehicleOverrides = {}
VehicleOverrides.vehicleToSkin = require "STFR_Vehicle_Skins"

VehicleOverrides.changeVehicleSkin = function(vehicle, skin)
    vehicle:setSkinIndex(skin)
    vehicle:updateSkin()
    vehicle:transmitSkinIndex()
end

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
function Vehicles.Create.Engine(vehicle, part)
	old_create_engine(vehicle, part)
	if SandboxVars.STFR.VehicleOverrides and getWorld():getMap():contains("Muldraugh, KY") then
		VehicleOverrides.overrideVehicle(vehicle)
	end
end

return VehicleOverrides