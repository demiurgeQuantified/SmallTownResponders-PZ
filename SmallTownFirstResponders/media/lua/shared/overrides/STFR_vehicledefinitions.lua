-- by albion#0123
-- seriously, thanks Albion!
if isClient() then return end

local Overrides = require 'overrides/STFR_overrides'
local VehicleDefinitions = {}
VehicleDefinitions.vehicleToSkin = require "STFR_Vehicle_Skins"

VehicleDefinitions.getSkinTable = function(script, zone, num)
    local skinTable = VehicleDefinitions.vehicleToSkin[script]
    if not skinTable then return end

    local newSkin
	newSkin = skinTable[zone] or skinTable.Meade
    if not newSkin then return end

	if type(newSkin) == 'table' and num then
		newSkin = newSkin[num]
	end

	return newSkin
end

return VehicleDefinitions