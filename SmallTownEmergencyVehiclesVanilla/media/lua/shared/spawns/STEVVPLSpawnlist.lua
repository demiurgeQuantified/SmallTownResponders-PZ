if VehicleZoneDistribution then -- check if the table exists for backwards compatibility
-- Parking Stall, common parking stall with random cars, the most used one (shop parking lots, houses etc.)

-- ****************************** --
--          SPECIAL VEHICLES      --
-- ****************************** --

if (not (getActivatedMods():contains("STEV"))) then

-- police
VehicleZoneDistribution.police = VehicleZoneDistribution.police or {}
VehicleZoneDistribution.police.vehicles = VehicleZoneDistribution.police.vehicles or {}
VehicleZoneDistribution.police.vehicles["Base.CarLightsPolice_meadesheriff"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.police.vehicles["Base.CarLightsPolice_jeffersonsheriff"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.police.vehicles["Base.CarLightsPolice_jeffersonpolice"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.police.vehicles["Base.CarLightsPolice_louisvillepolice"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.police.vehicles["Base.CarLightsPolice_kentuckystate"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.police.chanceToSpawnNormal = 40;
end

end