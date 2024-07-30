local SkinTable = require 'spawns/STFR_SpawnTables'
local distributionTable = VehicleDistributions[1]
if isClient() then return end
local function STFRVehicleDistro()
	VehicleDistributions.SWATTrunk = {
		rolls = 4,
		items = {
			"308Box", 10,
			"AmmoStrap_Bullets", 4,
			"AmmoStrap_Shells", 4,
			"AssaultRifle2", 1,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 20,
			"DuctTape", 8,
			"EmptyPetrolCan", 10,
			"EmptySandbag", 4,
			"FiberglassStock", 4,
			"Garbagebag", 6,
			"HandTorch", 4,
			"Hat_CrashHelmet_Police", 2,
			"Hat_EarMuff_Protectors", 4,
			"HolsterDouble", 1,
			"HolsterSimple", 4,
			"HuntingRifle", 8,
			"M14Clip", 4,
			"Mov_RoadBarrier", 10,
			"Mov_RoadCone", 10,
			"Nightstick", 2,
			"Pistol", 10,
			"Plasticbag", 10,
			"PopBottleEmpty", 4,
			"PopEmpty", 4,
			"Radio.WalkieTalkie4", 10,
			"RubberBand", 6,
			"Shotgun", 10,
			"ShotgunShellsBox", 10,
			"Sling", 4,
			"Tarp", 10,
			"Tissue", 10,
			"ToiletPaper", 6,
			"Tote", 6,
			"Twine", 10,
			"WaterBottleEmpty", 4,
			"WhiskeyEmpty", 1,
			"x2Scope", 4,
			"x4Scope", 2,
			"x8Scope", 1,
		},
		junk = {
			rolls = 1,
			items = {
				"BaseballBat", 1,
				"FirstAidKit", 20,
				"FirstAidKit", 4,
				"Jack", 2,
				"LugWrench", 8,
				"Screwdriver", 10,
				"TirePump", 8,
				"Wrench", 8,
			}
		}
	}

	VehicleDistributions.SWAT = {
		TruckBed = VehicleDistributions.SWATTrunk;

		GloveBox = VehicleDistributions.PoliceGloveBox;

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;
	}

	VehicleDistributions.PrisonBus = {
		TruckBed = {
			rolls = 4,
			items = {
				"308Box", 10,
				"AmmoStrap_Bullets", 4,
				"AmmoStrap_Shells", 4,
				"AssaultRifle2", 1,
				"Bullets9mmBox", 20,
				"Bullets9mmBox", 10,
				"FiberglassStock", 4,
				"HandTorch", 4,
				"Hat_CrashHelmet_Police", 2,
				"Hat_EarMuff_Protectors", 4,
				"HolsterDouble", 1,
				"HolsterSimple", 4,
				"HuntingRifle", 8,
				"M14Clip", 4,
				"Nightstick", 8,
				"Pistol", 10,
				"Radio.WalkieTalkie4", 10,
				"Shotgun", 10,
				"ShotgunShellsBox", 10,
				"Sling", 4,
				"x2Scope", 4,
				"x4Scope", 2,
				"x8Scope", 1,
				"Boilersuit_Prisoner", 6,
				"Boilersuit_Prisoner", 6,
				"Boilersuit_Prisoner", 6,
			},
			junk = {
				rolls = 1,
				items = {
					"FirstAidKit", 20,
					"Radio.HamRadio1", 20,
					"Spoon", 5,
					"Fork", 5,
					"ButterKnife", 5,
				}
			}
		},

		GloveBox = {
			rolls = 4,
			items = {
				"AlcoholWipes", 8,
				"Bandage", 4,
				"Bandaid", 10,
				"Battery", 10,
				"BluePen", 8,
				"Bullets9mmBox", 20,
				"Bullets9mmBox", 10,
				"Disc_Retail", 2,
				"Eraser", 6,
				"HandTorch", 4,
				"Magazine", 10,
				"Notebook", 10,
				"Paperclip", 4,
				"Pen", 8,
				"Pencil", 10,
				"Radio.WalkieTalkie4", 10,
				"RedPen", 8,
				"RubberBand", 6,
				"Tissue", 10,
			},
			junk = {
				rolls = 1,
				items = {
					"Base.MarchRidgeMap", 4,
					"Base.MuldraughMap", 4,
					"Base.RiversideMap", 4,
					"Base.RosewoodMap", 4,
					"Base.WestpointMap", 4,
					"Cigarettes", 8,
					"FirstAidKit", 20,
					"Glasses_Aviators", 0.5,
					"Gloves_LeatherGlovesBlack", 0.5,
					"HandTorch", 4,
					"HuntingKnife", 0.1,
					"Lighter", 4,
					"Matches", 8,
					"Pistol", 20,
					"Scotchtape", 8,
					"ToiletPaper", 4,
					"Twine", 10,
				}
			}
		},

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;
	}

	VehicleDistributions.BankTruck = {
		TruckBed = {
			rolls = 6,
			items = {
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"Money", 10,
				"STR.Jacket_Sweater_Security_Bank", 4,
				"STR.Jacket_Security_Bank", 4,
				"STR.Hat_Security_Bank", 2,
			},
			junk = {
				rolls = 1,
				items = {
				}
			}
		},

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;
		
		GloveBox = VehicleDistributions.GloveBox;

	}

	table.insert(VehicleDistributions.Postal["TruckBed"].items, "STFR.Hat_BaseballCap_USPS");
	table.insert(VehicleDistributions.Postal["TruckBed"].items, 1.5);
	table.insert(VehicleDistributions.Postal["TruckBed"].items, "STFR.Jacket_USPS");
	table.insert(VehicleDistributions.Postal["TruckBed"].items, 1.5);
	table.insert(VehicleDistributions.Postal["TruckBed"].items, "STFR.Bag_Satchel_USPS");
	table.insert(VehicleDistributions.Postal["TruckBed"].items, 1.5);
	table.insert(VehicleDistributions.Postal["TruckBed"].items, "STFR.Bag_DuffelBag_USPS");
	table.insert(VehicleDistributions.Postal["TruckBed"].items, 0.5);

	table.insert(VehicleDistributions.Ambulance["TruckBed"].items, "STFR.Bag_DuffelBag_EMS_Red");
	table.insert(VehicleDistributions.Ambulance["TruckBed"].items, 5);
	table.insert(VehicleDistributions.Ambulance["TruckBed"].items, "STFR.Bag_DuffelBag_EMS_Blue");
	table.insert(VehicleDistributions.Ambulance["TruckBed"].items, 5);
	table.insert(VehicleDistributions.Ambulance["TruckBed"].items, "STFR.Bag_DuffelBag_EMS_Green");
	table.insert(VehicleDistributions.Ambulance["TruckBed"].items, 5);

	table.insert(VehicleDistributions.Fire["TruckBed"].items, "STFR.Bag_DuffelBag_Fire_Black");
	table.insert(VehicleDistributions.Fire["TruckBed"].items, 25);
	table.insert(VehicleDistributions.Fire["TruckBed"].items, "STFR.Bag_DuffelBag_Fire_Khaki");
	table.insert(VehicleDistributions.Fire["TruckBed"].items, 25);

	table.insert(VehicleDistributions.Fire["TruckBedOpen"].items, "STFR.Bag_DuffelBag_Fire_Black");
	table.insert(VehicleDistributions.Fire["TruckBedOpen"].items, 25);
	table.insert(VehicleDistributions.Fire["TruckBedOpen"].items, "STFR.Bag_DuffelBag_Fire_Khaki");
	table.insert(VehicleDistributions.Fire["TruckBedOpen"].items, 25);

	-- TODO: Fix the cargo van entry.
	local MAIL = {};
	MAIL[2] = "VanSpecial3"; -- CargoVan

	if getActivatedMods():contains("FRUsedCars") then

		distributionTable["91blazerranger"] = distributionTable["PickUpVanLights0"]

		distributionTable["92wrangler_USPS"] = { Normal = VehicleDistributions.Postal; }
		distributionTable["86econoline_USPS"] = { Normal = VehicleDistributions.Postal; }

		distributionTable["prisonbus"] = { Normal = VehicleDistributions.PrisonBus; }
		distributionTable["86econoline_doc"] = { Normal = VehicleDistributions.PrisonBus; }

		distributionTable["86econolineambulance_swat"] = { Normal = VehicleDistributions.SWAT; }

	end

	distributionTable["Van_doc"] = { Normal = VehicleDistributions.PrisonBus; }

	distributionTable[MAIL[2]] = { Normal = VehicleDistributions.Postal; }

	distributionTable["STFR_87gmcarmoredcar"] = { Normal = VehicleDistributions.BankTruck; }

	distributionTable["StepVan_swat"] = { Normal = VehicleDistributions.SWAT; }

end

Events.OnPreDistributionMerge.Add(STFRVehicleDistro);
