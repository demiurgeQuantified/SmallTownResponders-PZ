-- by albion#0123
-- seriously, thanks Albion!
if isClient() then return end

local Overrides = require 'overrides/overrides'
local VehicleOverrides = {}

VehicleOverrides.vehicleToSkin = {
	['Base.CarLightsPolice'] = { -- vanilla police car
		Police = true,
		KSP = 1,
		Meade = 2,
		Rosewood = 3,
		WestPoint = 4,
		Muldraugh = 5,
		Riverside = 6,
		LouisvillePD = 7,
		JeffersonPD = 8,
		JeffersonSD = 9,
		RavenCreek = 10},
	['Base.PickUpVanLightsPolice'] = { -- vanilla police van
		Police = true,
		KSP = 1,
		Meade = 2,
		Rosewood = 3,
		WestPoint = 4,
		Muldraugh = 5,
		Riverside = 6,
		LouisvillePD = 7,
		JeffersonPD = 8,
		JeffersonSD = 9,
		RavenCreek = 10},
	['Base.87capricePD'] = { -- filibuster police car
		Police = true,
		KSP = 2,
		Meade = 3,
		Rosewood = 4,
		WestPoint = 5,
		Muldraugh = 6,
		Riverside = 7,
		LouisvillePD = 8,
		JeffersonPD = 9,
		JeffersonSD = 10,
		RavenCreek = 11},
	['Base.91blazerpd'] = { -- filibuster police car
		Police = true,
		KSP = 3,
		Meade = 4,
		Rosewood = 5,
		WestPoint = 6,
		Muldraugh = 7,
		Riverside = 8,
		LouisvillePD = 9,
		JeffersonPD = 10,
		JeffersonSD = 11,
		RavenCreek = 12},
	['Base.85vicsheriff'] = { -- filibuster police car
		Police = true,
		KSP = 3,
		Meade = 4,
		Rosewood = 5,
		WestPoint = 6,
		Muldraugh = 7,
		Riverside = 8,
		LouisvillePD = 9,
		JeffersonPD = 10,
		JeffersonSD = 11,
		RavenCreek = 12},
	['Base.92crownvicPD'] = { -- filibuster police car
		Police = true,
		KSP = 2,
		Meade = 3,
		Rosewood = 4,
		WestPoint = 5,
		Muldraugh = 6,
		Riverside = 7,
		LouisvillePD = 8,
		JeffersonPD = 9,
		JeffersonSD = 10,
		RavenCreek = 11},
	['Base.CarLights'] = { -- vanilla ranger car
		Meade = {1, 2, 3},},
	['Base.85vicranger'] = { -- filibuster ranger car
		Meade = {1, 2, 3},},
	['Base.92wranglerranger'] = { -- filibuster ranger car
		Meade = {1, 2, 3},},
	['Base.StepVanMail'] = { -- vanilla post van
		Meade = 1,},
	['Base.VanSpecial'] = { -- vanilla post van
		Replace = 2,
		Meade = 3,},
	['Base.PickUpVanLightsFire'] = { -- vanilla fire pickup van
		Louisville = 3,
		Jefferson = 3,
		Rosewood = 1,
		Meade = 2,
		RavenCreek = 4,},
	['Base.PickUpTruckLightsFire'] = { -- vanilla fire pickup truck
		Louisville = 3,
		Jefferson = 3,
		Rosewood = 1,
		Meade = 2,
		RavenCreek = 4,},
	['Base.87c10fire'] = { -- filibuster fire pickup truck
		Louisville = 3,
		Jefferson = 3,
		Rosewood = 1,
		Meade = 2,
		RavenCreek = 4,},
	['Base.firepumper'] = { -- filibuster fire truck
		Louisville = 3,
		Jefferson = 3,
		Rosewood = 1,
		Meade = 2,
		RavenCreek = 4,},
	['Base.VanAmbulance'] = { -- vanilla ambulance
		Louisville = 2,
		Jefferson = 3,
		Meade = 1,
		RavenCreek = 4,},
	['Base.80f350ambulance'] = { -- filibuster ambulance
		Louisville = 2,
		Jefferson = 3,
		Meade = 1,
		RavenCreek = 4,},
	['Base.86econolineambulance'] = { -- filibuster ambulance
		Louisville = 2,
		Jefferson = 3,
		Meade = 1,
		RavenCreek = 4,},
}

if getActivatedMods():contains("VVehicleEnhancer") then
	VehicleOverrides.vehicleToSkin['Base.CarLightsSheriff'] = { -- vve police car
			Police = true,
			KSP = 1,
			Meade = 2,
			Rosewood = 3,
			WestPoint = 4,
			Muldraugh = 5,
			Riverside = 6,
			LouisvillePD = 7,
			JeffersonPD = 8,
			JeffersonSD = 9,
			RavenCreek = 10}
	VehicleOverrides.vehicleToSkin['Base.CarLightsStatepolice'] = { -- vve police car
			Police = true,
			KSP = 1,
			Meade = 2,
			Rosewood = 3,
			WestPoint = 4,
			Muldraugh = 5,
			Riverside = 6,
			LouisvillePD = 7,
			JeffersonPD = 8,
			JeffersonSD = 9,
			RavenCreek = 10}
end

---Applies offsets for compatibility with other mods that add vehicle skins
---@param offsets table<string, number> vehicle script : offset
VehicleOverrides.doOffsets = function(offsets)
	for script,offset in pairs(offsets) do
		local skins = VehicleOverrides.vehicleToSkin[script]
		for k,v in pairs(skins) do
			skins[k] = v + offset
		end
	end
end

VehicleOverrides.changeVehicleSkin = function(vehicle, skin)
    if type(skin) == 'table' then skin = skin[ZombRand(1, #skin+1)] end
    vehicle:setSkinIndex(skin)
    vehicle:updateSkin()
    vehicle:transmitSkinIndex()
end

VehicleOverrides.overrideVehicle = function(vehicle)
    local script = vehicle:getScriptName()
    local skinTable = VehicleOverrides.vehicleToSkin[script]
    if not skinTable then return end
    if skinTable['Replace'] then
        if not (vehicle:getSkinIndex() == skinTable['Replace']) then return end -- only replace certain skins: this is lazily done right now because there is only one use for it yet
    end

    local x = vehicle:getX()
    local y = vehicle:getY()
    local zone
    if skinTable['Police'] then
        zone = Overrides.getZone(x,y,Overrides.zonesPolice)
    else
        zone = Overrides.getZone(x,y)
    end

    local newSkin = skinTable[zone]
    if not newSkin then newSkin = skinTable['Meade'] end

    VehicleOverrides.changeVehicleSkin(vehicle, newSkin)
end

local old_create_engine = Vehicles.Create.Engine
function Vehicles.Create.Engine(vehicle, part)
	old_create_engine(vehicle, part)
	if SandboxVars.STR.VehicleOverrides and getWorld():getMap():contains("Muldraugh, KY") then
		VehicleOverrides.overrideVehicle(vehicle)
	end
end

return VehicleOverrides