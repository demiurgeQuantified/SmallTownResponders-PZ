require 'Items/Distributions'
require 'Items/ProceduralDistributions'

Distributions = Distributions or {};

if getActivatedMods():contains("PertsPartyTiles") then
	require 'items/PertsRoomDef'
    SuburbsDistributions.office = {
        crate = {
            procedural = true,
            procList = {
                {name="CrateOfficeSupplies", min=0, max=99},
            }
        },
        counter = {
            procedural = true,
            procList = {
                {name="OfficeCounter", min=0, max=99},
            }
        },
        desk = {
            procedural = true,
            procList = {
                {name="OfficeDesk", min=0, max=99, weightChance=100},
                {name="PoliceDesk", min=0, max=99, forceForRooms="policestorage"},
            }
        },
        freezer = {
            rolls = 1,
            items = {
                
            }
        },
        fridge = {
            procedural = true,
            procList = {
                {name="OfficeFridge", min=0, max=99},
            }
        },
        metal_shelves = {
            procedural= true,
            procList = {
                {name="OfficeShelfSupplies", min=0, max=99},
            }
        },
        PaperTray =
        {
            rolls = 20,
            items = {
                "Base.CrazedRamblings", 100,
				"Base.CrazedRamblings2", 75,
				"Base.CrazedRamblings3", 50,
				"Base.CrazedRamblings4", 75,
            }
        },
        shelves = {
            procedural= true,
            procList = {
                {name="MedicalOfficeBooks", min=0, max=99, weightChance=100, forceForRooms="hospitalroom"},
                {name="ShelfGeneric", min=0, max=99},
            }
        },
    }

end

local function STFRDistributions()

	local STFRdistributionTable = {

		all = {
			metal_shelves = {
				procedural = true,
				procList = {
					{name="LockerEMSLouisville", min=0, max=99, forceForZones="EMSLouisvilleLoot"},
					{name="AllMetalShelves", min=0, max=99},
				}
			},
			crate = {
				procedural = true,
				procList = {
					{name="LockerMallValleyStation", min=0, max=99, forceForZones="MallValleyStationLoot"},
					{name="AllCrate", min=0, max=99},
				}
			}
		},

		firestorage = {
			locker = {
				procedural = true,
				procList = {
					{name="LockerFireLouisville", min=0, max=99, forceForZones="FireLouisvilleLoot"},
				}
			}
		}
	}
	table.insert(Distributions, 2, STFRdistributionTable)

	-- Inmates
	local PrisonCellInmateMeade = {name="PrisonCellInmateMeade", min=0, max=99, forceForZones="PrisonRosewoodInmateLoot"}
	table.insert(SuburbsDistributions.prisoncells.wardrobe.procList, PrisonCellInmateMeade)

	local PrisonCellInmateMeadeSupermax = {name="PrisonCellInmateMeadeSupermax", min=0, max=99, forceForZones="PrisonRosewoodInmateSupermaxLoot"}
	table.insert(SuburbsDistributions.prisoncells.wardrobe.procList, PrisonCellInmateMeadeSupermax)

	local PrisonCellInmateJefferson = {name="PrisonCellInmateJefferson", min=0, max=99, forceForZones="PrisonJeffersonInmateLoot"}
	table.insert(SuburbsDistributions.prisoncells.wardrobe.procList, PrisonCellInmateJefferson)

	local LaundryInmateMeade = {name="LaundryInmateMeade", min=0, max=99, forceForZones="PrisonRosewoodInmateLoot"}
	table.insert(SuburbsDistributions.laundry.clothingdryer.procList, prisoncells_MeadeLaundry)
	table.insert(SuburbsDistributions.laundry.clothingdryerbasic.procList, prisoncells_MeadeLaundry)
	table.insert(SuburbsDistributions.laundry.clothingwasher.procList, prisoncells_MeadeLaundry)

	local LaundryInmateJefferson = {name="LaundryInmateJefferson", min=0, max=99, forceForZones="PrisonJeffersonInmateLoot"}
	table.insert(SuburbsDistributions.laundry.clothingdryer.procList, LaundryInmateJefferson)
	table.insert(SuburbsDistributions.laundry.clothingdryerbasic.procList, LaundryInmateJefferson)
	table.insert(SuburbsDistributions.laundry.clothingwasher.procList, LaundryInmateJefferson)

	local LaundryCleaningMeade = {name="LaundryCleaning", min=0, max=99, forceForZones="PrisonRosewoodInmateLoot"}
	table.insert(SuburbsDistributions.laundry.counter.procList, LaundryCleaningMeade)

	local LaundryCleaningJefferson = {name="LaundryCleaning", min=0, max=99, forceForZones="PrisonJeffersonInmateLoot"}
	table.insert(SuburbsDistributions.laundry.counter.procList, LaundryCleaningJefferson)

	-- DOC
	local LockerDOCMeade = {name="LockerDOCMeade", min=0, max=99, forceForRooms="policestorage", forceForZones="PrisonRosewoodLoot"}
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerDOCMeade)

	-- EMS
	local LockerEMSJefferson = {name="LockerEMSJefferson", min=0, max=99, forceForZones="EMSJeffersonLoot"}
	table.insert(SuburbsDistributions.janitor.metal_shelves.procList, LockerEMSJefferson)
	table.insert(SuburbsDistributions.janitor.counter.procList, LockerEMSJefferson)

	local LockerEMSLouisville = {name="LockerEMSLouisville", min=0, max=99, forceForZones="EMSLouisvilleLoot"}
	table.insert(SuburbsDistributions.janitor.counter.procList, LockerEMSLouisville)

	local LockerEMSMeade = {name="LockerEMSMeade", min=0, max=99, forceForZones="EMSMeadeLoot"}
	table.insert(SuburbsDistributions.dentiststorage.metal_shelves.procList, LockerEMSMeade)

	-- Fire
	local LockerFireRosewood = {name="LockerFireRosewood", min=0, max=99, forceForZones="FireRosewoodLoot"}
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerFireRosewood)
	table.insert(SuburbsDistributions.garagestorage.locker.procList, LockerFireRosewood)

	local LockerFireLouisville = {name="LockerFireLouisville", min=0, max=99, forceForZones="FireLouisvilleLoot"}
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerFireLouisville)
	table.insert(SuburbsDistributions.garagestorage.locker.procList, LockerFireLouisville)

	-- USPS
	local LockerUSPS = {name="LockerUSPS", min=0, max=99, forceForZones="USPSLoot"}
	table.insert(SuburbsDistributions.all.locker.procList, LockerUSPS)
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerUSPS)
	table.insert(SuburbsDistributions.officestorage.metal_shelves.procList, LockerUSPS)

	-- Security
	local LockerMallGrandOhio = {name="LockerMallGrandOhio", min=0, max=99, forceForZones="MallGrandOhioLoot"}
	table.insert(SuburbsDistributions.office.metal_shelves.procList, LockerMallGrandOhio)

	-- Police
	local LockerPoliceRiverside = {name="LockerPoliceRiverside", min=0, max=99, forceForTiles="furniture_storage_02_4;furniture_storage_02_5;furniture_storage_02_6;furniture_storage_02_7", forceForZones="PoliceRiversideLoot"}
	table.insert(SuburbsDistributions.policestorage.locker.procList, LockerPoliceRiverside)

	local LockerPoliceMuldraugh = {name="LockerPoliceMuldraugh", min=0, max=99, forceForRooms="policestorage", forceForZones="PoliceMuldraughLoot"}
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerPoliceMuldraugh)

	local LockerPoliceWestPoint = {name="LockerPoliceWestPoint", min=0, max=99, forceForRooms="policestorage", forceForZones="PoliceWestPointLoot"}
	local LockerPoliceWestPointSWAT = {name="LockerPoliceWestPointSWAT", min=0, max=99, forceForRooms="policestorage", forceForZones="PoliceWestPointSWATLoot"}
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerPoliceWestPoint)
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerPoliceWestPointSWAT)

	local LockerPoliceLouisville = {name="LockerPoliceLouisville", min=0, max=99, forceForZones="PoliceLouisvilleLoot"}
	local LockerPoliceLouisvilleSWAT = {name="LockerPoliceLouisvilleSWAT", min=0, max=99, forceForZones="PoliceLouisvilleSWATLoot"}
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerPoliceLouisville)
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerPoliceLouisvilleSWAT)

	local LockerPoliceJefferson = {name="LockerPoliceJefferson", min=0, max=99, forceForZones="PoliceJeffersonLoot"}
	local LockerPoliceJeffersonSWAT = {name="LockerPoliceJeffersonSWAT", min=0, max=99, forceForZones="PoliceJeffersonSWATLoot"}
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerPoliceJefferson)
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerPoliceJeffersonSWAT)

	local LockerPoliceKSP = {name="LockerPoliceKSP", min=0, max=99, forceForRooms="lockerroom", forceForZones="PoliceKSPLoot"}
	local LockerPoliceKSPSWAT = {name="LockerPoliceKSPSWAT", min=0, max=99, forceForRooms="lockerroom", forceForZones="PoliceKSPSWATLoot"}
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerPoliceKSP)
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerPoliceKSPSWAT)

	-- Sheriff
	local LockerSheriffMeade = {name="LockerSheriffMeade", min=0, max=99, forceForTiles="furniture_storage_02_4;furniture_storage_02_5;furniture_storage_02_6;furniture_storage_02_7", forceForZones="SheriffMeadeLoot"}
	local LockerSheriffMeadeSWAT = {name="LockerSheriffMeadeSWAT", min=0, max=99, forceForTiles="furniture_storage_02_4;furniture_storage_02_5;furniture_storage_02_6;furniture_storage_02_7", forceForZones="SheriffMeadeSWATLoot"}
	table.insert(SuburbsDistributions.policestorage.locker.procList, LockerSheriffMeade)
	table.insert(SuburbsDistributions.policestorage.locker.procList, LockerSheriffMeadeSWAT)

	local LockerSheriffJefferson = {name="LockerSheriffJefferson", min=0, max=99, forceForTiles="furniture_storage_02_4;furniture_storage_02_5;furniture_storage_02_6;furniture_storage_02_7", forceForZones="SheriffJeffersonLoot"}
	local LockerSheriffJeffersonSWAT = {name="LockerSheriffJeffersonSWAT", min=0, max=99, forceForTiles="furniture_storage_02_4;furniture_storage_02_5;furniture_storage_02_6;furniture_storage_02_7", forceForZones="SheriffJeffersonSWATLoot"}
	table.insert(SuburbsDistributions.policestorage.locker.procList, LockerSheriffJefferson)
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerSheriffJefferson)
	table.insert(SuburbsDistributions.policestorage.locker.procList, LockerSheriffJeffersonSWAT)
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerSheriffJeffersonSWAT)

	local LockerSheriffRosewood = {name="LockerSheriffRosewood", min=0, max=99, forceForRooms="policestorage", forceForZones="SheriffRosewoodLoot"}
	local LockerSheriffRosewoodSWAT = {name="LockerSheriffRosewoodSWAT", min=0, max=99, forceForRooms="policestorage", forceForZones="SheriffRosewoodSWATLoot"}
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerSheriffRosewood)
	table.insert(SuburbsDistributions.changeroom.locker.procList, LockerSheriffRosewoodSWAT)

end
Events.OnPreDistributionMerge.Add(STFRDistributions)

local STFR_DuffeldistributionTable = {

	Bag_Satchel_USPS = {
		rolls = 2,
		items = {
			"MagazineCrossword1", 8,
			"MagazineCrossword2", 8,
			"MagazineCrossword3", 8,
			"MagazineWordsearch1", 8,
			"MagazineWordsearch2", 8,
			"MagazineWordsearch3", 8,
			"Newspaper", 20,
			"Newspaper", 10,
			"Newspaper", 10,
			"Magazine", 10,
			"Magazine", 10,
			"ComicBook", 8,
			"ComicBook", 8,
			"HottieZ", 0.1,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_USPS = {
		rolls = 2,
		items = {
			"MagazineCrossword1", 8,
			"MagazineCrossword2", 8,
			"MagazineCrossword3", 8,
			"MagazineWordsearch1", 8,
			"MagazineWordsearch2", 8,
			"MagazineWordsearch3", 8,
			"Newspaper", 20,
			"Newspaper", 10,
			"Newspaper", 10,
			"Magazine", 10,
			"Magazine", 10,
			"ComicBook", 8,
			"ComicBook", 8,
			"HottieZ", 0.1,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_Fire_Black = {
		rolls = 2,
		items = {
			"Axe", 10,
			"Crowbar", 4,
			"Hammer", 8,
			"HandAxe", 1,
			"Rope", 8,
			"Screwdriver", 10,
			"Wrench", 8,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_Fire_Khaki = {
		rolls = 2,
		items = {
			"Axe", 10,
			"Crowbar", 4,
			"Hammer", 8,
			"HandAxe", 1,
			"Rope", 8,
			"Screwdriver", 10,
			"Wrench", 8,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_Ranger = {
		rolls = 2,
		items = {
			"FirstAidKit", 20,
			"Radio.WalkieTalkie4", 10,
			"DuctTape", 8,
			"Tarp", 10,
			"Tissue", 10,
			"ToiletPaper", 6,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_Sheriff_Rosewood = {
		rolls = 2,
		items = {
			"AmmoStraps", 6,
			"AmmoStraps", 6,
			"308Box", 10,
			"308Box", 10,
			"308Box", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"ShotgunShellsBox", 10,
			"ShotgunShellsBox", 10,
			"308Clip", 8,
			"308Clip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"AmmoStrap_Bullets", 4,
			"AmmoStrap_Shells", 4,
			"Sling", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_Sheriff_Meade = {
		rolls = 2,
		items = {
			"AmmoStraps", 6,
			"AmmoStraps", 6,
			"308Box", 10,
			"308Box", 10,
			"308Box", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"ShotgunShellsBox", 10,
			"ShotgunShellsBox", 10,
			"308Clip", 8,
			"308Clip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"AmmoStrap_Bullets", 4,
			"AmmoStrap_Shells", 4,
			"Sling", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_Police_KSP = {
		rolls = 2,
		items = {
			"AmmoStraps", 6,
			"AmmoStraps", 6,
			"308Box", 10,
			"308Box", 10,
			"308Box", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"ShotgunShellsBox", 10,
			"ShotgunShellsBox", 10,
			"308Clip", 8,
			"308Clip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"AmmoStrap_Bullets", 4,
			"AmmoStrap_Shells", 4,
			"Sling", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_Police_Black = {
		rolls = 2,
		items = {
			"AmmoStraps", 6,
			"AmmoStraps", 6,
			"308Box", 10,
			"308Box", 10,
			"308Box", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"ShotgunShellsBox", 10,
			"ShotgunShellsBox", 10,
			"308Clip", 8,
			"308Clip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"AmmoStrap_Bullets", 4,
			"AmmoStrap_Shells", 4,
			"Sling", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_Police_Navy = {
		rolls = 2,
		items = {
			"AmmoStraps", 6,
			"AmmoStraps", 6,
			"308Box", 10,
			"308Box", 10,
			"308Box", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"ShotgunShellsBox", 10,
			"ShotgunShellsBox", 10,
			"308Clip", 8,
			"308Clip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"AmmoStrap_Bullets", 4,
			"AmmoStrap_Shells", 4,
			"Sling", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_Police_Olive = {
		rolls = 2,
		items = {
			"AmmoStraps", 6,
			"AmmoStraps", 6,
			"308Box", 10,
			"308Box", 10,
			"308Box", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"Bullets9mmBox", 10,
			"ShotgunShellsBox", 10,
			"ShotgunShellsBox", 10,
			"308Clip", 8,
			"308Clip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"9mmClip", 8,
			"AmmoStrap_Bullets", 4,
			"AmmoStrap_Shells", 4,
			"Sling", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_EMS_Red = {
		rolls = 2,
		items = {
			"AlcoholWipes", 50,
			"AlcoholWipes", 20,
			"AlcoholWipes", 10,
			"Bandage", 50,
			"Bandage", 20,
			"Bandage", 10,
			"Bandaid", 50,
			"Bandaid", 20,
			"Bandaid", 10,
			"Coldpack", 10,
			"CottonBalls", 10,
			"Disinfectant", 10,
			"Gloves_Surgical", 2,
			"STFR.Gloves_Medical_Black", 2,
			"STFR.Gloves_Medical_Green", 2,
			"STFR.Gloves_Medical_Light_Blue", 2,
			"STFR.Gloves_Medical_Orange", 2,
			"STFR.Gloves_Medical_Purple", 2,
			"STFR.Gloves_Medical_Red", 2,
			"STFR.Gloves_Medical_Yellow", 2,
			"STFR.Gloves_Medical_White", 2,
			"Hat_SurgicalMask_Blue", 10,
			"Pills", 20,
			"Pills", 10,
			"PillsAntiDep", 10,
			"PillsSleepingTablets", 10,
			"Scalpel", 10,
			"Scissors", 10,
			"SutureNeedle", 50,
			"SutureNeedle", 20,
			"SutureNeedle", 10,
			"SutureNeedleHolder", 20,
			"Tweezers", 10,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_EMS_Blue = {
		rolls = 2,
		items = {
			"AlcoholWipes", 50,
			"AlcoholWipes", 20,
			"AlcoholWipes", 10,
			"Bandage", 50,
			"Bandage", 20,
			"Bandage", 10,
			"Bandaid", 50,
			"Bandaid", 20,
			"Bandaid", 10,
			"Coldpack", 10,
			"CottonBalls", 10,
			"Disinfectant", 10,
			"Gloves_Surgical", 2,
			"STFR.Gloves_Medical_Black", 2,
			"STFR.Gloves_Medical_Green", 2,
			"STFR.Gloves_Medical_Light_Blue", 2,
			"STFR.Gloves_Medical_Orange", 2,
			"STFR.Gloves_Medical_Purple", 2,
			"STFR.Gloves_Medical_Red", 2,
			"STFR.Gloves_Medical_Yellow", 2,
			"STFR.Gloves_Medical_White", 2,
			"Hat_SurgicalMask_Blue", 10,
			"Pills", 20,
			"Pills", 10,
			"PillsAntiDep", 10,
			"PillsSleepingTablets", 10,
			"Scalpel", 10,
			"Scissors", 10,
			"SutureNeedle", 50,
			"SutureNeedle", 20,
			"SutureNeedle", 10,
			"SutureNeedleHolder", 20,
			"Tweezers", 10,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},

	Bag_DuffelBag_EMS_Green = {
		rolls = 2,
		items = {
			"AlcoholWipes", 50,
			"AlcoholWipes", 20,
			"AlcoholWipes", 10,
			"Bandage", 50,
			"Bandage", 20,
			"Bandage", 10,
			"Bandaid", 50,
			"Bandaid", 20,
			"Bandaid", 10,
			"Coldpack", 10,
			"CottonBalls", 10,
			"Disinfectant", 10,
			"Gloves_Surgical", 2,
			"STFR.Gloves_Medical_Black", 2,
			"STFR.Gloves_Medical_Green", 2,
			"STFR.Gloves_Medical_Light_Blue", 2,
			"STFR.Gloves_Medical_Orange", 2,
			"STFR.Gloves_Medical_Purple", 2,
			"STFR.Gloves_Medical_Red", 2,
			"STFR.Gloves_Medical_Yellow", 2,
			"STFR.Gloves_Medical_White", 2,
			"Hat_SurgicalMask_Blue", 10,
			"Pills", 20,
			"Pills", 10,
			"PillsAntiDep", 10,
			"PillsSleepingTablets", 10,
			"Scalpel", 10,
			"Scissors", 10,
			"SutureNeedle", 50,
			"SutureNeedle", 20,
			"SutureNeedle", 10,
			"SutureNeedleHolder", 20,
			"Tweezers", 10,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	},
}

table.insert(Distributions, 2, STFR_DuffeldistributionTable)

local function STFRZombieDistributions()

	SuburbsDistributions.all.Outfit_PoliceKSPOfficer = SuburbsDistributions.all.Outfit_PoliceKSPOfficer or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPOfficer"].items, "STFR.Badge_Police_KSP_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPOfficer"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPOfficer"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPOfficer"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceKSPSGT = SuburbsDistributions.all.Outfit_PoliceKSPSGT or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPSGT"].items, "STFR.Badge_Police_KSP_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPSGT"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPSGT"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPSGT"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceKSPOfficerDress = SuburbsDistributions.all.Outfit_PoliceKSPOfficerDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPOfficerDress"].items, "STFR.Badge_Police_KSP_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPOfficerDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceKSPSGTDress = SuburbsDistributions.all.Outfit_PoliceKSPSGTDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPSGTDress"].items, "STFR.Badge_Police_KSP_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceKSPSGTDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceKSPOfficerRiot = SuburbsDistributions.all.Outfit_PoliceKSPOfficer
	SuburbsDistributions.all.Outfit_PoliceKSPOfficerTraffic = SuburbsDistributions.all.Outfit_PoliceKSPOfficer

	SuburbsDistributions.all.Outfit_PoliceKSPCPT = SuburbsDistributions.all.Outfit_PoliceKSPSGT
	SuburbsDistributions.all.Outfit_PoliceKSPCPTDress = SuburbsDistributions.all.Outfit_PoliceKSPSGT


	SuburbsDistributions.all.Outfit_SheriffMeadeOfficer = SuburbsDistributions.all.Outfit_SheriffMeadeOfficer or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffMeadeOfficer"].items, "STFR.Badge_Sheriff_Meade_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffMeadeOfficer"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffMeadeOfficer"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffMeadeOfficer"].items, 35)

	SuburbsDistributions.all.Outfit_SheriffMeadeOfficerDress = SuburbsDistributions.all.Outfit_SheriffMeadeOfficerDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffMeadeOfficerDress"].items, "STFR.Badge_Sheriff_Meade_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffMeadeOfficerDress"].items, 50)

	SuburbsDistributions.all.Outfit_SheriffMeadeOfficerRiot = SuburbsDistributions.all.Outfit_SheriffMeadeOfficer
	SuburbsDistributions.all.Outfit_SheriffMeadeOfficerTraffic = SuburbsDistributions.all.Outfit_SheriffMeadeOfficer

	SuburbsDistributions.all.Outfit_SheriffMeadeSGT = SuburbsDistributions.all.Outfit_SheriffMeadeOfficer
	SuburbsDistributions.all.Outfit_SheriffMeadeSGTDress = SuburbsDistributions.all.Outfit_SheriffMeadeOfficerDress

	SuburbsDistributions.all.Outfit_SheriffMeadeCPT = SuburbsDistributions.all.Outfit_SheriffMeadeOfficer
	SuburbsDistributions.all.Outfit_SheriffMeadeCPTDress = SuburbsDistributions.all.Outfit_SheriffMeadeOfficerDress


	SuburbsDistributions.all.Outfit_SheriffRosewoodOfficer = SuburbsDistributions.all.Outfit_SheriffRosewoodOfficer or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodOfficer"].items, "STFR.Badge_Sheriff_Rosewood_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodOfficer"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodOfficer"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodOfficer"].items, 35)

	SuburbsDistributions.all.Outfit_SheriffRosewoodSGT = SuburbsDistributions.all.Outfit_SheriffRosewoodSGT or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodSGT"].items, "STFR.Badge_Sheriff_Rosewood_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodSGT"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodSGT"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodSGT"].items, 35)

	SuburbsDistributions.all.Outfit_SheriffRosewoodOfficerDress = SuburbsDistributions.all.Outfit_SheriffRosewoodOfficerDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodOfficerDress"].items, "STFR.Badge_Sheriff_Rosewood_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodOfficerDress"].items, 50)

	SuburbsDistributions.all.Outfit_SheriffRosewoodSGTDress = SuburbsDistributions.all.Outfit_SheriffRosewoodSGTDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodSGTDress"].items, "STFR.Badge_Sheriff_Rosewood_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffRosewoodSGTDress"].items, 50)

	SuburbsDistributions.all.Outfit_SheriffRosewoodOfficerRiot = SuburbsDistributions.all.Outfit_SheriffRosewoodOfficer
	SuburbsDistributions.all.Outfit_SheriffRosewoodOfficerTraffic = SuburbsDistributions.all.Outfit_SheriffRosewoodOfficer

	SuburbsDistributions.all.Outfit_SheriffRosewoodCPT = SuburbsDistributions.all.Outfit_SheriffRosewoodSGT
	SuburbsDistributions.all.Outfit_SheriffRosewoodCPTDress = SuburbsDistributions.all.Outfit_SheriffRosewoodSGTDress


	SuburbsDistributions.all.Outfit_PoliceWestPointOfficer = SuburbsDistributions.all.Outfit_PoliceWestPointOfficer or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointOfficer"].items, "STFR.Badge_Police_WestPoint_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointOfficer"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointOfficer"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointOfficer"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceWestPointSGT = SuburbsDistributions.all.Outfit_PoliceWestPointSGT or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointSGT"].items, "STFR.Badge_Police_WestPoint_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointSGT"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointSGT"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointSGT"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceWestPointOfficerDress = SuburbsDistributions.all.Outfit_PoliceWestPointOfficerDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointOfficerDress"].items, "STFR.Badge_Police_WestPoint_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointOfficerDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceWestPointSGTDress = SuburbsDistributions.all.Outfit_PoliceWestPointSGTDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointSGTDress"].items, "STFR.Badge_Police_WestPoint_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceWestPointSGTDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceWestPointOfficerRiot = SuburbsDistributions.all.Outfit_PoliceWestPointOfficer
	SuburbsDistributions.all.Outfit_PoliceWestPointOfficerTraffic = SuburbsDistributions.all.Outfit_PoliceWestPointOfficer

	SuburbsDistributions.all.Outfit_PoliceWestPointCPT = SuburbsDistributions.all.Outfit_PoliceWestPointSGT
	SuburbsDistributions.all.Outfit_PoliceWestPointCPTDress = SuburbsDistributions.all.Outfit_PoliceWestPointSGTDress


	SuburbsDistributions.all.Outfit_PoliceMuldraughOfficer = SuburbsDistributions.all.Outfit_PoliceMuldraughOfficer or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughOfficer"].items, "STFR.Badge_Police_Muldraugh_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughOfficer"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughOfficer"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughOfficer"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceMuldraughSGT = SuburbsDistributions.all.Outfit_PoliceMuldraughSGT or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughSGT"].items, "STFR.Badge_Police_Muldraugh_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughSGT"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughSGT"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughSGT"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceMuldraughOfficerDress = SuburbsDistributions.all.Outfit_PoliceMuldraughOfficerDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughOfficerDress"].items, "STFR.Badge_Police_Muldraugh_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughOfficerDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceMuldraughSGTDress = SuburbsDistributions.all.Outfit_PoliceMuldraughSGTDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughSGTDress"].items, "STFR.Badge_Police_Muldraugh_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceMuldraughSGTDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceMuldraughOfficerRiot = SuburbsDistributions.all.Outfit_PoliceMuldraughOfficer
	SuburbsDistributions.all.Outfit_PoliceMuldraughOfficerTraffic = SuburbsDistributions.all.Outfit_PoliceMuldraughOfficer

	SuburbsDistributions.all.Outfit_PoliceMuldraughCPT = SuburbsDistributions.all.Outfit_PoliceMuldraughSGT
	SuburbsDistributions.all.Outfit_PoliceMuldraughCPTDress = SuburbsDistributions.all.Outfit_PoliceMuldraughSGTDress


	SuburbsDistributions.all.Outfit_PoliceRiversideOfficer = SuburbsDistributions.all.Outfit_PoliceRiversideOfficer or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideOfficer"].items, "STFR.Badge_Police_Riverside_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideOfficer"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideOfficer"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideOfficer"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceRiversideSGT = SuburbsDistributions.all.Outfit_PoliceRiversideSGT or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideSGT"].items, "STFR.Badge_Police_Riverside_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideSGT"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideSGT"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideSGT"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceRiversideOfficerDress = SuburbsDistributions.all.Outfit_PoliceRiversideOfficerDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideOfficerDress"].items, "STFR.Badge_Police_Riverside_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideOfficerDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceRiversideSGTDress = SuburbsDistributions.all.Outfit_PoliceRiversideSGTDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideSGTDress"].items, "STFR.Badge_Police_Riverside_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceRiversideSGTDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceRiversideOfficerRiot = SuburbsDistributions.all.Outfit_PoliceRiversideOfficer
	SuburbsDistributions.all.Outfit_PoliceRiversideOfficerTraffic = SuburbsDistributions.all.Outfit_PoliceRiversideOfficer

	SuburbsDistributions.all.Outfit_PoliceRiversideCPT = SuburbsDistributions.all.Outfit_PoliceRiversideSGT
	SuburbsDistributions.all.Outfit_PoliceRiversideCPTDress = SuburbsDistributions.all.Outfit_PoliceRiversideSGTDress


	SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficer = SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficer or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleOfficer"].items, "STFR.Badge_Police_Louisville_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleOfficer"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleOfficer"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleOfficer"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceLouisvilleSGT = SuburbsDistributions.all.Outfit_PoliceLouisvilleSGT or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleSGT"].items, "STFR.Badge_Police_Louisville_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleSGT"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleSGT"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleSGT"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficerDress = SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficerDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleOfficerDress"].items, "STFR.Badge_Police_Louisville_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleOfficerDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceLouisvilleSGTDress = SuburbsDistributions.all.Outfit_PoliceLouisvilleSGTDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleSGTDress"].items, "STFR.Badge_Police_Louisville_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceLouisvilleSGTDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficerRiot = SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficer
	SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficerTraffic = SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficer

	SuburbsDistributions.all.Outfit_PoliceLouisvilleCPT = SuburbsDistributions.all.Outfit_PoliceLouisvilleSGT
	SuburbsDistributions.all.Outfit_PoliceLouisvilleCPTDress = SuburbsDistributions.all.Outfit_PoliceLouisvilleSGTDress


	SuburbsDistributions.all.Outfit_PoliceJeffersonOfficer = SuburbsDistributions.all.Outfit_PoliceJeffersonOfficer or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonOfficer"].items, "STFR.Badge_Police_Jefferson_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonOfficer"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonOfficer"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonOfficer"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceJeffersonSGT = SuburbsDistributions.all.Outfit_PoliceJeffersonSGT or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonSGT"].items, "STFR.Badge_Police_Jefferson_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonSGT"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonSGT"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonSGT"].items, 35)

	SuburbsDistributions.all.Outfit_PoliceJeffersonOfficerDress = SuburbsDistributions.all.Outfit_PoliceJeffersonOfficerDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonOfficerDress"].items, "STFR.Badge_Police_Jefferson_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonOfficerDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceJeffersonSGTDress = SuburbsDistributions.all.Outfit_PoliceJeffersonSGTDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonSGTDress"].items, "STFR.Badge_Police_Jefferson_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_PoliceJeffersonSGTDress"].items, 50)

	SuburbsDistributions.all.Outfit_PoliceJeffersonOfficerRiot = SuburbsDistributions.all.Outfit_PoliceJeffersonOfficer
	SuburbsDistributions.all.Outfit_PoliceJeffersonOfficerTraffic = SuburbsDistributions.all.Outfit_PoliceJeffersonOfficer

	SuburbsDistributions.all.Outfit_PoliceJeffersonCPT = SuburbsDistributions.all.Outfit_PoliceJeffersonSGT
	SuburbsDistributions.all.Outfit_PoliceJeffersonCPTDress = SuburbsDistributions.all.Outfit_PoliceJeffersonSGTDress


	SuburbsDistributions.all.Outfit_SheriffJeffersonOfficer = SuburbsDistributions.all.Outfit_SheriffJeffersonOfficer or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonOfficer"].items, "STFR.Badge_Sheriff_Jefferson_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonOfficer"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonOfficer"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonOfficer"].items, 35)

	SuburbsDistributions.all.Outfit_SheriffJeffersonSGT = SuburbsDistributions.all.Outfit_SheriffJeffersonSGT or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonSGT"].items, "STFR.Badge_Sheriff_Jefferson_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonSGT"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonSGT"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonSGT"].items, 35)

	SuburbsDistributions.all.Outfit_SheriffJeffersonOfficerDress = SuburbsDistributions.all.Outfit_SheriffJeffersonOfficerDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonOfficerDress"].items, "STFR.Badge_Sheriff_Jefferson_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonOfficerDress"].items, 50)

	SuburbsDistributions.all.Outfit_SheriffJeffersonSGTDress = SuburbsDistributions.all.Outfit_SheriffJeffersonSGTDress or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonSGTDress"].items, "STFR.Badge_Sheriff_Jefferson_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SheriffJeffersonSGTDress"].items, 50)

	SuburbsDistributions.all.Outfit_SheriffJeffersonOfficerRiot = SuburbsDistributions.all.Outfit_SheriffJeffersonOfficer
	SuburbsDistributions.all.Outfit_SheriffJeffersonOfficerTraffic = SuburbsDistributions.all.Outfit_SheriffJeffersonOfficer

	SuburbsDistributions.all.Outfit_SheriffJeffersonCPT = SuburbsDistributions.all.Outfit_SheriffJeffersonSGT
	SuburbsDistributions.all.Outfit_SheriffJeffersonCPTDress = SuburbsDistributions.all.Outfit_SheriffJeffersonSGTDress


	SuburbsDistributions.all.Outfit_FederalRanger = SuburbsDistributions.all.Outfit_FederalRanger or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_FederalRanger"].items, "STFR.Badge_Ranger_Federal_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_FederalRanger"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_FederalRanger"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_FederalRanger"].items, 35)

	SuburbsDistributions.all.Outfit_Conservation = SuburbsDistributions.all.Outfit_Conservation or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_Conservation"].items, "STFR.Badge_Ranger_Conservation_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_Conservation"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_Conservation"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_Conservation"].items, 35)

	SuburbsDistributions.all.Outfit_StateParkRanger = SuburbsDistributions.all.Outfit_StateParkRanger or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_StateParkRanger"].items, "STFR.Badge_Ranger_State_Park_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_StateParkRanger"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_StateParkRanger"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_StateParkRanger"].items, 35)

	SuburbsDistributions.all.Outfit_EMSLouisville = SuburbsDistributions.all.Outfit_EMSLouisville or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_EMSLouisville"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_EMSLouisville"].items, 35)

	SuburbsDistributions.all.Outfit_EMSMeade = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_EMSJefferson = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_DOCMeade = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_DOCJefferson = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_SecurityBank = SuburbsDistributions.all.Outfit_SecurityBank or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityBank"].items, "STFR.Badge_Security_Bank_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityBank"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityBank"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityBank"].items, 35)

	SuburbsDistributions.all.Outfit_SecurityMallGrandOhio = SuburbsDistributions.all.Outfit_SecurityMallGrandOhio or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallGrandOhio"].items, "STFR.Badge_Security_Mall_Grand_Ohio_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallGrandOhio"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallGrandOhio"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallGrandOhio"].items, 35)

	SuburbsDistributions.all.Outfit_SecurityMallValleyStation = SuburbsDistributions.all.Outfit_SecurityMallValleyStation or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallValleyStation"].items, "STFR.Badge_Security_Mall_Valley_Station_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallValleyStation"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallValleyStation"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallValleyStation"].items, 35)

	SuburbsDistributions.all.Outfit_SecurityMallLouisville = SuburbsDistributions.all.Outfit_SecurityMallLouisville or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallLouisville"].items, "STFR.Badge_Security_Mall_Louisville_Silver")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallLouisville"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallLouisville"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityMallLouisville"].items, 35)

	SuburbsDistributions.all.Outfit_SecurityHotelHavisham = SuburbsDistributions.all.Outfit_SecurityHotelHavisham or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityHotelHavisham"].items, "STFR.Badge_Security_Hotel_Havisham_Gold")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityHotelHavisham"].items, 50)
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityHotelHavisham"].items, "Base.HandTorch")
	table.insert(SuburbsDistributions["all"]["Outfit_SecurityHotelHavisham"].items, 35)

	SuburbsDistributions.all.Outfit_SecurityHotelFancy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_PoliceKSPOfficerSWATBlueLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_PoliceKSPOfficerSWATBlueHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_PoliceKSPOfficerSWATCamoLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_PoliceKSPOfficerSWATCamoHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_SheriffMeadeOfficerSWATTanLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_SheriffMeadeOfficerSWATTanHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_SheriffRosewoodOfficerSWATGreenLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_SheriffRosewoodOfficerSWATGreenHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_SheriffRosewoodOfficerSARGreenLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_SheriffRosewoodOfficerSARGreenHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_PoliceWestPointOfficerSWATNavyLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_PoliceWestPointOfficerSWATNavyHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_PoliceJeffersonOfficerSWATBlueLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_PoliceJeffersonOfficerSWATBlueHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_SheriffJeffersonOfficerSWATGreenLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_SheriffJeffersonOfficerSWATGreenHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficerSWATBlackLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficerSWATBlackHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

	SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficerSWATCamoLight = SuburbsDistributions.all.Outfit_EMSLouisville
	SuburbsDistributions.all.Outfit_PoliceLouisvilleOfficerSWATCamoHeavy = SuburbsDistributions.all.Outfit_EMSLouisville

--	SuburbsDistributions.all.Outfit_ = SuburbsDistributions.all.Outfit_EMSLouisville

end
Events.OnPostDistributionMerge.Add(STFRZombieDistributions)
 