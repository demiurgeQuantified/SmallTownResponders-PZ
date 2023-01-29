---Like DoParam but for vehicles
---@param vehicle string Name of the vehicle script
---@param param string The parameter(s) to apply to this script
---@param module string Optional: the module of the vehicle
---@see Item#DoParam
---@see VehicleScript#Load
local DoVehicleParam = function(vehicle, param, module)
	module = module or "Base"
	local vehicleScript = ScriptManager.instance:getVehicle(module .. "." .. vehicle)
	if not vehicleScript then return end
	vehicleScript:Load(vehicle, "{" .. param .. "}")
end

---Utility to add new skins to vehicles
---@param vehicle string Name of the vehicle script
---@param texture string The new skin's texture
---@see DoVehicleParam
local AddVehicleSkin = function(vehicle, texture)
	DoVehicleParam(vehicle, "skin { texture = " .. texture .. ",}")
end

---Utility to change the siren sound of a vehicle
---@param vehicle string Name of the vehicle script
---@param sound string Name of a sound
---@see DoVehicleParam
local SetSirenSound = function(vehicle, sound)
	DoVehicleParam(vehicle, "lightbar { soundSiren = " .. sound .. ",}")
end

---Utility to change the horn sound of a vehicle
---@param vehicle string Name of the vehicle script
---@param sound string Name of a sound
---@see DoVehicleParam
---@see SetSirenSound
local SetHornSound = function(vehicle, sound)
	DoVehicleParam(vehicle, "sound { horn = " .. sound .. ",}")
end

if not isClient() then
	local vehicleToSkin = require "overrides/vehicledefinitions"
	for script,skins in pairs(vehicleToSkin) do
		local first
		for _,v in pairs(skins) do -- no next() in pz??
			if type(v) == "number" then
				first = v
				break
			elseif type(v) == "table" then
				first = v[1]
			end
		end

		local vehicle = ScriptManager.instance:getVehicle(script)
		if vehicle then
			skins.offset = vehicle:getSkinCount() - first
		else
			skins.offset = 0
		end
	end
end

if getActivatedMods():contains("Time_Accurate_Sirens") then

	SetSirenSound("CarLightsPolice","MovieSiren");
	SetSirenSound("PickUpVanLightsPolice","MovieSiren");

end

if getActivatedMods():contains("VVehicleEnhancer") and getActivatedMods():contains("Time_Accurate_Sirens") then

	SetSirenSound("CarLightsSheriff","MovieSiren");
	SetSirenSound("CarLightsStatepolice","MovieSiren");

end

if getActivatedMods():contains("SirenVariety") then

	SetHornSound("85vicsheriff","BullHorn");
	SetHornSound("92crownvicPD","BullHorn");
	SetHornSound("91blazerpd","BullHorn");
	SetHornSound("87capricePD","BullHorn");
	SetHornSound("80f350ambulance","BullHorn");
	SetHornSound("86econolineambulance","BullHorn");
	SetHornSound("firepumper","BullHorn");
	SetHornSound("87c10fire","BullHorn");

	SetSirenSound("80f350ambulance","EmsSiren");
	SetSirenSound("86econolineambulance","EmsSiren");
	SetSirenSound("firepumper","FireSiren");
	SetSirenSound("87c10fire","FireSiren");

end

if getActivatedMods():contains("VVehicleEnhancer") and getActivatedMods():contains("SirenVariety") then

end

if not getActivatedMods():contains("VVehicleEnhancer") then
	AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_kentuckystate")
	AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_meadesheriff")
	AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_rosewoodpolice")
	AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_westpointpolice")
	AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_muldraughpolice")
	AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_riversidepolice")
	AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_louisvillepolice")
	AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_jeffersonpolice")
	AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_jeffersonsheriff")

	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_ksp");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_meadesheriff");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_rosewoodsheriff");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_westpointpolice");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_muldraughpolice");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_riversidepolice");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_louisvillepolice");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_jeffersonpolice");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_jeffersonsheriff");

	AddVehicleSkin("VanAmbulance","Vehicles/vehicle_van_meadecountyambulance");
	AddVehicleSkin("VanAmbulance","Vehicles/vehicle_van_louisvilleambulance");
	AddVehicleSkin("VanAmbulance","Vehicles/vehicle_van_jeffersoncountyambulance");

	AddVehicleSkin("PickUpTruckLightsFire","Vehicles/vehicle_pickupfireshell_rosewood");
	AddVehicleSkin("PickUpTruckLightsFire","Vehicles/vehicle_pickupfireshell_meade");
	AddVehicleSkin("PickUpTruckLightsFire","Vehicles/vehicle_pickupfireshell_louisville");

	AddVehicleSkin("PickUpVanLightsFire","Vehicles/vehicle_pickupfireshell_rosewood");
	AddVehicleSkin("PickUpVanLightsFire","Vehicles/vehicle_pickuptruckfireshell_meade");
	AddVehicleSkin("PickUpVanLightsFire","Vehicles/vehicle_pickupfireshell_louisville");

	AddVehicleSkin("PickUpTruckLights","Vehicles/vehicle_pickup_stateparkranger");
	AddVehicleSkin("PickUpTruckLights","Vehicles/vehicle_pickup_fishandwildlife");
	AddVehicleSkin("PickUpTruckLights","Vehicles/vehicle_pickup_nationalparkservice");

	AddVehicleSkin("PickUpVanLights","Vehicles/vehicle_pickup_stateparkranger");
	AddVehicleSkin("PickUpVanLights","Vehicles/vehicle_pickup_fishandwildlife");
	AddVehicleSkin("PickUpVanLights","Vehicles/vehicle_pickup_nationalparkservice");

	AddVehicleSkin("CarLights","Vehicles/vehicle_carnormal_stateparkranger");
	AddVehicleSkin("CarLights","Vehicles/vehicle_carnormal_fishandwildlife");
	AddVehicleSkin("CarLights","Vehicles/vehicle_carnormal_nationalparkservice");

	AddVehicleSkin("StepVanMail","Vehicles/vehicle_stepvan_uspsmailshell");

	AddVehicleSkin("VanSpecial","Vehicles/vehicle_van_uspsmailvan");

	if getActivatedMods():contains("RavenCreek") then

		AddVehicleSkin("CarLightsPolice","Vehicles/vehicle_ravencreekpolice");
		AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vehicle_pickup_ravencreekpolice");

		AddVehicleSkin("VanAmbulance","Vehicles/vehicle_van_ravencreekambulance");

		AddVehicleSkin("PickUpTruckLightsFire","Vehicles/vehicle_pickupfireshell_ravencreek");

		AddVehicleSkin("PickUpVanLightsFire","Vehicles/vehicle_pickuptruckfireshell_ravencreek");

	end
end

if getActivatedMods():contains("FRUsedCars") then

	AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_kentuckystatepoliceshell");
	AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_meadesheriffshell");
	AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_rosewoodpoliceshell");
	AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_westpointpoliceshell");
	AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_muldraughpoliceshell");
	AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_riversidepoliceshell");
	AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_lousvillepoliceshell");
	AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_jeffersonpoliceshell");
	AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_jeffersonsheriffshell");

	AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_kentuckystatepoliceshell");
	AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_meadesheriffshell");
	AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_rosewoodpoliceshell");
	AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_westpoliceshell");
	AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_muldraughpoliceshell");
	AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_riversidepoliceshell");
	AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_louisvillepoliceshell");
	AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_jeffersonpoliceshell");
	AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_jeffersoncountysheriffshell");

	AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_kspshell");
	AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_meadesheriffshell");
	AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_rosewoodpoliceshell");
	AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_westpointpoliceshell");
	AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_muldraughpoliceshell");
	AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_riversidepoliceshell");
	AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_louisvillepoliceshell");
	AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_jeffersoncountypoliceshell");
	AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_jeffersoncountysheriffshell");

	AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_kspshell");
	AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_meadesheriffshell");
	AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_rosewoodpoliceshell");
	AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_westpointpoliceshell");
	AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_muldraughpoliceshell");
	AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_riversidepoliceshell");
	AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_louisvillepoliceshell");
	AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_jeffersonpoliceshell");
	AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_jeffersonsheriffshell");

	AddVehicleSkin("80f350ambulance","Vehicles/vehicle_80f350_meadecountymbulanceshell");
	AddVehicleSkin("80f350ambulance","Vehicles/vehicle_80f350_louisvilleambulanceshell");
	AddVehicleSkin("80f350ambulance","Vehicles/vehicle_80f350_jeffersoncountyambulanceshell");

	AddVehicleSkin("86econolineambulance","Vehicles/vehicle_86econoline_meadecountyambulanceshell");
	AddVehicleSkin("86econolineambulance","Vehicles/vehicle_86econoline_louisvilleambulanceshell");
	AddVehicleSkin("86econolineambulance","Vehicles/vehicle_86econoline_jeffersoncountyambulanceshell");

	AddVehicleSkin("firepumper","Vehicles/vehicle_firepumper_rosewood");
	AddVehicleSkin("firepumper","Vehicles/vehicle_firepumper_meade");
	AddVehicleSkin("firepumper","Vehicles/vehicle_firepumper_louisville");

	AddVehicleSkin("87c10fire","Vehicles/vehicle_c10_utility_rosewood_fireshell");
	AddVehicleSkin("87c10fire","Vehicles/vehicle_c10_utility_meade_fireshell");
	AddVehicleSkin("87c10fire","Vehicles/vehicle_c10_utility_louisville_fireshell");

	AddVehicleSkin("92wranglerranger","Vehicles/vehicle_92wrangler_stateparkrangershell");
	AddVehicleSkin("92wranglerranger","Vehicles/vehicle_92wrangler_fishandwidlifeshell");
	AddVehicleSkin("92wranglerranger","Vehicles/vehicle_92wrangler_nationalparkserviceshell");

	AddVehicleSkin("85vicranger","Vehicles/vehicle_85crownvic_nationalparkserviceshell");
	AddVehicleSkin("85vicranger","Vehicles/vehicle_85crownvic_fishandwildlifeshell");
	AddVehicleSkin("85vicranger","Vehicles/vehicle_85crownvic_stateparkrangershell");

	if getActivatedMods():contains("RavenCreek") then

		AddVehicleSkin("85vicsheriff","Vehicles/vehicle_85crownvic_ravencreekpoliceshell");
		AddVehicleSkin("92crownvicPD","Vehicles/vehicle_92crownvic_ravencreekpoliceshell");
		AddVehicleSkin("91blazerpd","Vehicles/vehicle_blazer_ravencreekpoliceshell");
		AddVehicleSkin("87capricePD","Vehicles/vehicle_87caprice_ravencreekpoliceshell");
		AddVehicleSkin("87c10fire","Vehicles/vehicle_c10_utility_ravencreek_fireshell");
		AddVehicleSkin("firepumper","Vehicles/vehicle_firepumper_ravencreek");
		AddVehicleSkin("86econolineambulance","Vehicles/vehicle_86econoline_ravencreekambulanceshell");
		AddVehicleSkin("80f350ambulance","Vehicles/vehicle_80f350_ravencreekmbulanceshell");

	end
end

if getActivatedMods():contains("VVehicleEnhancer") then

	AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_kentuckystate_vve");
	AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_meadesheriff_vve");
	AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_rosewoodpolice_vve");
	AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_westpointpolice_vve");
	AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_muldraughpolice_vve");
	AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_riversidepolice_vve");
	AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_louisvillepolice_vve");
	AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_jeffersonpolice_vve");
	AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_jeffersonsheriff_vve");

	AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_kentuckystate_vve");
	AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_meadesheriff_vve");
	AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_rosewoodpolice_vve");
	AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_westpointpolice_vve");
	AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_muldraughpolice_vve");
	AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_riversidepolice_vve");
	AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_louisvillepolice_vve");
	AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_jeffersonpolice_vve");
	AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_jeffersonsheriff_vve");

	AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_kentuckystate_vve");
	AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_meadesheriff_vve");
	AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_rosewoodpolice_vve");
	AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_westpointpolice_vve");
	AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_muldraughpolice_vve");
	AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_riversidepolice_vve");
	AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_louisvillepolice_vve");
	AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_jeffersonpolice_vve");
	AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_jeffersonsheriff_vve");

	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vve/vehicle_pickup_ksp_vve");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vve/vehicle_pickup_meadesheriff_vve");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vve/vehicle_pickup_rosewoodsheriff_vve");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vve/vehicle_pickup_westpointpolice_vve");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vve/vehicle_pickup_muldraughpolice_vve");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vve/vehicle_pickup_riversidepolice_vve");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vve/vehicle_pickup_louisvillepolice_vve");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vve/vehicle_pickup_jeffersonpolice_vve");
	AddVehicleSkin("PickUpVanLightsPolice","Vehicles/vve/vehicle_pickup_jeffersonsheriff_vve");

	AddVehicleSkin("VanAmbulance","Vehicles/vve/vehicle_van_meadecountyambulance_vve");
	AddVehicleSkin("VanAmbulance","Vehicles/vve/vehicle_van_louisvilleambulance_vve");
	AddVehicleSkin("VanAmbulance","Vehicles/vve/vehicle_van_jeffersoncountyambulance_vve");

	AddVehicleSkin("PickUpTruckLightsFire","Vehicles/vve/vehicle_pickupfireshell_rosewood_vve");
	AddVehicleSkin("PickUpTruckLightsFire","Vehicles/vve/vehicle_pickupfireshell_meade_vve");
	AddVehicleSkin("PickUpTruckLightsFire","Vehicles/vve/vehicle_pickupfireshell_louisville_vve");

	AddVehicleSkin("PickUpVanLightsFire","Vehicles/vve/vehicle_pickupfireshell_rosewood_vve");
	AddVehicleSkin("PickUpVanLightsFire","Vehicles/vve/vehicle_pickupfireshell_meade_vve");
	AddVehicleSkin("PickUpVanLightsFire","Vehicles/vve/vehicle_pickupfireshell_louisville_vve");

	AddVehicleSkin("CarLights","Vehicles/vve/vehicle_carnormal_stateparkranger_vve");
	AddVehicleSkin("CarLights","Vehicles/vve/vehicle_carnormal_fishandwildlife_vve");
	AddVehicleSkin("CarLights","Vehicles/vve/vehicle_carnormal_nationalparkservice_vve");

	--TweakVehicle("Base.StepVanMail","skin1", "Vehicles/vve/vehicle_stepvan_uspsmailshell_vve");
	AddVehicleSkin("StepVanMail","Vehicles/vehicle_stepvan_uspsmailshell");

	AddVehicleSkin("VanSpecial","Vehicles/vve/vehicle_van_uspsmailvan_vve");

	if getActivatedMods():contains("RavenCreek") then

		AddVehicleSkin("CarLightsPolice","Vehicles/vve/vehicle_ravencreekpolice_vve");
		AddVehicleSkin("CarLightsSheriff","Vehicles/vve/vehicle_ravencreekpolice_vve");
		AddVehicleSkin("CarLightsStatepolice","Vehicles/vve/vehicle_ravencreekpolice_vve");
		--TweakVehicle("Base.PickUpVanLightsPolice","skin10", "Vehicles/vehicle_pickup_ravencreekpolice");

		--TweakVehicle("Base.VanAmbulance","skin4", "Vehicles/vehicle_van_ravencreekambulance");

		--TweakVehicle("Base.PickUpTruckLightsFire","skin4", "Vehicles/vehicle_pickupfireshell_ravencreek");

		--TweakVehicle("Base.PickUpVanLightsFire","skin4", "Vehicles/vehicle_pickuptruckfireshell_ravencreek");

	end
end