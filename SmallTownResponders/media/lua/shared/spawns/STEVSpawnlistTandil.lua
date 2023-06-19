local function STEVTandilSpawns()
	local TandilPD = {};
	local TandilFD = {};
	local TandilEMS = {};
	if getActivatedMods():contains("Tandil") then

		TandilPD[1] = 12; -- vanilla police car
		TandilPD[2] = 12; -- vanilla police truck
		TandilPD[3] = 13; -- 92 vic
		TandilPD[4] = 13; -- 87 caprice
		TandilPD[5] = 14; -- 85 vic
		TandilPD[6] = 14; -- 91 blazer

		TandilFD[1] = 5; -- Tandil

		TandilEMS[1] = 5; -- Tandil

		if getActivatedMods():contains("ProperPoliceSkins") then

			TandilPD[1] = 13; -- vanilla police car
			TandilPD[2] = 13; -- vanilla police truck

		end

		if getActivatedMods():contains("KSPOPack") then

			TandilPD[3] = 12; -- 92 vic
			TandilPD[5] = 13; -- 85 vic

		end

		if getActivatedMods():contains("VVehicleEnhancer") then

			TandilPD[1] = 12; -- vanilla police car
			TandilPD[2] = 13; -- vanilla police truck

		end
	elseif not getActivatedMods():contains("Tandil") then

		TandilPD[1] = 11; -- vanilla police car
		TandilPD[2] = 11; -- vanilla police truck
		TandilPD[3] = 12; -- 92 vic
		TandilPD[4] = 12; -- 87 caprice
		TandilPD[5] = 13; -- 85 vic
		TandilPD[6] = 13; -- 91 blazer

		TandilFD[1] = 4; -- Tandil

		TandilEMS[1] = 4; -- Tandil

		if getActivatedMods():contains("ProperPoliceSkins") then

			TandilPD[1] = 12; -- vanilla police car
			TandilPD[2] = 12; -- vanilla police truck

		end

		if getActivatedMods():contains("KSPOPack") then

			TandilPD[3] = 11; -- 92 vic
			TandilPD[5] = 12; -- 85 vic

		end

		if getActivatedMods():contains("VVehicleEnhancer") then

			TandilPD[1] = 11; -- vanilla police car
			TandilPD[2] = 12; -- vanilla police truck

		end
	end
	if VehicleZoneDistribution then

		-- Tandil Police
		VehicleZoneDistribution.policetandil = {}
		VehicleZoneDistribution.policetandil.vehicles = {}
		VehicleZoneDistribution.policetandil.chanceToSpawnNormal = SandboxVars.STEV.NChance;
		VehicleZoneDistribution.policetandil.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.policetandil.spawnRate = SandboxVars.STEV.SRate;

		-- Tandil FD
		VehicleZoneDistribution.firetandil = {}
		VehicleZoneDistribution.firetandil.vehicles = {}
		VehicleZoneDistribution.firetandil.chanceToSpawnNormal = SandboxVars.STEV.NChance;
		VehicleZoneDistribution.firetandil.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.firetandil.spawnRate = SandboxVars.STEV.SRate;

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

		if SandboxVars.STR.CustomVehicleZones and getActivatedMods():contains("Tandil") then

			if getActivatedMods():contains("FRUsedCars") then

				-- Tandil Police
				VehicleZoneDistribution.policetandil.vehicles["Base.85vicsheriff"] = {index = TandilPD[5], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.policetandil.vehicles["Base.87capricePD"] = {index = TandilPD[4], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.policetandil.vehicles["Base.92crownvicPD"] = {index = TandilPD[3], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.policetandil.vehicles["Base.91blazerpd"] = {index = TandilPD[6], spawnChance = SandboxVars.STEV.TDPD};

				-- Tandil FD/EMS
				VehicleZoneDistribution.firetandil.vehicles["Base.80f350ambulance"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.EMS};
				VehicleZoneDistribution.firetandil.vehicles["Base.86econolineambulance"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.EMS};

				VehicleZoneDistribution.firetandil.vehicles["Base.firepumper"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.firetandil.vehicles["Base.87c10fire"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.TDPD};

			end

			if SandboxVars.STEV.VCars and not getActivatedMods():contains("SCKCO") then

				-- Tandil Police
				VehicleZoneDistribution.policetandil.vehicles["Base.CarLightsPolice"] = {index = TandilPD[1], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.policetandil.vehicles["Base.PickUpVanLightsPolice"] = {index = TandilPD[2], spawnChance = SandboxVars.STEV.TDPD};

				-- Tandil FD/EMS
				VehicleZoneDistribution.firetandil.vehicles["Base.VanAmbulance"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.EMS};

				VehicleZoneDistribution.firetandil.vehicles["Base.PickUpTruckLightsFire"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.firetandil.vehicles["Base.PickUpVanLightsFire"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.TDPD};

			end
		end

		if not SandboxVars.STR.CustomVehicleZones and getActivatedMods():contains("Tandil") then

			if getActivatedMods():contains("FRUsedCars") then

				-- Vanilla Police Zones

				-- Tandil Police
				VehicleZoneDistribution.police.vehicles["Base.85vicsheriff"] = {index = TandilPD[5], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.police.vehicles["Base.87capricePD"] = {index = TandilPD[4], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.police.vehicles["Base.92crownvicPD"] = {index = TandilPD[3], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.police.vehicles["Base.91blazerpd"] = {index = TandilPD[6], spawnChance = SandboxVars.STEV.TDPD};

				-- Tandil FD/EMS
				VehicleZoneDistribution.ambulance.vehicles["Base.80f350ambulance"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.EMS};
				VehicleZoneDistribution.ambulance.vehicles["Base.86econolineambulance"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.EMS};

				VehicleZoneDistribution.fire.vehicles["Base.firepumper"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.fire.vehicles["Base.87c10fire"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.TDPD};

			end

			if SandboxVars.STEV.VCars and not getActivatedMods():contains("SCKCO") then

				-- Tandil Police
				VehicleZoneDistribution.police.vehicles["Base.CarLightsPolice"] = {index = TandilPD[1], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.police.vehicles["Base.PickUpVanLightsPolice"] = {index = TandilPD[2], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.police.spawnRate = SandboxVars.STEV.SRate;

				-- Tandil FD/EMS
				VehicleZoneDistribution.ambulance.vehicles["Base.VanAmbulance"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.EMS};
				VehicleZoneDistribution.ambulance.spawnRate = SandboxVars.STEV.SRate;

				VehicleZoneDistribution.fire.vehicles["Base.PickUpTruckLightsFire"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.fire.vehicles["Base.PickUpVanLightsFire"] = {index = TandilEMS[4], spawnChance = SandboxVars.STEV.TDPD};
				VehicleZoneDistribution.fire.spawnRate = SandboxVars.STEV.SRate;

			end
		end
	end
end

Events.OnInitGlobalModData.Add(STEVTandilSpawns);