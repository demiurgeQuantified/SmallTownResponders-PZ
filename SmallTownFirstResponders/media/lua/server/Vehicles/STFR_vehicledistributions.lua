local SkinTable = require 'spawns/STFR_SpawnTables'
local distributionTable = VehicleDistributions[1]
if isClient() then return end

local function STFRVehicleDistro()

	VehicleDistributions.SheriffTruckBed = {
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
			"STFR.Vest_BulletPolice_Meade", 2,
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

	VehicleDistributions.Sheriff = {
		TruckBed = VehicleDistributions.SheriffTruckBed;

		GloveBox = VehicleDistributions.PoliceGloveBox;

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;
	}

	VehicleDistributions.PrisonBusJefferson = {
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
				"STFR.Boilersuit_Jefferson_Prisoner", 6,
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

	VehicleDistributions.PrisonBusMeade = {
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
				"STFR.Boilersuit_Meade_Gen_Pop_Prisoner", 6,
				"STFR.Boilersuit_Meade_Low_Risk_Prisoner", 4,
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

	VehicleDistributions.AmbulanceJefferson = {
		TruckBed = {
			rolls = 4,
			items = {
				"AlcoholWipes", 10,
				"Antibiotics", 4,
				"Bandage", 10,
				"Corset_Medical", 2,
				"CottonBalls", 10,
				"Disinfectant", 10,
				"DuctTape", 8,
				"EmptyPetrolCan", 10,
				"EmptySandbag", 4,
				"Garbagebag", 6,
				"Gloves_Surgical", 10,
				"Hat_SurgicalCap_Blue", 10,
				"Hat_SurgicalMask_Blue", 10,
				"HospitalGown", 18,
				"Mov_MobileBloodbag", 10,
				"Pills", 10,
				"Pills", 10,
				"PillsAntiDep", 10,
				"PillsBeta", 10,
				"PillsSleepingTablets", 10,
				"Plasticbag", 10,
				"PopBottleEmpty", 4,
				"PopEmpty", 4,
				"RubberBand", 6,
				"Scalpel", 10,
				"Scissors", 10,
				"Shirt_Scrubs", 8,
				"SutureNeedle", 10,
				"SutureNeedleHolder", 10,
				"Tarp", 10,
				"Tissue", 10,
				"ToiletPaper", 6,
				"Tote", 6,
				"Trousers_Scrubs", 8,
				"Tweezers", 10,
				"Twine", 10,
				"WaterBottleEmpty", 4,
				"WhiskeyEmpty", 1,
			},
			junk = {
				rolls = 1,
				items = {
					"STFR.Bag_DuffelBag_EMS_Red", 15,
					"STFR.Bag_DuffelBag_EMS_Blue", 15,
					"STFR.Bag_DuffelBag_EMS_Green", 15,
					"Bag_MedicalBag", 15,
					"CarBattery2", 4,
					"Jack", 2,
					"LugWrench", 8,
					"NormalTire2", 10,
					"Screwdriver", 10,
					"TirePump", 8,
					"Wrench", 8,
				}
			}
		},

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;
		
		GloveBox = VehicleDistributions.GloveBox;

	}

	VehicleDistributions.AmbulanceMeade = {
		TruckBed = {
			rolls = 4,
			items = {
				"AlcoholWipes", 10,
				"Antibiotics", 4,
				"Bandage", 10,
				"Corset_Medical", 2,
				"CottonBalls", 10,
				"Disinfectant", 10,
				"DuctTape", 8,
				"EmptyPetrolCan", 10,
				"EmptySandbag", 4,
				"Garbagebag", 6,
				"Gloves_Surgical", 10,
				"Hat_SurgicalCap_Blue", 10,
				"Hat_SurgicalMask_Blue", 10,
				"HospitalGown", 18,
				"Mov_MobileBloodbag", 10,
				"Pills", 10,
				"Pills", 10,
				"PillsAntiDep", 10,
				"PillsBeta", 10,
				"PillsSleepingTablets", 10,
				"Plasticbag", 10,
				"PopBottleEmpty", 4,
				"PopEmpty", 4,
				"RubberBand", 6,
				"Scalpel", 10,
				"Scissors", 10,
				"Shirt_Scrubs", 8,
				"SutureNeedle", 10,
				"SutureNeedleHolder", 10,
				"Tarp", 10,
				"Tissue", 10,
				"ToiletPaper", 6,
				"Tote", 6,
				"Trousers_Scrubs", 8,
				"Tweezers", 10,
				"Twine", 10,
				"WaterBottleEmpty", 4,
				"WhiskeyEmpty", 1,
			},
			junk = {
				rolls = 1,
				items = {
					"STFR.Bag_DuffelBag_EMS_Red", 15,
					"STFR.Bag_DuffelBag_EMS_Blue", 15,
					"STFR.Bag_DuffelBag_EMS_Green", 15,
					"Bag_MedicalBag", 15,
					"CarBattery2", 4,
					"Jack", 2,
					"LugWrench", 8,
					"NormalTire2", 10,
					"Screwdriver", 10,
					"TirePump", 8,
					"Wrench", 8,
				}
			}
		},

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;
		
		GloveBox = VehicleDistributions.GloveBox;

	}

	VehicleDistributions.AmbulanceLouisville = {
		TruckBed = {
			rolls = 4,
			items = {
				"AlcoholWipes", 10,
				"Antibiotics", 4,
				"Bandage", 10,
				"Corset_Medical", 2,
				"CottonBalls", 10,
				"Disinfectant", 10,
				"DuctTape", 8,
				"EmptyPetrolCan", 10,
				"EmptySandbag", 4,
				"Garbagebag", 6,
				"Gloves_Surgical", 10,
				"Hat_SurgicalCap_Blue", 10,
				"Hat_SurgicalMask_Blue", 10,
				"HospitalGown", 18,
				"Mov_MobileBloodbag", 10,
				"Pills", 10,
				"Pills", 10,
				"PillsAntiDep", 10,
				"PillsBeta", 10,
				"PillsSleepingTablets", 10,
				"Plasticbag", 10,
				"PopBottleEmpty", 4,
				"PopEmpty", 4,
				"RubberBand", 6,
				"Scalpel", 10,
				"Scissors", 10,
				"Shirt_Scrubs", 8,
				"SutureNeedle", 10,
				"SutureNeedleHolder", 10,
				"Tarp", 10,
				"Tissue", 10,
				"ToiletPaper", 6,
				"Tote", 6,
				"Trousers_Scrubs", 8,
				"Tweezers", 10,
				"Twine", 10,
				"WaterBottleEmpty", 4,
				"WhiskeyEmpty", 1,
			},
			junk = {
				rolls = 1,
				items = {
					"STFR.Bag_DuffelBag_EMS_Red", 15,
					"STFR.Bag_DuffelBag_EMS_Blue", 15,
					"STFR.Bag_DuffelBag_EMS_Green", 15,
					"Bag_MedicalBag", 15,
					"CarBattery2", 4,
					"Jack", 2,
					"LugWrench", 8,
					"NormalTire2", 10,
					"Screwdriver", 10,
					"TirePump", 8,
					"Wrench", 8,
				}
			}
		},

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;
		
		GloveBox = VehicleDistributions.GloveBox;

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

	VehicleDistributions.FireTruckMeade = {
		TruckBed = {
			rolls = 4,
			items = {
				"Axe", 10,
				"Bandage", 10,
				"BucketEmpty", 4,
				"Disinfectant", 8,
				"DuctTape", 8,
				"EmptyPetrolCan", 10,
				"EmptySandbag", 4,
				"Garbagebag", 6,
				"Gloves_LeatherGloves", 10,
				"Hat_Fireman", 4,
				"Hat_GasMask", 1,
				"Jacket_Fireman", 4,
				"LongJohns", 2,
				"PickAxe", 0.5,
				"Pills", 10,
				"Plasticbag", 10,
				"Radio.WalkieTalkie4", 10,
				"Rope", 10,
				"RubberBand", 6,
				"Shoes_ArmyBoots", 4,
				"Socks_Long", 6,
				"Tarp", 10,
				"Tarp", 10,
				"Tissue", 10,
				"ToiletPaper", 6,
				"Tote", 6,
				"Trousers_Fireman", 8,
				"Twine", 10,
			},

			junk = {
				rolls = 1,
				items = {
					"STR.Bag_DuffelBag_Fire_Black", 25,
					"STR.Bag_DuffelBag_Fire_Khaki", 25,
					"Axe", 20,
					"CarBattery2", 4,
					"FirstAidKit", 20,
					"Jack", 2,
					"LugWrench", 8,
					"NormalTire2", 10,
					"Screwdriver", 10,
					"TirePump", 8,
					"Wrench", 8,
				}
			}
		},

		TruckBedOpen = {
			rolls = 4,
			items = {
				"Axe", 10,
				"Bandage", 10,
				"BucketEmpty", 4,
				"Disinfectant", 8,
				"DuctTape", 8,
				"EmptyPetrolCan", 10,
				"EmptySandbag", 4,
				"Garbagebag", 6,
				"Gloves_LeatherGloves", 10,
				"Hat_Fireman", 4,
				"Hat_GasMask", 1,
				"Jacket_Fireman", 4,
				"LongJohns", 2,
				"PickAxe", 0.5,
				"Pills", 10,
				"Plasticbag", 10,
				"Radio.WalkieTalkie4", 10,
				"Rope", 10,
				"RubberBand", 6,
				"Shoes_ArmyBoots", 4,
				"Socks_Long", 6,
				"Tarp", 10,
				"Tarp", 10,
				"Tissue", 10,
				"ToiletPaper", 6,
				"Tote", 6,
				"Trousers_Fireman", 8,
				"Twine", 10,
			},

			junk = {
				rolls = 1,
				items = {
					"STR.Bag_DuffelBag_Fire_Black", 25,
					"STR.Bag_DuffelBag_Fire_Khaki", 25,
					"Axe", 20,
					"CarBattery2", 4,
					"FirstAidKit", 20,
					"Jack", 2,
					"LugWrench", 8,
					"NormalTire2", 10,
					"Screwdriver", 10,
					"TirePump", 8,
					"Wrench", 8,
				}
			}
		},

		GloveBox = VehicleDistributions.GloveBox;

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;

	}

	VehicleDistributions.FireTruckLouisville = {
		TruckBed = {
			rolls = 4,
			items = {
				"Axe", 10,
				"Bandage", 10,
				"BucketEmpty", 4,
				"Disinfectant", 8,
				"DuctTape", 8,
				"EmptyPetrolCan", 10,
				"EmptySandbag", 4,
				"Garbagebag", 6,
				"Gloves_LeatherGloves", 10,
				"Hat_Fireman", 4,
				"Hat_GasMask", 1,
				"Jacket_Fireman", 4,
				"LongJohns", 2,
				"PickAxe", 0.5,
				"Pills", 10,
				"Plasticbag", 10,
				"Radio.WalkieTalkie4", 10,
				"Rope", 10,
				"RubberBand", 6,
				"Shoes_ArmyBoots", 4,
				"Socks_Long", 6,
				"Tarp", 10,
				"Tarp", 10,
				"Tissue", 10,
				"ToiletPaper", 6,
				"Tote", 6,
				"Trousers_Fireman", 8,
				"Twine", 10,
			},

			junk = {
				rolls = 1,
				items = {
					"STR.Bag_DuffelBag_Fire_Black", 25,
					"STR.Bag_DuffelBag_Fire_Khaki", 25,
					"Axe", 20,
					"CarBattery2", 4,
					"FirstAidKit", 20,
					"Jack", 2,
					"LugWrench", 8,
					"NormalTire2", 10,
					"Screwdriver", 10,
					"TirePump", 8,
					"Wrench", 8,
				}
			}
		},

		TruckBedOpen = {
			rolls = 4,
			items = {
				"Axe", 10,
				"Bandage", 10,
				"BucketEmpty", 4,
				"Disinfectant", 8,
				"DuctTape", 8,
				"EmptyPetrolCan", 10,
				"EmptySandbag", 4,
				"Garbagebag", 6,
				"Gloves_LeatherGloves", 10,
				"Hat_Fireman", 4,
				"Hat_GasMask", 1,
				"Jacket_Fireman", 4,
				"LongJohns", 2,
				"PickAxe", 0.5,
				"Pills", 10,
				"Plasticbag", 10,
				"Radio.WalkieTalkie4", 10,
				"Rope", 10,
				"RubberBand", 6,
				"Shoes_ArmyBoots", 4,
				"Socks_Long", 6,
				"Tarp", 10,
				"Tarp", 10,
				"Tissue", 10,
				"ToiletPaper", 6,
				"Tote", 6,
				"Trousers_Fireman", 8,
				"Twine", 10,
			},

			junk = {
				rolls = 1,
				items = {
					"STR.Bag_DuffelBag_Fire_Black", 25,
					"STR.Bag_DuffelBag_Fire_Khaki", 25,
					"Axe", 20,
					"CarBattery2", 4,
					"FirstAidKit", 20,
					"Jack", 2,
					"LugWrench", 8,
					"NormalTire2", 10,
					"Screwdriver", 10,
					"TirePump", 8,
					"Wrench", 8,
				}
			}
		},

		GloveBox = VehicleDistributions.GloveBox;

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;

	}

	VehicleDistributions.FireTruckRosewood = {
		TruckBed = {
			rolls = 4,
			items = {
				"Axe", 10,
				"Bandage", 10,
				"BucketEmpty", 4,
				"Disinfectant", 8,
				"DuctTape", 8,
				"EmptyPetrolCan", 10,
				"EmptySandbag", 4,
				"Garbagebag", 6,
				"Gloves_LeatherGloves", 10,
				"Hat_Fireman", 4,
				"Hat_GasMask", 1,
				"Jacket_Fireman", 4,
				"LongJohns", 2,
				"PickAxe", 0.5,
				"Pills", 10,
				"Plasticbag", 10,
				"Radio.WalkieTalkie4", 10,
				"Rope", 10,
				"RubberBand", 6,
				"Shoes_ArmyBoots", 4,
				"Socks_Long", 6,
				"Tarp", 10,
				"Tarp", 10,
				"Tissue", 10,
				"ToiletPaper", 6,
				"Tote", 6,
				"Trousers_Fireman", 8,
				"Twine", 10,
			},

			junk = {
				rolls = 1,
				items = {
					"STR.Bag_DuffelBag_Fire_Black", 25,
					"STR.Bag_DuffelBag_Fire_Khaki", 25,
					"Axe", 20,
					"CarBattery2", 4,
					"FirstAidKit", 20,
					"Jack", 2,
					"LugWrench", 8,
					"NormalTire2", 10,
					"Screwdriver", 10,
					"TirePump", 8,
					"Wrench", 8,
				}
			}
		},

		TruckBedOpen = {
			rolls = 4,
			items = {
				"Axe", 10,
				"Bandage", 10,
				"BucketEmpty", 4,
				"Disinfectant", 8,
				"DuctTape", 8,
				"EmptyPetrolCan", 10,
				"EmptySandbag", 4,
				"Garbagebag", 6,
				"Gloves_LeatherGloves", 10,
				"Hat_Fireman", 4,
				"Hat_GasMask", 1,
				"Jacket_Fireman", 4,
				"LongJohns", 2,
				"PickAxe", 0.5,
				"Pills", 10,
				"Plasticbag", 10,
				"Radio.WalkieTalkie4", 10,
				"Rope", 10,
				"RubberBand", 6,
				"Shoes_ArmyBoots", 4,
				"Socks_Long", 6,
				"Tarp", 10,
				"Tarp", 10,
				"Tissue", 10,
				"ToiletPaper", 6,
				"Tote", 6,
				"Trousers_Fireman", 8,
				"Twine", 10,
			},

			junk = {
				rolls = 1,
				items = {
					"STR.Bag_DuffelBag_Fire_Black", 25,
					"STR.Bag_DuffelBag_Fire_Khaki", 25,
					"Axe", 20,
					"CarBattery2", 4,
					"FirstAidKit", 20,
					"Jack", 2,
					"LugWrench", 8,
					"NormalTire2", 10,
					"Screwdriver", 10,
					"TirePump", 8,
					"Wrench", 8,
				}
			}
		},

		GloveBox = VehicleDistributions.GloveBox;

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;

	}

	VehicleDistributions.USPS = {
		TruckBed =
		{
			rolls = 4,
			items = {
				"BookCarpentry1", 6,
				"BookCarpentry2", 4,
				"BookCarpentry3", 2,
				"BookCarpentry4", 1,
				"BookCarpentry5", 0.5,
				"BookCooking1", 6,
				"BookCooking2", 4,
				"BookCooking3", 2,
				"BookCooking4", 1,
				"BookCooking5", 0.5,
				"BookElectrician1", 6,
				"BookElectrician2", 4,
				"BookElectrician3", 2,
				"BookElectrician4", 1,
				"BookElectrician5", 0.5,
				"BookFarming1", 6,
				"BookFarming2", 4,
				"BookFarming3", 2,
				"BookFarming4", 1,
				"BookFarming5", 0.5,
				"BookFirstAid1", 6,
				"BookFirstAid2", 4,
				"BookFirstAid3", 2,
				"BookFirstAid4", 1,
				"BookFirstAid5", 0.5,
				"BookFishing1", 6,
				"BookFishing2", 4,
				"BookFishing3", 2,
				"BookFishing4", 1,
				"BookFishing5", 0.5,
				"BookForaging1", 6,
				"BookForaging2", 4,
				"BookForaging3", 2,
				"BookForaging4", 1,
				"BookForaging5", 0.5,
				"BookMechanic1", 6,
				"BookMechanic2", 4,
				"BookMechanic3", 2,
				"BookMechanic4", 1,
				"BookMechanic5", 0.5,
				"BookMetalWelding1", 6,
				"BookMetalWelding2", 4,
				"BookMetalWelding3", 2,
				"BookMetalWelding4", 1,
				"BookMetalWelding5", 0.5,
				"BookTailoring1", 6,
				"BookTailoring2", 4,
				"BookTailoring3", 2,
				"BookTailoring4", 1,
				"BookTailoring5", 0.5,
				"BookTrapping1", 6,
				"BookTrapping2", 4,
				"BookTrapping3", 2,
				"BookTrapping4", 1,
				"BookTrapping5", 0.5,
				"ComicBook", 8,
				"ComicBook", 8,
				"CookingMag1", 0.5,
				"CookingMag2", 0.5,
				"ElectronicsMag1", 0.5,
				"ElectronicsMag2", 0.5,
				"ElectronicsMag3", 0.5,
				"ElectronicsMag4", 0.5,
				"ElectronicsMag5", 0.5,
				"EngineerMagazine1", 0.5,
				"EngineerMagazine2", 0.5,
				"FarmingMag1", 0.5,
				"FarmingMag1", 1,
				"FishingMag1", 0.5,
				"FishingMag2", 0.5,
				"HerbalistMag", 0.5,
				"HottieZ", 0.1,
				"HuntingMag1", 0.5,
				"HuntingMag2", 0.5,
				"HuntingMag3", 0.5,
				"Magazine", 50,
				"Magazine", 20,
				"Magazine", 20,
				"Magazine", 10,
				"Magazine", 10,
				"MechanicMag1", 0.5,
				"MechanicMag2", 0.5,
				"MechanicMag3", 0.5,
				"MetalworkMag1", 0.5,
				"MetalworkMag2", 0.5,
				"MetalworkMag3", 0.5,
				"MetalworkMag4", 0.5,
				"Newspaper", 50,
				"Newspaper", 20,
				"Newspaper", 20,
				"Newspaper", 10,
				"Newspaper", 10,
				"STR.Hat_BaseballCap_USPS", 1.5,
				"STR.Jacket_USPS", 1.5,
				"STR.Bag_Satchel_USPS", 1.5,
				"STR.Bag_DuffelBag_USPS", 0.5,
			}
		},

		GloveBox = VehicleDistributions.GloveBox;

		SeatRearLeft = VehicleDistributions.Seat;
		SeatRearRight = VehicleDistributions.Seat;
	}

	if getActivatedMods():contains("2612617201") then
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "AmmunitionMod.9mmAmmo_Ammunition_Case");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 0.1);
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "AmmunitionMod.45Ammo_Ammunition_Case");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 0.1);
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "AmmunitionMod.44Ammo_Ammunition_Case");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 0.1);
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "AmmunitionMod.38Ammo_Ammunition_Case");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 0.1);
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "AmmunitionMod.ShotgunShell_Ammunition_Case");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 0.1);
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "AmmunitionMod.223_Ammunition_Case");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 0.1);
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "AmmunitionMod.308_Ammunition_Case");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 0.1);
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "AmmunitionMod.556_Ammunition_Case");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 0.1);
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "AmmunitionMod.AmmunitionBox");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 0.1);
	end

	if getActivatedMods():contains("BB_Traps_SpikeStrips") then

		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, "Braven.SpikeStrip");
		table.insert(VehicleDistributions.Sheriff["TruckBed"].items, 8);

	end

	local MCSO = {};
	MCSO[1] = "CarLightsPolice" .. SkinTable.STFR_MCSO[1] -- vanilla police car
	MCSO[2] = "PickUpVanLightsPolice" .. SkinTable.STFR_MCSO[2] -- vanilla police truck

	local RWSD = {};
	RWSD[1] = "CarLightsPolice" .. SkinTable.STFR_RWSD[1] -- vanilla police car
	RWSD[2] = "PickUpVanLightsPolice" .. SkinTable.STFR_RWSD[2] -- vanilla police truck

	local JCSD = {};
	JCSD[1] = "CarLightsPolice" .. SkinTable.STFR_JCSD[1] -- vanilla police car
	JCSD[2] = "PickUpVanLightsPolice" .. SkinTable.STFR_JCSD[2] -- vanilla police truck

	local Fire = {};
	Fire[1] = "PickUpVanLightsFire" .. SkinTable.STFR_Fire[1] -- Rosewood
	Fire[2] = "PickUpVanLightsFire" .. SkinTable.STFR_Fire[2] -- Meade
	Fire[3] = "PickUpVanLightsFire" .. SkinTable.STFR_Fire[3] -- Louisville

	Fire[4] = "PickUpTruckLightsFire" .. SkinTable.STFR_Fire[4] -- Rosewood
	Fire[5] = "PickUpTruckLightsFire" .. SkinTable.STFR_Fire[5] -- Meade
	Fire[6] = "PickUpTruckLightsFire" .. SkinTable.STFR_Fire[6] -- Louisville

	local EMS = {};
	EMS[1] = "VanAmbulance" .. SkinTable.STFR_EMS[1] -- Meade
	EMS[2] = "VanAmbulance" .. SkinTable.STFR_EMS[2] -- Louisville
	EMS[3] = "VanAmbulance" .. SkinTable.STFR_EMS[3] -- Jefferson

	-- TODO: Fix the cargo van entry.
	local MAIL = {};
	MAIL[2] = "VanSpecial3"; -- CargoVan

	if getActivatedMods():contains("FRUsedCars") then

		MCSO[3] = "92crownvicPD" .. SkinTable.STFR_MCSO[3] -- 92 vic
		MCSO[4] = "87capricePD" .. SkinTable.STFR_MCSO[4] -- 87 caprice
		MCSO[5] = "85vicsheriff" .. SkinTable.STFR_MCSO[5] -- 85 vic
		MCSO[6] = "91blazerpd" .. SkinTable.STFR_MCSO[1] -- 91 blazer

		RWSD[3] = "92crownvicPD" .. SkinTable.STFR_RWSD[3] -- 92 vic
		RWSD[4] = "87capricePD" .. SkinTable.STFR_RWSD[4] -- 87 caprice
		RWSD[5] = "85vicsheriff" .. SkinTable.STFR_RWSD[5] -- 85 vic
		RWSD[6] = "91blazerpd" .. SkinTable.STFR_RWSD[6] -- 91 blazer

		JCSD[3] = "92crownvicPD" .. SkinTable.STFR_JCSD[3] -- 92 vic
		JCSD[4] = "87capricePD" .. SkinTable.STFR_JCSD[4] -- 87 caprice
		JCSD[5] = "85vicsheriff" .. SkinTable.STFR_JCSD[5] -- 85 vic
		JCSD[6] = "91blazerpd" .. SkinTable.STFR_JCSD[6] -- 91 blazer

		Fire[7] = "firepumper" .. SkinTable.STFR_Fire[7]; -- Rosewood
		Fire[8] = "firepumper" .. SkinTable.STFR_Fire[8]; -- Meade
		Fire[9] = "firepumper" .. SkinTable.STFR_Fire[9]; -- Louisville

		Fire[10] = "87c10fire" .. SkinTable.STFR_Fire[10]; -- Rosewood
		Fire[11] = "87c10fire" .. SkinTable.STFR_Fire[11]; -- Meade
		Fire[12] = "87c10fire" .. SkinTable.STFR_Fire[12]; -- Louisville

		EMS[4] = "80f350ambulance" .. SkinTable.STFR_EMS[4]; -- Meade
		EMS[5] = "80f350ambulance" .. SkinTable.STFR_EMS[5]; -- Louisville
		EMS[6] = "80f350ambulance" .. SkinTable.STFR_EMS[6]; -- Jefferson
	
		EMS[7] = "86econolineambulance" .. SkinTable.STFR_EMS[7]; -- Meade
		EMS[8] = "86econolineambulance" .. SkinTable.STFR_EMS[8]; -- Louisville
		EMS[9] = "86econolineambulance" .. SkinTable.STFR_EMS[9]; -- Jefferson

		distributionTable[EMS[4]] = { Normal = VehicleDistributions.AmbulanceMeade; }
		distributionTable[EMS[5]] = { Normal = VehicleDistributions.AmbulanceLouisville; }
		distributionTable[EMS[6]] = { Normal = VehicleDistributions.AmbulanceJefferson; }

		distributionTable[EMS[7]] = { Normal = VehicleDistributions.AmbulanceMeade; }
		distributionTable[EMS[8]] = { Normal = VehicleDistributions.AmbulanceLouisville; }
		distributionTable[EMS[9]] = { Normal = VehicleDistributions.AmbulanceJefferson; }

		distributionTable[Fire[7]] = { Normal = VehicleDistributions.FireTruckRosewood; }
		distributionTable[Fire[8]] = { Normal = VehicleDistributions.FireTruckMeade; }
		distributionTable[Fire[9]] = { Normal = VehicleDistributions.FireTruckLouisville; }

		distributionTable[Fire[10]] = { Normal = VehicleDistributions.FireTruckRosewood; }
		distributionTable[Fire[11]] = { Normal = VehicleDistributions.FireTruckMeade; }
		distributionTable[Fire[12]] = { Normal = VehicleDistributions.FireTruckLouisville; }

		distributionTable["86econoline_jefferson"] = { Normal = VehicleDistributions.PrisonBusJefferson; }
		distributionTable["86econoline_meade"] = { Normal = VehicleDistributions.PrisonBusMeade; }

		distributionTable["prisonbus_jefferson"] = { Normal = VehicleDistributions.PrisonBusJefferson; }
		distributionTable["prisonbus_meade"] = { Normal = VehicleDistributions.PrisonBusMeade; }

		distributionTable["91blazerranger"] = distributionTable["PickUpVanLights0"]

		distributionTable["92wrangler_USPS"] = { Normal = VehicleDistributions.USPS; }

	end

	distributionTable[MCSO[1]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[RWSD[1]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[JCSD[1]] = { Normal = VehicleDistributions.Sheriff; }

	distributionTable[MCSO[2]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[RWSD[2]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[JCSD[2]] = { Normal = VehicleDistributions.Sheriff; }

	distributionTable[MCSO[3]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[RWSD[3]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[JCSD[3]] = { Normal = VehicleDistributions.Sheriff; }

	distributionTable[MCSO[4]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[RWSD[4]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[JCSD[4]] = { Normal = VehicleDistributions.Sheriff; }

	distributionTable[MCSO[6]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[RWSD[6]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[JCSD[6]] = { Normal = VehicleDistributions.Sheriff; }

	distributionTable[MCSO[5]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[RWSD[5]] = { Normal = VehicleDistributions.Sheriff; }
	distributionTable[JCSD[5]] = { Normal = VehicleDistributions.Sheriff; }

	distributionTable[EMS[1]] = { Normal = VehicleDistributions.AmbulanceMeade; }
	distributionTable[EMS[2]] = { Normal = VehicleDistributions.AmbulanceLouisville; }
	distributionTable[EMS[3]] = { Normal = VehicleDistributions.AmbulanceJefferson; }

	distributionTable[Fire[1]] = { Normal = VehicleDistributions.FireTruckRosewood; }
	distributionTable[Fire[2]] = { Normal = VehicleDistributions.FireTruckMeade; }
	distributionTable[Fire[3]] = { Normal = VehicleDistributions.FireTruckLouisville; }

	distributionTable[Fire[4]] = { Normal = VehicleDistributions.FireTruckRosewood; }
	distributionTable[Fire[5]] = { Normal = VehicleDistributions.FireTruckMeade; }
	distributionTable[Fire[6]] = { Normal = VehicleDistributions.FireTruckLouisville; }

	distributionTable["Van_jeffersondoc"] = { Normal = VehicleDistributions.PrisonBusJefferson; }
	distributionTable["Van_meadedoc"] = { Normal = VehicleDistributions.PrisonBusMeade; }

	distributionTable[MAIL[2]] = { Normal = VehicleDistributions.USPS; }

	distributionTable["STFR_87gmcarmoredcar"] = { Normal = VehicleDistributions.BankTruck; }

end

Events.OnPreDistributionMerge.Add(STFRVehicleDistro);
