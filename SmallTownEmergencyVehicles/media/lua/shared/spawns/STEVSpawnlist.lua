if VehicleZoneDistribution then -- check if the table exists for backwards compatibility
-- Parking Stall, common parking stall with random cars, the most used one (shop parking lots, houses etc.)

-- ****************************** --
--          SPECIAL VEHICLES      --
-- ****************************** --

-- Meade County Sheriff
VehicleZoneDistribution.policemeade = VehicleZoneDistribution.policemeade or {}
VehicleZoneDistribution.policemeade.vehicles = VehicleZoneDistribution.policemeade.vehicles or {}
VehicleZoneDistribution.policemeade.vehicles["Base.85crownvic_meadesheriff"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.policemeade.vehicles["Base.87caprice_meadesheriff"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.policemeade.chanceToSpawnNormal = 40;

-- Jefferson County Sheriff
VehicleZoneDistribution.policejeffersonsd = VehicleZoneDistribution.policejeffersonsd or {}
VehicleZoneDistribution.policejeffersonsd.vehicles = VehicleZoneDistribution.policejeffersonsd.vehicles or {}
VehicleZoneDistribution.policejeffersonsd.vehicles["Base.85crownvic_jeffersonsheriff"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.policejeffersonsd.vehicles["Base.87caprice_jeffersonsheriff"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.policejeffersonsd.chanceToSpawnNormal = 40;

-- Jefferson County Police
VehicleZoneDistribution.policejeffersonpd = VehicleZoneDistribution.policejeffersonpd or {}
VehicleZoneDistribution.policejeffersonpd.vehicles = VehicleZoneDistribution.policejeffersonpd.vehicles or {}
VehicleZoneDistribution.policejeffersonpd.vehicles["Base.85crownvic_jeffersonpolice"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.policejeffersonpd.vehicles["Base.87caprice_jeffersonpolice"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.policejeffersonpd.chanceToSpawnNormal = 40;

-- Kentucky State Police
VehicleZoneDistribution.policeksp = VehicleZoneDistribution.policeksp or {}
VehicleZoneDistribution.policeksp.vehicles = VehicleZoneDistribution.policeksp.vehicles or {}
VehicleZoneDistribution.policeksp.vehicles["Base.85crownvic_kentuckystate"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.policeksp.vehicles["Base.92crownvic_kentuckystate"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.policeksp.chanceToSpawnNormal = 40;

-- Louisville Police
VehicleZoneDistribution.policelouisvillepd = VehicleZoneDistribution.policelouisvillepd or {}
VehicleZoneDistribution.policelouisvillepd.vehicles = VehicleZoneDistribution.policelouisvillepd.vehicles or {}
VehicleZoneDistribution.policelouisvillepd.vehicles["Base.92crownvic_louisvillepolice"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.policelouisvillepd.chanceToSpawnNormal = 40;


if getActivatedMods():contains("STEVVPL") then

-- Meade County Sheriff
VehicleZoneDistribution.policemeade = VehicleZoneDistribution.policemeade or {}
VehicleZoneDistribution.policemeade.vehicles = VehicleZoneDistribution.policemeade.vehicles or {}
VehicleZoneDistribution.policemeade.vehicles["Base.CarLightsPolice_meadesheriff"] = {index = -1, spawnChance = 80};
VehicleZoneDistribution.policemeade.chanceToSpawnNormal = 40;

-- Jefferson County Sheriff
VehicleZoneDistribution.policejeffersonsd = VehicleZoneDistribution.policejeffersonsd or {}
VehicleZoneDistribution.policejeffersonsd.vehicles = VehicleZoneDistribution.policejeffersonsd.vehicles or {}
VehicleZoneDistribution.policejeffersonsd.vehicles["Base.CarLightsPolice_jeffersonsheriff"] = {index = -1, spawnChance = 80};
VehicleZoneDistribution.policejeffersonsd.chanceToSpawnNormal = 40;

-- Jefferson County Police
VehicleZoneDistribution.policejeffersonpd = VehicleZoneDistribution.policejeffersonpd or {}
VehicleZoneDistribution.policejeffersonpd.vehicles = VehicleZoneDistribution.policejeffersonpd.vehicles or {}
VehicleZoneDistribution.policejeffersonpd.vehicles["Base.CarLightsPolice_jeffersonpolice"] = {index = -1, spawnChance = 80};
VehicleZoneDistribution.policejeffersonpd.chanceToSpawnNormal = 40;

-- Kentucky State Police
VehicleZoneDistribution.policeksp = VehicleZoneDistribution.policeksp or {}
VehicleZoneDistribution.policeksp.vehicles = VehicleZoneDistribution.policeksp.vehicles or {}
VehicleZoneDistribution.policeksp.vehicles["Base.CarLightsPolice_kentuckystate"] = {index = -1, spawnChance = 80};
VehicleZoneDistribution.policeksp.chanceToSpawnNormal = 40;

-- Louisville Police
VehicleZoneDistribution.policelouisvillepd = VehicleZoneDistribution.policelouisvillepd or {}
VehicleZoneDistribution.policelouisvillepd.vehicles = VehicleZoneDistribution.policelouisvillepd.vehicles or {}
VehicleZoneDistribution.policelouisvillepd.vehicles["Base.CarLightsPolice_louisvillepolice"] = {index = -1, spawnChance = 80};
VehicleZoneDistribution.policelouisvillepd.chanceToSpawnNormal = 40;
end

end
