-- pull the vehicle distributions into a local table
local distributionTable = VehicleDistributions[1]

-- now setup the cars. we can just use tables for already existing cars for them:
-- dont use the corvette table for the muscle cars, as it only encludes doctors stuff
-- and things for golfers. CarNormal will give a better selection of stuff for the
-- average joe.
distributionTable["CarLightsPolice_meadesheriff"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["CarLightsPolice_jeffersonpolice"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["CarLightsPolice_jeffersonsheriff"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["CarLightsPolice_louisvillepolice"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["CarLightsPolice_kentuckystate"] = distributionTable["PickUpVanLightsPolice"]
