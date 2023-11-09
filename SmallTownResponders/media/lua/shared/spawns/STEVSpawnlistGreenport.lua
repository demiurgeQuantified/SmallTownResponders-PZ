local function STEVGreenportSpawns()
	local GreenportPD = {};
	if getActivatedMods():contains("Greenport") then

		GreenportPD[1] = 13; -- vanilla police car
		GreenportPD[2] = 13; -- vanilla police truck
		GreenportPD[3] = 14; -- 92 vic
		GreenportPD[4] = 14; -- 87 caprice
		GreenportPD[5] = 15; -- 85 vic
		GreenportPD[6] = 15; -- 91 blazer

		if getActivatedMods():contains("ProperPoliceSkins") then

			GreenportPD[1] = 14; -- vanilla police car
			GreenportPD[2] = 14; -- vanilla police truck

		end

		if getActivatedMods():contains("KSPOPack") then

			GreenportPD[3] = 13; -- 92 vic
			GreenportPD[5] = 14; -- 85 vic

		end

		if getActivatedMods():contains("VVehicleEnhancer") then

			GreenportPD[1] = 13; -- vanilla police car
			GreenportPD[2] = 14; -- vanilla police truck

		end
	elseif not getActivatedMods():contains("Greenport") then

		GreenportPD[1] = 11; -- vanilla police car
		GreenportPD[2] = 11; -- vanilla police truck
		GreenportPD[3] = 12; -- 92 vic
		GreenportPD[4] = 12; -- 87 caprice
		GreenportPD[5] = 13; -- 85 vic
		GreenportPD[6] = 13; -- 91 blazer

		if getActivatedMods():contains("ProperPoliceSkins") then

			GreenportPD[1] = 12; -- vanilla police car
			GreenportPD[2] = 12; -- vanilla police truck

		end

		if getActivatedMods():contains("KSPOPack") then

			GreenportPD[3] = 11; -- 92 vic
			GreenportPD[5] = 12; -- 85 vic

		end

		if getActivatedMods():contains("VVehicleEnhancer") then

			GreenportPD[1] = 11; -- vanilla police car
			GreenportPD[2] = 12; -- vanilla police truck

		end
	end
	if VehicleZoneDistribution then

		-- Greenport Police
		VehicleZoneDistribution.policegreenport = {}
		VehicleZoneDistribution.policegreenport.vehicles = {}
		VehicleZoneDistribution.policegreenport.chanceToSpawnNormal = SandboxVars.STEV.NChance;
		VehicleZoneDistribution.policegreenport.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.policegreenport.spawnRate = SandboxVars.STEV.SRate;

		if SandboxVars.STR.STEVOnly then

			-- police
			VehicleZoneDistribution.police.vehicles["Base.PickUpVanLightsPolice"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.CarLightsPolice"] = nil;

			VehicleZoneDistribution.police.vehicles["Base.85vicsheriff"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.87capricePD"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.91blazerpd"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.92crownvicPD"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.chevystepvanswat"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.hmmwvpolice"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.hmmwvblackopps"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.blazerblackops"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.m35a2blackopps"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.m151blackopps"] = nil;

			-- ranger
			VehicleZoneDistribution.ranger.vehicles["Base.CarLights"] = nil;
			VehicleZoneDistribution.ranger.vehicles["Base.PickUpVanLights"] = nil;
			VehicleZoneDistribution.ranger.vehicles["Base.PickUpTruckLights"] = nil;

			VehicleZoneDistribution.ranger.vehicles["Base.85vicranger"] = nil;
			VehicleZoneDistribution.ranger.vehicles["Base.92wranglerranger"] = nil;

			-- ambulance
			VehicleZoneDistribution.ambulance.vehicles["Base.VanAmbulance"] = nil;

			VehicleZoneDistribution.ambulance.vehicles["Base.80f350ambulance"] = nil;
			VehicleZoneDistribution.ambulance.vehicles["Base.86econolineambulance"] = nil;

			-- fire
			VehicleZoneDistribution.fire.vehicles["Base.PickUpVanLightsFire"] = nil;
			VehicleZoneDistribution.fire.vehicles["Base.PickUpTruckLightsFire"] = nil;

			VehicleZoneDistribution.fire.vehicles["Base.87c10fire"] = nil;
			VehicleZoneDistribution.fire.vehicles["Base.firepumper"] = nil;

		end

		if SandboxVars.STR.CustomVehicleZones and getActivatedMods():contains("Greenport") then

			if getActivatedMods():contains("FRUsedCars") then

				-- Greenport Police
				VehicleZoneDistribution.policegreenport.vehicles["Base.85vicsheriff"] = {index = GreenportPD[5], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.policegreenport.vehicles["Base.87capricePD"] = {index = GreenportPD[4], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.policegreenport.vehicles["Base.92crownvicPD"] = {index = GreenportPD[3], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.policegreenport.vehicles["Base.91blazerpd"] = {index = GreenportPD[6], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.policegreenport.vehicles["Base.86econoline_greenport"] = {index = -1, spawnChance = SandboxVars.STEV.GPPD};

			end

			if SandboxVars.STEV.VCars and not getActivatedMods():contains("SCKCO") then

				-- Greenport Police
				VehicleZoneDistribution.policegreenport.vehicles["Base.CarLightsPolice"] = {index = GreenportPD[1], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.policegreenport.vehicles["Base.PickUpVanLightsPolice"] = {index = GreenportPD[2], spawnChance = SandboxVars.STEV.GPPD};

			end
		end

		if not SandboxVars.STR.CustomVehicleZones and getActivatedMods():contains("Greenport") then

			if getActivatedMods():contains("FRUsedCars") then

				-- Vanilla Police Zones

				-- Greenport Police
				VehicleZoneDistribution.police.vehicles["Base.85vicsheriff"] = {index = GreenportPD[5], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.police.vehicles["Base.87capricePD"] = {index = GreenportPD[4], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.police.vehicles["Base.92crownvicPD"] = {index = GreenportPD[3], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.police.vehicles["Base.91blazerpd"] = {index = GreenportPD[6], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.police.vehicles["Base.86econoline_greenport"] = {index = -1, spawnChance = SandboxVars.STEV.GPPD};

			end

			if SandboxVars.STEV.VCars and not getActivatedMods():contains("SCKCO") then

				-- Greenport Police
				VehicleZoneDistribution.police.vehicles["Base.CarLightsPolice"] = {index = GreenportPD[1], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.police.vehicles["Base.PickUpVanLightsPolice"] = {index = GreenportPD[2], spawnChance = SandboxVars.STEV.GPPD};
				VehicleZoneDistribution.police.spawnRate = SandboxVars.STEV.SRate;

			end
		end
	end
end

Events.OnInitGlobalModData.Add(STEVGreenportSpawns);