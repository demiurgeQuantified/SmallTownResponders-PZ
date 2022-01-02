-- pull the vehicle distributions into a local table
local distributionTable = VehicleDistributions[1]

-- now setup the cars. we can just use tables for already existing cars for them:
-- dont use the corvette table for the muscle cars, as it only encludes doctors stuff
-- and things for golfers. CarNormal will give a better selection of stuff for the
-- average joe.
distributionTable["85crownvic_kentuckystate"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["85crownvic_meadesheriff"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["85crownvic_jeffersonsheriff"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["85crownvic_jeffersonpolice"] = distributionTable["PickUpVanLightsPolice"]

distributionTable["87caprice_meadesheriff"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["87caprice_jeffersonsheriff"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["87caprice_jeffersonpolice"] = distributionTable["PickUpVanLightsPolice"]

distributionTable["92crownvic_kentuckystate"] = distributionTable["PickUpVanLightsPolice"]
distributionTable["92crownvic_louisvillepolice"] = distributionTable["PickUpVanLightsPolice"]
