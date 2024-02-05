--if isClient() then return end
local vehicleToSkin = {}
local ZoneName = require 'STFR_Vehicle_Skin_Zones'

---Like DoParam but for vehicles
---@param vehicle string Name of the vehicle script
---@param param string The parameter(s) to apply to this script
---@param module string Optional: the module of the vehicle
---@see Item#DoParam
---@see VehicleScript#Load
local DoVehicleParam = function(vehicle, param, module)
	module = module or "Base"
	local vehicleScript = ScriptManager.instance:getVehicle(module .. "." .. vehicle)
	if not vehicleScript then return false end
	vehicleScript:Load(vehicle, "{" .. param .. "}")
	return true
end

---Utility to add new skins to vehicles
---@param vehicle string Name of the vehicle script
---@param texture string The new skin's texture
---@see DoVehicleParam
AddVehicleSkin = function(vehicle, zone, texture, module)
	module = module or "Base"

	if not DoVehicleParam(vehicle, "skin { texture = " .. texture .. ",}", module) then return end
	local fullName = module .. "." .. vehicle
	local newSkinNum = ScriptManager.instance:getVehicle(fullName):getSkinCount() - 1

	vehicleToSkin[fullName] = vehicleToSkin[fullName] or {}
	local zoneSkins = vehicleToSkin[fullName][zone]
	if zoneSkins then
		if type(zoneSkins) ~= "table" then -- convert to random picker table if a skin already exists
			zoneSkins = {zoneSkins}
			vehicleToSkin[fullName][zone] = zoneSkins
		end
		table.insert(zoneSkins, newSkinNum)
	else
		vehicleToSkin[fullName][zone] = newSkinNum
	end
end

---Adds a new skin to a vehicle and adds it to the replace table NOTE: this currently stops zone overrides from working on that vehicle
---@param vehicle string Name of the vehicle script
---@param texture string The new skin's texture
---@param replace int The skin number to replace. Only stable if overriding vanilla skins/skins from the mod that adds the vehicle
---@param module string Optional: the module of the vehicle
---@see AddVehicleSkin
---@see DoVehicleParam
AddVehicleSkinOverride = function(vehicle, replace, texture, module)
	module = module or "Base"

	if not DoVehicleParam(vehicle, "skin { texture = " .. texture .. ",}", module) then return end

	local fullName = module .. "." .. vehicle
	vehicleToSkin[fullName] = vehicleToSkin[fullName] or {}
	vehicleToSkin[fullName].Replace = vehicleToSkin[fullName].Replace or {}
	vehicleToSkin[fullName].Replace[replace] = ScriptManager.instance:getVehicle(fullName):getSkinCount() - 1
end

---Utility to change the siren sound of a vehicle
---@param vehicle string Name of the vehicle script
---@param sound string Name of a sound
---@see DoVehicleParam
SetSirenSound = function(vehicle, sound)
	DoVehicleParam(vehicle, "lightbar { soundSiren = " .. sound .. ",}")
end

---Utility to change the horn sound of a vehicle
---@param vehicle string Name of the vehicle script
---@param sound string Name of a sound
---@see DoVehicleParam
---@see SetSirenSound
SetHornSound = function(vehicle, sound)
	DoVehicleParam(vehicle, "sound { horn = " .. sound .. ",}")
end

---Sets a vehicle to use police zones instead of regular zones. Slower but needed for police
SetPoliceVehicle = function(vehicle, module)
	module = module or "Base"
	local fullName = module .. "." .. vehicle
	vehicleToSkin[fullName] = vehicleToSkin[fullName] or {}
	vehicleToSkin[fullName].Police = true
end

---Utility to change the radio of a vehicle
---@param vehicle string Name of the vehicle script
---@param radio string Name of a radio template
---@see DoVehicleParam
---@see SetSirenSound
SetRadioType = function(vehicle, radio)
	DoVehicleParam(vehicle, "template = " .. radio .. ",")
end

if getActivatedMods():contains("VVehicleEnhancer") and getActivatedMods():contains("Time_Accurate_Sirens") then

	SetSirenSound("CarLightsSheriff","MovieSiren");
	SetSirenSound("CarLightsStatepolice","MovieSiren");

end

if not getActivatedMods():contains("VVehicleEnhancer") and not getActivatedMods():contains("SCKCO") then

	SetPoliceVehicle("CarLightsPolice")
	SetPoliceVehicle("PickUpVanLightsPolice")

	AddVehicleSkin("CarLightsPolice", ZoneName.KSP, "Vehicles/vehicle_STFR_carnormal_police_ksp")
	AddVehicleSkin("CarLightsPolice", ZoneName.Meade, "Vehicles/vehicle_STFR_carnormal_sheriff_meade")
	AddVehicleSkin("CarLightsPolice", ZoneName.Rosewood, "Vehicles/vehicle_STFR_carnormal_sheriff_rosewood")
	AddVehicleSkin("CarLightsPolice", ZoneName.WestPoint, "Vehicles/vehicle_STFR_carnormal_police_westpoint_blue")
	AddVehicleSkin("CarLightsPolice", ZoneName.WestPoint, "Vehicles/vehicle_STFR_carnormal_police_westpoint_white")
	AddVehicleSkin("CarLightsPolice", ZoneName.Muldraugh, "Vehicles/vehicle_STFR_carnormal_police_muldraugh")
	AddVehicleSkin("CarLightsPolice", ZoneName.Riverside, "Vehicles/vehicle_STFR_carnormal_police_riverside")
	AddVehicleSkin("CarLightsPolice", ZoneName.LouisvillePD, "Vehicles/vehicle_STFR_carnormal_police_louisville")
	AddVehicleSkin("CarLightsPolice", ZoneName.JeffersonPD, "Vehicles/vehicle_STFR_carnormal_police_jefferson")
	AddVehicleSkin("CarLightsPolice", ZoneName.JeffersonSD, "Vehicles/vehicle_STFR_carnormal_sheriff_jefferson")

	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.KSP, "Vehicles/vehicle_STFR_pickup_police_ksp");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.Meade, "Vehicles/vehicle_STFR_pickup_sheriff_meade");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.Rosewood, "Vehicles/vehicle_STFR_pickup_sheriff_rosewood");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.WestPoint, "Vehicles/vehicle_STFR_pickup_police_westpoint_blue");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.WestPoint, "Vehicles/vehicle_STFR_pickup_police_westpoint_white");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.Muldraugh, "Vehicles/vehicle_STFR_pickup_police_muldraugh");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.Riverside, "Vehicles/vehicle_STFR_pickup_police_riverside");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.LouisvillePD, "Vehicles/vehicle_STFR_pickup_police_louisville");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.JeffersonPD, "Vehicles/vehicle_STFR_pickup_police_jefferson");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.JeffersonSD, "Vehicles/vehicle_STFR_pickup_sheriff_jefferson");

	AddVehicleSkin("VanAmbulance", ZoneName.Meade, "Vehicles/vehicle_STFR_van_ems_meade");
	AddVehicleSkin("VanAmbulance", ZoneName.Louisville, "Vehicles/vehicle_STFR_van_ems_louisville");
	AddVehicleSkin("VanAmbulance", ZoneName.Jefferson, "Vehicles/vehicle_STFR_van_ems_jefferson");

	AddVehicleSkin("PickUpTruckLightsFire", ZoneName.Rosewood, "Vehicles/vehicle_STFR_pickup_fire_rosewood");
	AddVehicleSkin("PickUpTruckLightsFire", ZoneName.Meade, "Vehicles/vehicle_STFR_pickup_fire_meade");
	AddVehicleSkin("PickUpTruckLightsFire", ZoneName.Louisville, "Vehicles/vehicle_STFR_pickup_fire_louisville");

	AddVehicleSkin("PickUpVanLightsFire", ZoneName.Rosewood, "Vehicles/vehicle_STFR_pickup_fire_rosewood");
	AddVehicleSkin("PickUpVanLightsFire", ZoneName.Meade, "Vehicles/vehicle_STFR_pickup_fire_meade_covered");
	AddVehicleSkin("PickUpVanLightsFire", ZoneName.Louisville, "Vehicles/vehicle_STFR_pickup_fire_louisville");

	AddVehicleSkin("PickUpTruckLights", ZoneName.Default, "Vehicles/vehicle_STFR_pickup_ranger_state_park");
	AddVehicleSkin("PickUpTruckLights", ZoneName.Default, "Vehicles/vehicle_STFR_pickup_ranger_conservation");
	AddVehicleSkin("PickUpTruckLights", ZoneName.Default, "Vehicles/vehicle_STFR_pickup_ranger_federal");

	AddVehicleSkin("PickUpVanLights", ZoneName.Default, "Vehicles/vehicle_STFR_pickup_ranger_state_park");
	AddVehicleSkin("PickUpVanLights", ZoneName.Default, "Vehicles/vehicle_STFR_pickup_ranger_conservation");
	AddVehicleSkin("PickUpVanLights", ZoneName.Default, "Vehicles/vehicle_STFR_pickup_ranger_federal");

	AddVehicleSkin("CarLights", ZoneName.Default, "Vehicles/vehicle_STFR_carnormal_ranger_state_park");
	AddVehicleSkin("CarLights", ZoneName.Default, "Vehicles/vehicle_STFR_carnormal_ranger_conservation");
	AddVehicleSkin("CarLights", ZoneName.Default, "Vehicles/vehicle_STFR_carnormal_ranger_federal");

	AddVehicleSkin("StepVanMail", ZoneName.Default, "Vehicles/vehicle_STFR_stepvan_extra_usps");

	AddVehicleSkinOverride("VanSpecial", 2, "Vehicles/vehicle_STFR_van_extra_usps");

end
if getActivatedMods():contains("FRUsedCars") then

	SetRadioType("chevystepvanswat","Radio_HAM");
	SetRadioType("85vicsheriff","Radio_HAM");
	SetRadioType("92crownvicPD","Radio_HAM");
	SetRadioType("91blazerpd","Radio_HAM");
	SetRadioType("87capricePD","Radio_HAM");
	SetRadioType("87c10fire","Radio_HAM");
	SetRadioType("firepumper","Radio_HAM");
	SetRadioType("86econolineambulance","Radio_HAM");
	SetRadioType("80f350ambulance","Radio_HAM");

	SetPoliceVehicle("chevystepvanswat")

	SetPoliceVehicle("85vicsheriff")
	AddVehicleSkin("85vicsheriff", ZoneName.KSP, "Vehicles/Filibuster/vehicle_STFR_85crownvic_police_ksp");
	AddVehicleSkin("85vicsheriff", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_85crownvic_sheriff_meade");
	AddVehicleSkin("85vicsheriff", ZoneName.Rosewood, "Vehicles/Filibuster/vehicle_STFR_85crownvic_sheriff_rosewood");
	AddVehicleSkin("85vicsheriff", ZoneName.WestPoint, "Vehicles/Filibuster/vehicle_STFR_85crownvic_police_westpoint_blue");
	AddVehicleSkin("85vicsheriff", ZoneName.WestPoint, "Vehicles/Filibuster/vehicle_STFR_85crownvic_police_westpoint_white");
	AddVehicleSkin("85vicsheriff", ZoneName.Muldraugh, "Vehicles/Filibuster/vehicle_STFR_85crownvic_police_muldraugh");
	AddVehicleSkin("85vicsheriff", ZoneName.Riverside, "Vehicles/Filibuster/vehicle_STFR_85crownvic_police_riverside");
	AddVehicleSkin("85vicsheriff", ZoneName.LouisvillePD, "Vehicles/Filibuster/vehicle_STFR_85crownvic_police_lousville");
	AddVehicleSkin("85vicsheriff", ZoneName.JeffersonPD, "Vehicles/Filibuster/vehicle_STFR_85crownvic_police_jefferson");
	AddVehicleSkin("85vicsheriff", ZoneName.JeffersonSD, "Vehicles/Filibuster/vehicle_STFR_85crownvic_sheriff_jefferson");

	SetPoliceVehicle("92crownvicPD")
	AddVehicleSkin("92crownvicPD", ZoneName.KSP, "Vehicles/Filibuster/vehicle_STFR_92crownvic_police_ksp");
	AddVehicleSkin("92crownvicPD", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_92crownvic_sheriff_meade");
	AddVehicleSkin("92crownvicPD", ZoneName.Rosewood, "Vehicles/Filibuster/vehicle_STFR_92crownvic_sheriff_rosewood");
	AddVehicleSkin("92crownvicPD", ZoneName.WestPoint, "Vehicles/Filibuster/vehicle_STFR_92crownvic_police_westpoint_blue");
	AddVehicleSkin("92crownvicPD", ZoneName.WestPoint, "Vehicles/Filibuster/vehicle_STFR_92crownvic_police_westpoint_white");
	AddVehicleSkin("92crownvicPD", ZoneName.Muldraugh, "Vehicles/Filibuster/vehicle_STFR_92crownvic_police_muldraugh");
	AddVehicleSkin("92crownvicPD", ZoneName.Riverside, "Vehicles/Filibuster/vehicle_STFR_92crownvic_police_riverside");
	AddVehicleSkin("92crownvicPD", ZoneName.LouisvillePD, "Vehicles/Filibuster/vehicle_STFR_92crownvic_police_louisville");
	AddVehicleSkin("92crownvicPD", ZoneName.JeffersonPD, "Vehicles/Filibuster/vehicle_STFR_92crownvic_police_jefferson");
	AddVehicleSkin("92crownvicPD", ZoneName.JeffersonSD, "Vehicles/Filibuster/vehicle_STFR_92crownvic_sheriff_jefferson");

	SetPoliceVehicle("91blazerpd")
	AddVehicleSkin("91blazerpd", ZoneName.KSP, "Vehicles/Filibuster/vehicle_STFR_blazer_police_ksp");
	AddVehicleSkin("91blazerpd", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_blazer_sheriff_meade");
	AddVehicleSkin("91blazerpd", ZoneName.Rosewood, "Vehicles/Filibuster/vehicle_STFR_blazer_sheriff_rosewood");
	AddVehicleSkin("91blazerpd", ZoneName.WestPoint, "Vehicles/Filibuster/vehicle_STFR_blazer_police_westpoint_blue");
	AddVehicleSkin("91blazerpd", ZoneName.WestPoint, "Vehicles/Filibuster/vehicle_STFR_blazer_police_westpoint_white");
	AddVehicleSkin("91blazerpd", ZoneName.Muldraugh, "Vehicles/Filibuster/vehicle_STFR_blazer_police_muldraugh");
	AddVehicleSkin("91blazerpd", ZoneName.Riverside, "Vehicles/Filibuster/vehicle_STFR_blazer_police_riverside");
	AddVehicleSkin("91blazerpd", ZoneName.LouisvillePD, "Vehicles/Filibuster/vehicle_STFR_blazer_police_louisville");
	AddVehicleSkin("91blazerpd", ZoneName.JeffersonPD, "Vehicles/Filibuster/vehicle_STFR_blazer_police_jefferson");
	AddVehicleSkin("91blazerpd", ZoneName.JeffersonSD, "Vehicles/Filibuster/vehicle_STFR_blazer_sheriff_jefferson");

	SetPoliceVehicle("87capricePD")
	AddVehicleSkin("87capricePD", ZoneName.KSP, "Vehicles/Filibuster/vehicle_STFR_87caprice_police_ksp");
	AddVehicleSkin("87capricePD", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_87caprice_sheriff_meade");
	AddVehicleSkin("87capricePD", ZoneName.Rosewood, "Vehicles/Filibuster/vehicle_STFR_87caprice_sheriff_rosewood");
	AddVehicleSkin("87capricePD", ZoneName.WestPoint, "Vehicles/Filibuster/vehicle_STFR_87caprice_police_westpoint_blue");
	AddVehicleSkin("87capricePD", ZoneName.WestPoint, "Vehicles/Filibuster/vehicle_STFR_87caprice_police_westpoint_white");
	AddVehicleSkin("87capricePD", ZoneName.Muldraugh, "Vehicles/Filibuster/vehicle_STFR_87caprice_police_muldraugh");
	AddVehicleSkin("87capricePD", ZoneName.Riverside, "Vehicles/Filibuster/vehicle_STFR_87caprice_police_riverside");
	AddVehicleSkin("87capricePD", ZoneName.LouisvillePD, "Vehicles/Filibuster/vehicle_STFR_87caprice_police_louisville");
	AddVehicleSkin("87capricePD", ZoneName.JeffersonPD, "Vehicles/Filibuster/vehicle_STFR_87caprice_police_jefferson");
	AddVehicleSkin("87capricePD", ZoneName.JeffersonSD, "Vehicles/Filibuster/vehicle_STFR_87caprice_sheriff_jefferson");

	AddVehicleSkin("80f350ambulance", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_80f350_ems_meade");
	AddVehicleSkin("80f350ambulance", ZoneName.Louisville, "Vehicles/Filibuster/vehicle_STFR_80f350_ems_louisville");
	AddVehicleSkin("80f350ambulance", ZoneName.Jefferson, "Vehicles/Filibuster/vehicle_STFR_80f350_ems_jefferson");

	AddVehicleSkin("86econolineambulance", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_86econoline_ems_meade");
	AddVehicleSkin("86econolineambulance", ZoneName.Louisville, "Vehicles/Filibuster/vehicle_STFR_86econoline_ems_louisville");
	AddVehicleSkin("86econolineambulance", ZoneName.Jefferson, "Vehicles/Filibuster/vehicle_STFR_86econoline_ems_jefferson");

	AddVehicleSkin("firepumper", ZoneName.Rosewood, "Vehicles/Filibuster/vehicle_STFR_firepumper_fire_rosewood");
	AddVehicleSkin("firepumper", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_firepumper_fire_meade");
	AddVehicleSkin("firepumper", ZoneName.Louisville, "Vehicles/Filibuster/vehicle_STFR_firepumper_fire_louisville");

	AddVehicleSkin("87c10fire", ZoneName.Rosewood, "Vehicles/Filibuster/vehicle_STFR_c10_utility_fire_rosewood");
	AddVehicleSkin("87c10fire", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_c10_utility_fire_meade");
	AddVehicleSkin("87c10fire", ZoneName.Louisville, "Vehicles/Filibuster/vehicle_STFR_c10_utility_fire_louisville");

	AddVehicleSkin("92wranglerranger", ZoneName.Default, "Vehicles/Filibuster/vehicle_STFR_92wrangler_ranger_state_park");
	AddVehicleSkin("92wranglerranger", ZoneName.Default, "Vehicles/Filibuster/vehicle_STFR_92wrangler_ranger_conservation");
	AddVehicleSkin("92wranglerranger", ZoneName.Default, "Vehicles/Filibuster/vehicle_STFR_92wrangler_ranger_federal");

	AddVehicleSkin("85vicranger", ZoneName.Default, "Vehicles/Filibuster/vehicle_STFR_85crownvic_ranger_state_park");
	AddVehicleSkin("85vicranger", ZoneName.Default, "Vehicles/Filibuster/vehicle_STFR_85crownvic_ranger_conservation");
	AddVehicleSkin("85vicranger", ZoneName.Default, "Vehicles/Filibuster/vehicle_STFR_85crownvic_ranger_federal");

	AddVehicleSkin("schoolbus", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_bus_school_meade");
	AddVehicleSkin("schoolbus", ZoneName.Louisville, "Vehicles/Filibuster/vehicle_STFR_bus_school_jefferson");
	AddVehicleSkin("schoolbus", ZoneName.Jefferson, "Vehicles/Filibuster/vehicle_STFR_bus_school_jefferson");

	AddVehicleSkin("schoolbusshort", ZoneName.Meade, "Vehicles/Filibuster/vehicle_STFR_bus_school_meade");
	AddVehicleSkin("schoolbusshort", ZoneName.Louisville, "Vehicles/Filibuster/vehicle_STFR_bus_school_jefferson");
	AddVehicleSkin("schoolbusshort", ZoneName.Jefferson, "Vehicles/Filibuster/vehicle_STFR_bus_school_jefferson");

	if getActivatedMods():contains("PogDogSkins") then

		AddVehicleSkin("schoolbus", ZoneName.Meade, "Vehicles/vehicle_schoolbus_callieshell");
		AddVehicleSkin("schoolbus", ZoneName.Louisville, "Vehicles/vehicle_schoolbus_callieshell");
		AddVehicleSkin("schoolbus", ZoneName.Jefferson, "Vehicles/vehicle_schoolbus_callieshell");

	end
end
if getActivatedMods():contains("VVehicleEnhancer") and not getActivatedMods():contains("SCKCO") then

	SetPoliceVehicle("CarLightsPolice")
	SetPoliceVehicle("PickUpVanLightsPolice")

	AddVehicleSkin("CarLightsPolice", ZoneName.KSP, "Vehicles/VVE/vehicle_STFR_carnormal_police_ksp_VVE");
	AddVehicleSkin("CarLightsPolice", ZoneName.Meade, "Vehicles/VVE/vehicle_STFR_carnormal_sheriff_meade_VVE");
	AddVehicleSkin("CarLightsPolice", ZoneName.Rosewood, "Vehicles/VVE/vehicle_STFR_carnormal_sheriff_rosewood_VVE");
	AddVehicleSkin("CarLightsPolice", ZoneName.WestPoint, "Vehicles/VVE/vehicle_STFR_carnormal_police_westpoint_blue_VVE");
	AddVehicleSkin("CarLightsPolice", ZoneName.WestPoint, "Vehicles/VVE/vehicle_STFR_carnormal_police_westpoint_white_VVE");
	AddVehicleSkin("CarLightsPolice", ZoneName.Muldraugh, "Vehicles/VVE/vehicle_STFR_carnormal_police_muldraugh_VVE");
	AddVehicleSkin("CarLightsPolice", ZoneName.Riverside, "Vehicles/VVE/vehicle_STFR_carnormal_police_riverside_VVE");
	AddVehicleSkin("CarLightsPolice", ZoneName.LouisvillePD, "Vehicles/VVE/vehicle_STFR_carnormal_police_louisville_VVE");
	AddVehicleSkin("CarLightsPolice", ZoneName.JeffersonPD, "Vehicles/VVE/vehicle_STFR_carnormal_police_jefferson_VVE");
	AddVehicleSkin("CarLightsPolice", ZoneName.JeffersonSD, "Vehicles/VVE/vehicle_STFR_carnormal_sheriff_jefferson_VVE");

	SetPoliceVehicle("CarLightsSheriff")
	AddVehicleSkin("CarLightsSheriff", ZoneName.KSP, "Vehicles/VVE/vehicle_STFR_carnormal_police_ksp_VVE");
	AddVehicleSkin("CarLightsSheriff", ZoneName.Meade, "Vehicles/VVE/vehicle_STFR_carnormal_sheriff_meade_VVE");
	AddVehicleSkin("CarLightsSheriff", ZoneName.Rosewood, "Vehicles/VVE/vehicle_STFR_carnormal_sheriff_rosewood_VVE");
	AddVehicleSkin("CarLightsSheriff", ZoneName.WestPoint, "Vehicles/VVE/vehicle_STFR_carnormal_police_westpoint_blue_VVE");
	AddVehicleSkin("CarLightsSheriff", ZoneName.WestPoint, "Vehicles/VVE/vehicle_STFR_carnormal_police_westpoint_white_VVE");
	AddVehicleSkin("CarLightsSheriff", ZoneName.Muldraugh, "Vehicles/VVE/vehicle_STFR_carnormal_police_muldraugh_VVE");
	AddVehicleSkin("CarLightsSheriff", ZoneName.Riverside, "Vehicles/VVE/vehicle_STFR_carnormal_police_riverside_VVE");
	AddVehicleSkin("CarLightsSheriff", ZoneName.LouisvillePD, "Vehicles/VVE/vehicle_STFR_carnormal_police_louisville_VVE");
	AddVehicleSkin("CarLightsSheriff", ZoneName.JeffersonPD, "Vehicles/VVE/vehicle_STFR_carnormal_police_jefferson_VVE");
	AddVehicleSkin("CarLightsSheriff", ZoneName.JeffersonSD, "Vehicles/VVE/vehicle_STFR_carnormal_sheriff_jefferson_VVE");

	SetPoliceVehicle("CarLightsStatepolice")
	AddVehicleSkin("CarLightsStatepolice", ZoneName.KSP, "Vehicles/VVE/vehicle_STFR_carnormal_police_ksp_VVE");
	AddVehicleSkin("CarLightsStatepolice", ZoneName.Meade, "Vehicles/VVE/vehicle_STFR_carnormal_sheriff_meade_VVE");
	AddVehicleSkin("CarLightsStatepolice", ZoneName.Rosewood, "Vehicles/VVE/vehicle_STFR_carnormal_sheriff_rosewood_VVE");
	AddVehicleSkin("CarLightsStatepolice", ZoneName.WestPoint, "Vehicles/VVE/vehicle_STFR_carnormal_police_westpoint_blue_VVE");
	AddVehicleSkin("CarLightsStatepolice", ZoneName.WestPoint, "Vehicles/VVE/vehicle_STFR_carnormal_police_westpoint_white_VVE");
	AddVehicleSkin("CarLightsStatepolice", ZoneName.Muldraugh, "Vehicles/VVE/vehicle_STFR_carnormal_police_muldraugh_VVE");
	AddVehicleSkin("CarLightsStatepolice", ZoneName.Riverside, "Vehicles/VVE/vehicle_STFR_carnormal_police_riverside_VVE");
	AddVehicleSkin("CarLightsStatepolice", ZoneName.LouisvillePD, "Vehicles/VVE/vehicle_STFR_carnormal_police_louisville_VVE");
	AddVehicleSkin("CarLightsStatepolice", ZoneName.JeffersonPD, "Vehicles/VVE/vehicle_STFR_carnormal_police_jefferson_VVE");
	AddVehicleSkin("CarLightsStatepolice", ZoneName.JeffersonSD, "Vehicles/VVE/vehicle_STFR_carnormal_sheriff_jefferson_VVE");

	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.KSP, "Vehicles/VVE/vehicle_STFR_pickup_police_ksp_VVE");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.Meade, "Vehicles/VVE/vehicle_STFR_pickup_sheriff_meade_VVE");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.Rosewood, "Vehicles/VVE/vehicle_STFR_pickup_sheriff_rosewood_VVE");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.WestPoint, "Vehicles/VVE/vehicle_STFR_pickup_police_westpoint_blue_VVE");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.WestPoint, "Vehicles/VVE/vehicle_STFR_pickup_police_westpoint_white_VVE");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.Muldraugh, "Vehicles/VVE/vehicle_STFR_pickup_police_muldraugh_VVE");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.Riverside, "Vehicles/VVE/vehicle_STFR_pickup_police_riverside_VVE");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.LouisvillePD, "Vehicles/VVE/vehicle_STFR_pickup_police_louisville_VVE");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.JeffersonPD, "Vehicles/VVE/vehicle_STFR_pickup_police_jefferson_VVE");
	AddVehicleSkin("PickUpVanLightsPolice", ZoneName.JeffersonSD, "Vehicles/VVE/vehicle_STFR_pickup_sheriff_jefferson_VVE");

	AddVehicleSkin("VanAmbulance", ZoneName.Meade, "Vehicles/VVE/vehicle_STFR_van_ems_meade_VVE");
	AddVehicleSkin("VanAmbulance", ZoneName.Louisville, "Vehicles/VVE/vehicle_STFR_van_ems_louisville_VVE");
	AddVehicleSkin("VanAmbulance", ZoneName.Jefferson, "Vehicles/VVE/vehicle_STFR_van_ems_jefferson_VVE");

	AddVehicleSkin("PickUpTruckLightsFire", ZoneName.Rosewood, "Vehicles/VVE/vehicle_STFR_pickup_fire_rosewood_VVE");
	AddVehicleSkin("PickUpTruckLightsFire", ZoneName.Meade, "Vehicles/VVE/vehicle_STFR_pickup_fire_meade_VVE");
	AddVehicleSkin("PickUpTruckLightsFire", ZoneName.Louisville, "Vehicles/VVE/vehicle_STFR_pickup_fire_louisville_covered_VVE");

	AddVehicleSkin("PickUpVanLightsFire", ZoneName.Rosewood, "Vehicles/VVE/vehicle_STFR_pickup_fire_rosewood_covered_VVE");
	AddVehicleSkin("PickUpVanLightsFire", ZoneName.Meade, "Vehicles/VVE/vehicle_STFR_pickup_fire_meade_covered_VVE");
	AddVehicleSkin("PickUpVanLightsFire", ZoneName.Louisville, "Vehicles/VVE/vehicle_STFR_pickup_fire_louisville_covered_VVE");

	AddVehicleSkin("CarLights", ZoneName.Default, "Vehicles/VVE/vehicle_STFR_carnormal_ranger_state_park_VVE");
	AddVehicleSkin("CarLights", ZoneName.Default, "Vehicles/VVE/vehicle_STFR_carnormal_ranger_conservation_VVE");
	AddVehicleSkin("CarLights", ZoneName.Default, "Vehicles/VVE/vehicle_STFR_carnormal_ranger_federal_VVE");

	AddVehicleSkin("StepVanMail", ZoneName.Default, "Vehicles/vehicle_STFR_stepvan_extra_usps");

	AddVehicleSkinOverride("VanSpecial", 2, "Vehicles/VVE/vehicle_STFR_van_extra_usps_VVE");

	AddVehicleSkinOverride("Van_meadedoc", 0, "Vehicles/VVE/vehicle_STFR_van_doc_meade_VVE");
	AddVehicleSkinOverride("Van_jeffersondoc", 0, "Vehicles/VVE/vehicle_STFR_van_doc_jefferson_VVE");

end

return vehicleToSkin