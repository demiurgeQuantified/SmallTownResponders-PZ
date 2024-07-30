if isClient() then return end
local SkinTable = require 'spawns/STFR_SpawnTables'

local function STFRSpawns()
	if VehicleZoneDistribution then
		-- Vanilla Police
		VehicleZoneDistribution.police = VehicleZoneDistribution.police or {}
		VehicleZoneDistribution.police.vehicles = VehicleZoneDistribution.police.vehicles or {}
		VehicleZoneDistribution.police.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.police.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.police.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Vanilla Fire Departments
		VehicleZoneDistribution.fire = VehicleZoneDistribution.fire or {}
		VehicleZoneDistribution.fire.vehicles = VehicleZoneDistribution.fire.vehicles or {}
		VehicleZoneDistribution.fire.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.fire.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.fire.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Meade County Sheriff
		VehicleZoneDistribution.sheriffmeade = {}
		VehicleZoneDistribution.sheriffmeade.vehicles = {}
		VehicleZoneDistribution.sheriffmeade.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.sheriffmeade.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.sheriffmeade.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Riverside Police
		VehicleZoneDistribution.policeriverside = {}
		VehicleZoneDistribution.policeriverside.vehicles = {}
		VehicleZoneDistribution.policeriverside.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.policeriverside.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.policeriverside.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Rosewood Police
		VehicleZoneDistribution.sheriffrosewood = {}
		VehicleZoneDistribution.sheriffrosewood.vehicles = {}
		VehicleZoneDistribution.sheriffrosewood.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.sheriffrosewood.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.sheriffrosewood.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- WestPoint Police
		VehicleZoneDistribution.policewestpointblue = {}
		VehicleZoneDistribution.policewestpointblue.vehicles = {}
		VehicleZoneDistribution.policewestpointblue.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.policewestpointblue.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.policewestpointblue.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- WestPoint Police
		VehicleZoneDistribution.policewestpointwhite = {}
		VehicleZoneDistribution.policewestpointwhite.vehicles = {}
		VehicleZoneDistribution.policewestpointwhite.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.policewestpointwhite.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.policewestpointwhite.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Muldraugh Police
		VehicleZoneDistribution.policemuldraugh = {}
		VehicleZoneDistribution.policemuldraugh.vehicles = {}
		VehicleZoneDistribution.policemuldraugh.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.policemuldraugh.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.policemuldraugh.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Jefferson County Sheriff
		VehicleZoneDistribution.sheriffjefferson = {}
		VehicleZoneDistribution.sheriffjefferson.vehicles = {}
		VehicleZoneDistribution.sheriffjefferson.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.sheriffjefferson.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.sheriffjefferson.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Jefferson County Police
		VehicleZoneDistribution.policejefferson = {}
		VehicleZoneDistribution.policejefferson.vehicles = {}
		VehicleZoneDistribution.policejefferson.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.policejefferson.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.policejefferson.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Kentucky State Police
		VehicleZoneDistribution.policeksp = {}
		VehicleZoneDistribution.policeksp.vehicles = {}
		VehicleZoneDistribution.policeksp.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.policeksp.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.policeksp.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Louisville Police
		VehicleZoneDistribution.policelouisville = {}
		VehicleZoneDistribution.policelouisville.vehicles = {}
		VehicleZoneDistribution.policelouisville.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.policelouisville.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.policelouisville.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Rosewood DOC
		VehicleZoneDistribution.docmeade = {}
		VehicleZoneDistribution.docmeade.vehicles = {}
		VehicleZoneDistribution.docmeade.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.docmeade.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.docmeade.spawnRate = SandboxVars.STFR.SpawnRateVehicles * 4;

		-- Jefferson County DOC
		VehicleZoneDistribution.docjefferson = {}
		VehicleZoneDistribution.docjefferson.vehicles = {}
		VehicleZoneDistribution.docjefferson.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.docjefferson.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.docjefferson.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Park Rangers
		VehicleZoneDistribution.rangermeadestatepark = {}
		VehicleZoneDistribution.rangermeadestatepark.vehicles = {}
		VehicleZoneDistribution.rangermeadestatepark.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.rangermeadestatepark.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.rangermeadestatepark.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Park Rangers
		VehicleZoneDistribution.rangermeadeconservation = {}
		VehicleZoneDistribution.rangermeadeconservation.vehicles = {}
		VehicleZoneDistribution.rangermeadeconservation.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.rangermeadeconservation.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.rangermeadeconservation.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Park Rangers
		VehicleZoneDistribution.rangermeadefederal = {}
		VehicleZoneDistribution.rangermeadefederal.vehicles = {}
		VehicleZoneDistribution.rangermeadefederal.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.rangermeadefederal.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.rangermeadefederal.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Rosewood Fire Departments
		VehicleZoneDistribution.firerosewood = {}
		VehicleZoneDistribution.firerosewood.vehicles = {}
		VehicleZoneDistribution.firerosewood.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.firerosewood.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.firerosewood.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Louisville Fire Departments
		VehicleZoneDistribution.firelouisville = {}
		VehicleZoneDistribution.firelouisville.vehicles = {}
		VehicleZoneDistribution.firelouisville.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.firelouisville.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.firelouisville.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Louisville USPS HQ
		VehicleZoneDistribution.usps = {}
		VehicleZoneDistribution.usps.vehicles = {}
		VehicleZoneDistribution.usps.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.usps.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.usps.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		-- Bank Trucks
		VehicleZoneDistribution.banksecurity = {}
		VehicleZoneDistribution.banksecurity.vehicles = {}
		VehicleZoneDistribution.banksecurity.chanceToSpawnNormal = SandboxVars.STFR.CivilianChanceVehicles;
		VehicleZoneDistribution.banksecurity.chanceToSpawnSpecial = 0;
		VehicleZoneDistribution.banksecurity.spawnRate = SandboxVars.STFR.SpawnRateVehicles;

		if SandboxVars.STFR.ModVehiclesOnly == true then
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
			--VehicleZoneDistribution.ambulance.vehicles["Base.VanAmbulance"] = nil;

			--VehicleZoneDistribution.ambulance.vehicles["Base.80f350ambulance"] = nil;
			--VehicleZoneDistribution.ambulance.vehicles["Base.86econolineambulance"] = nil;

			-- fire
			VehicleZoneDistribution.fire.vehicles["Base.PickUpVanLightsFire"] = nil;
			VehicleZoneDistribution.fire.vehicles["Base.PickUpTruckLightsFire"] = nil;

			VehicleZoneDistribution.fire.vehicles["Base.87c10fire"] = nil;
			VehicleZoneDistribution.fire.vehicles["Base.firepumper"] = nil;
		end
		if getActivatedMods():contains("FRUsedCars") then
			-- Meade County Sheriff
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_MCSO[5], spawnChance = SandboxVars.STFR.SheriffMeadeVehicles};
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_MCSO[4], spawnChance = SandboxVars.STFR.SheriffMeadeVehicles};
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_MCSO[6], spawnChance = SandboxVars.STFR.SheriffMeadeVehicles};
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_MCSO[3], spawnChance = SandboxVars.STFR.SheriffMeadeVehicles};
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_MCSO[7], spawnChance = SandboxVars.STFR.SheriffMeadeVehicles};
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_MCSO[8], spawnChance = SandboxVars.STFR.SheriffMeadeVehicles};

			-- Riverside Police
			VehicleZoneDistribution.policeriverside.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_RSPD[5], spawnChance = SandboxVars.STFR.PoliceRiversideVehicles};
			VehicleZoneDistribution.policeriverside.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_RSPD[4], spawnChance = SandboxVars.STFR.PoliceRiversideVehicles};
			VehicleZoneDistribution.policeriverside.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_RSPD[6], spawnChance = SandboxVars.STFR.PoliceRiversideVehicles};
			VehicleZoneDistribution.policeriverside.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_RSPD[3], spawnChance = SandboxVars.STFR.PoliceRiversideVehicles};
			VehicleZoneDistribution.policeriverside.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_RSPD[7], spawnChance = SandboxVars.STFR.PoliceRiversideVehicles};
			VehicleZoneDistribution.policeriverside.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_RSPD[8], spawnChance = SandboxVars.STFR.PoliceRiversideVehicles};

			-- Rosewood Police
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_MCSO[5], spawnChance = SandboxVars.STFR.SheriffRosewoodVehicles};
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_RWSD[4], spawnChance = SandboxVars.STFR.SheriffRosewoodVehicles};
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_RWSD[6], spawnChance = SandboxVars.STFR.SheriffRosewoodVehicles};
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_RWSD[3], spawnChance = SandboxVars.STFR.SheriffRosewoodVehicles};
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_RWSD[7], spawnChance = SandboxVars.STFR.SheriffRosewoodVehicles};
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_RWSD[8], spawnChance = SandboxVars.STFR.SheriffRosewoodVehicles};

			-- WestPoint Police
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_WPPD[5], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointwhite.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_WPPD[11], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_WPPD[4], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointwhite.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_WPPD[10], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_WPPD[6], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointwhite.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_WPPD[12], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_WPPD[3], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointwhite.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_WPPD[9], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_WPPD[7], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_WPPD[8], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
--			VehicleZoneDistribution.policewestpointwhite.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_WPPD[13], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
--			VehicleZoneDistribution.policewestpointwhite.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_WPPD[14], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};

			-- Muldraugh Police
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_MDPD[5], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_MDPD[4], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_MDPD[6], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_MDPD[3], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_MCSO[7], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_MCSO[8], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};

			-- Jefferson County Sheriff
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_JCSD[5], spawnChance = SandboxVars.STFR.SheriffJeffersonVehicles};
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_JCSD[4], spawnChance = SandboxVars.STFR.SheriffJeffersonVehicles};
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_JCSD[6], spawnChance = SandboxVars.STFR.SheriffJeffersonVehicles};
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_JCSD[3], spawnChance = SandboxVars.STFR.SheriffJeffersonVehicles};
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_JCSD[7], spawnChance = SandboxVars.STFR.SheriffJeffersonVehicles};
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_JCSD[8], spawnChance = SandboxVars.STFR.SheriffJeffersonVehicles};

			-- Jefferson County Police
			VehicleZoneDistribution.policejefferson.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_JCPD[5], spawnChance = SandboxVars.STFR.PoliceJeffersonVehicles};
			VehicleZoneDistribution.policejefferson.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_JCPD[4], spawnChance = SandboxVars.STFR.PoliceJeffersonVehicles};
			VehicleZoneDistribution.policejefferson.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_JCPD[6], spawnChance = SandboxVars.STFR.PoliceJeffersonVehicles};
			VehicleZoneDistribution.policejefferson.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_JCPD[3], spawnChance = SandboxVars.STFR.PoliceJeffersonVehicles};
			VehicleZoneDistribution.policejefferson.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_JCPD[7], spawnChance = SandboxVars.STFR.PoliceJeffersonVehicles};
			VehicleZoneDistribution.policejefferson.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_JCPD[8], spawnChance = SandboxVars.STFR.PoliceJeffersonVehicles};

			-- Kentucky State Police
			VehicleZoneDistribution.policeksp.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_KSP[5], spawnChance = SandboxVars.STFR.policekspVehicles};
			VehicleZoneDistribution.policeksp.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_KSP[4], spawnChance = SandboxVars.STFR.policekspVehicles};
			VehicleZoneDistribution.policeksp.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_KSP[6], spawnChance = SandboxVars.STFR.policekspVehicles};
			VehicleZoneDistribution.policeksp.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_KSP[3], spawnChance = SandboxVars.STFR.policekspVehicles};
			VehicleZoneDistribution.policeksp.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_KSP[7], spawnChance = SandboxVars.STFR.policekspVehicles};
			VehicleZoneDistribution.policeksp.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_KSP[8], spawnChance = SandboxVars.STFR.policekspVehicles};

			-- Louisville Police
			VehicleZoneDistribution.policelouisville.vehicles["Base.85vicsheriff"] = {index = SkinTable.STFR_LVPD[5], spawnChance = SandboxVars.STFR.PoliceLouisvilleVehicles};
			VehicleZoneDistribution.policelouisville.vehicles["Base.87capricePD"] = {index = SkinTable.STFR_LVPD[4], spawnChance = SandboxVars.STFR.PoliceLouisvilleVehicles};
			VehicleZoneDistribution.policelouisville.vehicles["Base.91blazerpd"] = {index = SkinTable.STFR_LVPD[6], spawnChance = SandboxVars.STFR.PoliceLouisvilleVehicles};
			VehicleZoneDistribution.policelouisville.vehicles["Base.92crownvicPD"] = {index = SkinTable.STFR_LVPD[3], spawnChance = SandboxVars.STFR.PoliceLouisvilleVehicles};
			VehicleZoneDistribution.policelouisville.vehicles["Base.chevystepvanswat"] = {index = SkinTable.STFR_LVPD[7], spawnChance = SandboxVars.STFR.PoliceLouisvilleVehicles};
			VehicleZoneDistribution.policelouisville.vehicles["Base.86econolineambulance_swat"] = {index = SkinTable.STFR_LVPD[8], spawnChance = SandboxVars.STFR.PoliceLouisvilleVehicles};

			-- Park Rangers
			VehicleZoneDistribution.rangermeadestatepark.vehicles["Base.85vicranger"] = {index = SkinTable.STFR_RGR[5], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadeconservation.vehicles["Base.85vicranger"] = {index = SkinTable.STFR_RGR[10], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadefederal.vehicles["Base.85vicranger"] = {index = SkinTable.STFR_RGR[15], spawnChance = SandboxVars.STFR.RangerVehicles};

			VehicleZoneDistribution.rangermeadestatepark.vehicles["Base.91blazerranger"] = {index = 0, spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadeconservation.vehicles["Base.91blazerranger"] = {index = 1, spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadefederal.vehicles["Base.91blazerranger"] = {index = 2, spawnChance = SandboxVars.STFR.RangerVehicles};

			VehicleZoneDistribution.rangermeadestatepark.vehicles["Base.92wranglerranger"] = {index = SkinTable.STFR_RGR[4], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadeconservation.vehicles["Base.92wranglerranger"] = {index = SkinTable.STFR_RGR[9], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadefederal.vehicles["Base.92wranglerranger"] = {index = SkinTable.STFR_RGR[14], spawnChance = SandboxVars.STFR.RangerVehicles};

			-- Rosewood DOC
			VehicleZoneDistribution.docmeade.vehicles["Base.86econoline_doc"] = {index = SkinTable.STFR_DOC[5], spawnChance = SandboxVars.STFR.DOCMeadeVehicles};
			VehicleZoneDistribution.docmeade.vehicles["Base.prisonbus"] = {index = SkinTable.STFR_DOC[3], spawnChance = SandboxVars.STFR.DOCMeadeVehicles};

			-- Jefferson County DOC
			VehicleZoneDistribution.docjefferson.vehicles["Base.86econoline_doc"] = {index = SkinTable.STFR_DOC[6], spawnChance = SandboxVars.STFR.DOCJeffersonVehicles};
			VehicleZoneDistribution.docjefferson.vehicles["Base.prisonbus"] = {index = SkinTable.STFR_DOC[4], spawnChance = SandboxVars.STFR.DOCJeffersonVehicles};

			-- Rosewood Fire Departments
			VehicleZoneDistribution.firerosewood.vehicles["Base.firepumper"] = {index = SkinTable.STFR_FD[7], spawnChance = SandboxVars.STFR.FireRosewoodVehicles};
			VehicleZoneDistribution.firerosewood.vehicles["Base.87c10fire"] = {index = SkinTable.STFR_FD[10], spawnChance = SandboxVars.STFR.FireRosewoodVehicles};

			-- Louisville Fire Departments
			VehicleZoneDistribution.firelouisville.vehicles["Base.firepumper"] = {index = SkinTable.STFR_FD[9], spawnChance = SandboxVars.STFR.FireLouisvilleVehicles};
			VehicleZoneDistribution.firelouisville.vehicles["Base.87c10fire"] = {index = SkinTable.STFR_FD[12], spawnChance = SandboxVars.STFR.FireLouisvilleVehicles};

			-- USPS
			VehicleZoneDistribution.usps.vehicles["Base.92wrangler_USPS"] = {index = 0, spawnChance = SandboxVars.STFR.USPSVehicles};
			VehicleZoneDistribution.usps.vehicles["Base.86econoline_USPS"] = {index = 0, spawnChance = SandboxVars.STFR.USPSVehicles};

			if getActivatedMods():contains("MilitaryUsedCarSkins") then
				VehicleZoneDistribution.policewestpointblue.vehicles["Base.hmmwvpolice"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};
				VehicleZoneDistribution.policewestpointblue.vehicles["Base.hmmwvblackopps"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};
				VehicleZoneDistribution.policewestpointblue.vehicles["Base.blazerblackops"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};
				VehicleZoneDistribution.policewestpointblue.vehicles["Base.m35a2blackopps"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};
				VehicleZoneDistribution.policewestpointblue.vehicles["Base.m151blackopps"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};

				VehicleZoneDistribution.policejefferson.vehicles["Base.hmmwvpolice"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};
				VehicleZoneDistribution.policejefferson.vehicles["Base.hmmwvblackopps"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};
				VehicleZoneDistribution.policejefferson.vehicles["Base.blazerblackops"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};
				VehicleZoneDistribution.policejefferson.vehicles["Base.m35a2blackopps"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};
				VehicleZoneDistribution.policejefferson.vehicles["Base.m151blackopps"] = {index = -1, spawnChance = SandboxVars.STFR.FilibusterSwatVehicles};
			end
		end
		if SandboxVars.STFR.SpawnVanillaCars == true and not getActivatedMods():contains("SCKCO") then
			-- Meade County Sheriff
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_MCSO[1], spawnChance = SandboxVars.STFR.SheriffMeadeVehicles};
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_MCSO[2], spawnChance = SandboxVars.STFR.SheriffMeadeVehicles};
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_MCSO[9], spawnChance = SandboxVars.STFR.SheriffMeadeVehicles};

			-- Riverside Police
			VehicleZoneDistribution.policeriverside.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_RSPD[1], spawnChance = SandboxVars.STFR.PoliceRiversideVehicles};
			VehicleZoneDistribution.policeriverside.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_RSPD[2], spawnChance = SandboxVars.STFR.PoliceRiversideVehicles};
			VehicleZoneDistribution.policeriverside.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_RSPD[9], spawnChance = SandboxVars.STFR.PoliceRiversideVehicles};

			-- Rosewood Police
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_RWSD[1], spawnChance = SandboxVars.STFR.SheriffRosewoodVehicles};
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_RWSD[2], spawnChance = SandboxVars.STFR.SheriffRosewoodVehicles};
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_RWSD[9], spawnChance = SandboxVars.STFR.SheriffRosewoodVehicles};

			-- WestPoint Police
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_WPPD[1], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_WPPD[2], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_WPPD[15], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};

			VehicleZoneDistribution.policewestpointwhite.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_WPPD[7], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			VehicleZoneDistribution.policewestpointwhite.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_WPPD[8], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};
			--VehicleZoneDistribution.policewestpointwhite.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_WPPD[16], spawnChance = SandboxVars.STFR.PoliceWestPointVehicles};

			-- Muldraugh Police
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_MDPD[1], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_MDPD[2], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_MCSO[9], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};
			--VehicleZoneDistribution.policemuldraugh.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_MDPD[9], spawnChance = SandboxVars.STFR.PoliceMuldraughVehicles};

			-- Jefferson County Sheriff
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_JCSD[1], spawnChance = SandboxVars.STFR.SheriffJeffersonVehicles};
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_JCSD[2], spawnChance = SandboxVars.STFR.SheriffJeffersonVehicles};
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_JCSD[9], spawnChance = SandboxVars.STFR.SheriffJeffersonVehicles};

			-- Jefferson County Police
			VehicleZoneDistribution.policejefferson.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_JCPD[1], spawnChance = SandboxVars.STFR.PoliceJeffersonVehicles};
			VehicleZoneDistribution.policejefferson.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_JCPD[2], spawnChance = SandboxVars.STFR.PoliceJeffersonVehicles};
			VehicleZoneDistribution.policejefferson.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_JCPD[9], spawnChance = SandboxVars.STFR.PoliceJeffersonVehicles};

			-- Kentucky State Police
			VehicleZoneDistribution.policeksp.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_KSP[1], spawnChance = SandboxVars.STFR.PoliceKSPVehicles};
			VehicleZoneDistribution.policeksp.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_KSP[2], spawnChance = SandboxVars.STFR.PoliceKSPVehicles};
			VehicleZoneDistribution.policeksp.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_KSP[9], spawnChance = SandboxVars.STFR.PoliceKSPVehicles};

			-- Louisville Police
			VehicleZoneDistribution.policelouisville.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_LVPD[1], spawnChance = SandboxVars.STFR.PoliceLouisvilleVehicles};
			VehicleZoneDistribution.policelouisville.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_LVPD[2], spawnChance = SandboxVars.STFR.PoliceLouisvilleVehicles};
			VehicleZoneDistribution.policelouisville.vehicles["Base.StepVan_swat"] = {index = SkinTable.STFR_LVPD[9], spawnChance = SandboxVars.STFR.PoliceLouisvilleVehicles};

			-- Rosewood DOC
			VehicleZoneDistribution.docmeade.vehicles["Base.Van_doc"] = {index = SkinTable.STFR_DOC[1], spawnChance = SandboxVars.STFR.DOCMeadeVehicles};
			VehicleZoneDistribution.docmeade.vehicles["Base.CarLightsPolice"] = {index = SkinTable.STFR_MCSO[1], spawnChance = SandboxVars.STFR.DOCMeadeVehicles};
			VehicleZoneDistribution.docmeade.vehicles["Base.PickUpVanLightsPolice"] = {index = SkinTable.STFR_MCSO[2], spawnChance = SandboxVars.STFR.DOCMeadeVehicles};

			-- Jefferson County DOC
			VehicleZoneDistribution.docjefferson.vehicles["Base.Van_doc"] = {index = SkinTable.STFR_DOC[2], spawnChance = SandboxVars.STFR.DOCJeffersonVehicles};

			-- Park Rangers
			VehicleZoneDistribution.rangermeadestatepark.vehicles["Base.CarLights"] = {index = SkinTable.STFR_RGR[1], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadestatepark.vehicles["Base.PickUpTruckLights"] = {index = SkinTable.STFR_RGR[3], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadestatepark.vehicles["Base.PickUpVanLights"] = {index = SkinTable.STFR_RGR[2], spawnChance = SandboxVars.STFR.RangerVehicles};

			VehicleZoneDistribution.rangermeadeconservation.vehicles["Base.CarLights"] = {index = SkinTable.STFR_RGR[6], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadeconservation.vehicles["Base.PickUpTruckLights"] = {index = SkinTable.STFR_RGR[8], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadeconservation.vehicles["Base.PickUpVanLights"] = {index = SkinTable.STFR_RGR[7], spawnChance = SandboxVars.STFR.RangerVehicles};

			VehicleZoneDistribution.rangermeadefederal.vehicles["Base.CarLights"] = {index = SkinTable.STFR_RGR[11], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadefederal.vehicles["Base.PickUpTruckLights"] = {index = SkinTable.STFR_RGR[13], spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadefederal.vehicles["Base.PickUpVanLights"] = {index = SkinTable.STFR_RGR[12], spawnChance = SandboxVars.STFR.RangerVehicles};

			-- Fire Departments
			VehicleZoneDistribution.firerosewood.vehicles["Base.PickUpTruckLightsFire"] = {index = SkinTable.STFR_FD[4], spawnChance = SandboxVars.STFR.FireRosewoodVehicles};
			VehicleZoneDistribution.firerosewood.vehicles["Base.PickUpVanLightsFire"] = {index = SkinTable.STFR_FD[1], spawnChance = SandboxVars.STFR.FireRosewoodVehicles};

			VehicleZoneDistribution.firelouisville.vehicles["Base.PickUpTruckLightsFire"] = {index = SkinTable.STFR_FD[6], spawnChance = SandboxVars.STFR.FireLouisvilleVehicles};
			VehicleZoneDistribution.firelouisville.vehicles["Base.PickUpVanLightsFire"] = {index = SkinTable.STFR_FD[3], spawnChance = SandboxVars.STFR.FireLouisvilleVehicles};

			-- USPS
			VehicleZoneDistribution.usps.vehicles["Base.VanSpecial"] = {index = SkinTable.STFR_MAIL[1], spawnChance = SandboxVars.STFR.USPSVehicles};
			VehicleZoneDistribution.usps.vehicles["Base.StepVanMail"] = {index = SkinTable.STFR_MAIL[2], spawnChance = SandboxVars.STFR.USPSVehicles};
		end
		VehicleZoneDistribution.banksecurity.vehicles["Base.STFR_87gmcarmoredcar"] = {index = -1, spawnChance = SandboxVars.STFR.BankTruckVehicles};

		if SandboxVars.STFR.DisableSpawns == true then
			VehicleZoneDistribution.banksecurity.vehicles["Base.STFR_87gmcarmoredcar"] = nil;
			VehicleZoneDistribution.sheriffmeade.vehicles["Base.StepVan_swat"] = nil;
			VehicleZoneDistribution.policeriverside.vehicles["Base.StepVan_swat"] = nil;
			VehicleZoneDistribution.sheriffrosewood.vehicles["Base.StepVan_swat"] = nil;
			VehicleZoneDistribution.policewestpointblue.vehicles["Base.StepVan_swat"] = nil;
			VehicleZoneDistribution.policemuldraugh.vehicles["Base.StepVan_swat"] = nil;
			VehicleZoneDistribution.sheriffjefferson.vehicles["Base.StepVan_swat"] = nil;
			VehicleZoneDistribution.policejefferson.vehicles["Base.StepVan_swat"] = nil;
			VehicleZoneDistribution.policeksp.vehicles["Base.StepVan_swat"] = nil;
			VehicleZoneDistribution.policelouisville.vehicles["Base.StepVan_swat"] = nil;
		end
		if SandboxVars.STFR.DisableVehicleZones == true or getActivatedMods():contains("PzkVanillaPlusCarPack") then
			VehicleZoneDistribution.police.vehicles["Base.pzkFranklinTruckBusPrison"] = nil;
			VehicleZoneDistribution.police.vehicles["Base.pzkVanPolice"] = nil;
			VehicleZoneDistribution.docmeade.vehicles["Base.CarLightsPolice"] = nil
			VehicleZoneDistribution.docmeade.vehicles["Base.PickUpVanLightsPolice"] = nil

			VehicleZoneDistribution.banksecurity.vehicles["Base.pzkFranklinBankTruck"] = {index = -1, spawnChance = SandboxVars.STFR.BankTruckVehicles};
			VehicleZoneDistribution.docmeade.vehicles["Base.pzkVanPolice"] = {index = -1, spawnChance = SandboxVars.STFR.DOCMeadeVehicles};
			VehicleZoneDistribution.docjefferson.vehicles["Base.pzkVanPolice"] = {index = -1, spawnChance = SandboxVars.STFR.DOCJeffersonVehicles};
			VehicleZoneDistribution.docmeade.vehicles["Base.pzkFranklinTruckBusPrison"] = {index = -1, spawnChance = SandboxVars.STFR.DOCMeadeVehicles};
			VehicleZoneDistribution.docjefferson.vehicles["Base.pzkFranklinTruckBusPrison"] = {index = -1, spawnChance = SandboxVars.STFR.DOCJeffersonVehicles};
			VehicleZoneDistribution.usps.vehicles["Base.pzkMinivanStellarisMail"] = {index = -1, spawnChance = SandboxVars.STFR.USPSVehicles};

			-- Park Rangers
			VehicleZoneDistribution.rangermeadestatepark.vehicles["Base.pzkFranklinGalloperRanger"] = {index = -1, spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadestatepark.vehicles["Base.pzkChevalierLaserRanger"] = {index = -1, spawnChance = SandboxVars.STFR.RangerVehicles};

			VehicleZoneDistribution.rangermeadeconservation.vehicles["Base.pzkFranklinGalloperRanger"] = {index = -1, spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadeconservation.vehicles["Base.pzkChevalierLaserRanger"] = {index = -1, spawnChance = SandboxVars.STFR.RangerVehicles};

			VehicleZoneDistribution.rangermeadefederal.vehicles["Base.pzkFranklinGalloperRanger"] = {index = -1, spawnChance = SandboxVars.STFR.RangerVehicles};
			VehicleZoneDistribution.rangermeadefederal.vehicles["Base.pzkChevalierLaserRanger"] = {index = -1, spawnChance = SandboxVars.STFR.RangerVehicles};

			-- Meade County Sheriff
			VehicleZoneDistribution.sheriffmeade = VehicleZoneDistribution.police

			-- Riverside Police
			VehicleZoneDistribution.policeriverside = VehicleZoneDistribution.police

			-- Rosewood Police
			VehicleZoneDistribution.sheriffrosewood = VehicleZoneDistribution.police

			-- WestPoint Police
			VehicleZoneDistribution.policewestpointblue = VehicleZoneDistribution.police

			-- WestPoint Police
			VehicleZoneDistribution.policewestpointwhite = VehicleZoneDistribution.police

			-- Muldraugh Police
			VehicleZoneDistribution.policemuldraugh = VehicleZoneDistribution.police

			-- Jefferson County Sheriff
			VehicleZoneDistribution.sheriffjefferson = VehicleZoneDistribution.police

			-- Jefferson County Police
			VehicleZoneDistribution.policejefferson = VehicleZoneDistribution.police

			-- Kentucky State Police
			VehicleZoneDistribution.policeksp = VehicleZoneDistribution.police

			-- Louisville Police
			VehicleZoneDistribution.policelouisville = VehicleZoneDistribution.police

			-- Rosewood Fire Departments
			VehicleZoneDistribution.firerosewood = VehicleZoneDistribution.fire

			-- Louisville Fire Departments
			VehicleZoneDistribution.firelouisville = VehicleZoneDistribution.fire
		end
	end
end
Events.OnInitGlobalModData.Add(STFRSpawns);