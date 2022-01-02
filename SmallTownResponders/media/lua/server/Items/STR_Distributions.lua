Distributions = Distributions or {};

local STRdistributionTable = {

    policestorage = {
        locker = {
            procedural = true,
            procList = {
                {name="PoliceStorageGuns", min=0, max=99, forceForTiles="furniture_storage_02_8;furniture_storage_02_9;furniture_storage_02_10;furniture_storage_02_11"},
                {name="PoliceStorageOutfit", min=0, max=99, forceForTiles="furniture_storage_02_4;furniture_storage_02_5;furniture_storage_02_6;furniture_storage_02_7"},
                {name="LockerMeadeSO", min=0, max=99, forceForTiles="furniture_storage_02_4;furniture_storage_02_5;furniture_storage_02_6;furniture_storage_02_7", forceForZones="MeadeSOL"},
                {name="LockerRiversidePD", min=0, max=99, forceForTiles="furniture_storage_02_4;furniture_storage_02_5;furniture_storage_02_6;furniture_storage_02_7", forceForZones="RiversidePDL"},
                {name="LockerJeffersonSD", min=0, max=99, forceForTiles="furniture_storage_02_4;furniture_storage_02_5;furniture_storage_02_6;furniture_storage_02_7", forceForZones="JeffersonSDL"},
            },
            dontSpawnAmmo = true,
        }
    },

    all = {
        metal_shelves = {
            procedural = true,
            procList = {
				{name="LockersLouisvilleEMS", min=0, max=99, forceForZones="LouisvilleEMSL"},
                {name="AllMetalShelves", min=0, max=99},
			}
		}
	},

    changeroom = {
        locker = {
            procedural = true,
            procList = {
                {name="FactoryLockers", min=0, max=99, forceForRooms="batteryfactory;brewery;dogfoodfactory;factory;fryshipping;metalshop;radiofactory;warehouse;wirefactory;whiskeybottling"},
                {name="FireDeptLockers", min=0, max=99, forceForRooms="firestorage"},
                {name="GymLockers", min=0, max=99, forceForRooms="fitness"},
                {name="HospitalLockers", min=0, max=99, forceForRooms="hospitalroom"},
                {name="HuntingLockers", min=0, max=99, forceForRooms="hunting"},
                {name="PoliceLockers", min=0, max=99, forceForRooms="policestorage"},
                {name="PrisonGuardLockers", min=0, max=99, forceForRooms="cells"},
                {name="SchoolLockers", min=0, max=99, forceForRooms="classroom"},
				{name="LockerRosewoodSD", min=0, max=99, forceForRooms="policestorage", forceForZones="RosewoodSDL"},
				{name="LockerMuldraughPD", min=0, max=99, forceForRooms="policestorage", forceForZones="MuldraughPDL"},
				{name="LockerWestPointPD", min=0, max=99, forceForRooms="policestorage", forceForZones="WestPointPDL"},
				{name="LockerLouisvillePD", min=0, max=99, forceForZones="LouisvillePDL"},
				{name="LockerJeffersonPD", min=0, max=99, forceForZones="JeffersonPDL"},
				{name="LockerJeffersonSD", min=0, max=99, forceForZones="JeffersonSDL"},
				{name="LockerKSP", min=0, max=99, forceForRooms="lockerroom", forceForZones="LouisvilleKSPL"},
				{name="LockerMeadeDOC", min=0, max=99, forceForRooms="policestorage", forceForZones="RosewoodPrisonL"},
                {name="FireDeptLockersRW", min=0, max=99, forceForZones="FireDeptRWL"},
                {name="FireDeptLockersLV", min=0, max=99, forceForZones="FireDeptLVL"},
            }
        }
    },

    garagestorage = {
        locker = {
            procedural = true,
            procList = {
                {name="FireDeptLockers", min=0, max=99, forceForRooms="firestorage"},
                {name="GarageFirearms", min=0, max=99, forceForTiles="furniture_storage_02_8;furniture_storage_02_9;furniture_storage_02_10;furniture_storage_02_11"},
                {name="GarageTools", min=0, max=99, weightChance=100},
                {name="FireDeptLockersRW", min=0, max=99, forceForZones="FireDeptRWL"},
                {name="FireDeptLockersLV", min=0, max=99, forceForZones="FireDeptLVL"},
            }
        }
    },

    dentiststorage = {
        isShop = true,
        metal_shelves = {
            procedural = true,
            procList = {
                {name="MedicalStorageDrugs", min=0, max=6, weightChance=100},
                {name="MedicalStorageTools", min=0, max=4, weightChance=80},
                {name="MedicalStorageOutfit", min=0, max=2, weightChance=40},
				{name="LockersMeadeEMS", min=0, max=99, forceForZones="MeadeEMSL"},
            }
        }
    },

    prisoncells = {
        wardrobe = {
            procedural = true,
            procList = {
                {name="PrisonCellRandom", min=0, max=99},
                {name="PrisonCellMeadeRandom", min=0, max=99, forceForZones="RosewoodPrisonInmateCellL"},
                {name="PrisonCellMeadeMaxRandom", min=0, max=99, forceForZones="RosewoodPrisonInmateMaxCellL"},
                {name="PrisonCellLouisvilleRandom", min=0, max=99, forceForZones="LouisvillePDPrisonCellL"},
            }
        }
    },

    laundry = {
        clothingdryer = {
            procedural = true,
            procList = {
                {name="GymLaundry", min=0, max=99, forceForRooms="fitness"},
                {name="Empty", min=0, max=99, weightChance=100},
                {name="LaundryLoad1", min=0, max=2, weightChance=60},
                {name="LaundryLoad2", min=0, max=2, weightChance=60},
                {name="LaundryLoad3", min=0, max=2, weightChance=20},
                {name="LaundryLoad4", min=0, max=2, weightChance=40},
                {name="LaundryLoad5", min=0, max=2, weightChance=20},
                {name="LaundryLoad6", min=0, max=12, weightChance=10},
                {name="LaundryLoad7", min=0, max=2, weightChance=40},
                {name="LaundryLoad8", min=0, max=2, weightChance=60},
				{name="LaundryInmateMeade", min=0, max=99, forceForZones="RosewoodPrisonInmateL"},
				{name="LaundryInmateLouisville", min=0, max=99, forceForZones="LouisvillePDPrisonL"},
            }
        },
        clothingdryerbasic = {
            procedural = true,
            procList = {
                {name="GymLaundry", min=0, max=99, forceForRooms="fitness"},
                {name="Empty", min=0, max=99, weightChance=100},
                {name="LaundryLoad1", min=0, max=2, weightChance=60},
                {name="LaundryLoad2", min=0, max=2, weightChance=60},
                {name="LaundryLoad3", min=0, max=2, weightChance=20},
                {name="LaundryLoad4", min=0, max=2, weightChance=40},
                {name="LaundryLoad5", min=0, max=2, weightChance=20},
                {name="LaundryLoad6", min=0, max=12, weightChance=10},
                {name="LaundryLoad7", min=0, max=2, weightChance=40},
                {name="LaundryLoad8", min=0, max=2, weightChance=60},
				{name="LaundryInmateMeade", min=0, max=99, forceForZones="RosewoodPrisonInmateL"},
				{name="LaundryInmateLouisville", min=0, max=99, forceForZones="LouisvillePDPrisonL"},
			}
        },
        clothingwasher = {
            procedural = true,
            procList = {
                {name="GymLaundry", min=0, max=99, forceForRooms="fitness"},
                {name="Empty", min=0, max=99, weightChance=100},
                {name="LaundryLoad1", min=0, max=2, weightChance=60},
                {name="LaundryLoad2", min=0, max=2, weightChance=60},
                {name="LaundryLoad3", min=0, max=2, weightChance=20},
                {name="LaundryLoad4", min=0, max=2, weightChance=40},
                {name="LaundryLoad5", min=0, max=2, weightChance=20},
                {name="LaundryLoad6", min=0, max=12, weightChance=10},
                {name="LaundryLoad7", min=0, max=2, weightChance=40},
                {name="LaundryLoad8", min=0, max=2, weightChance=60},
				{name="LaundryInmateMeade", min=0, max=99, forceForZones="RosewoodPrisonInmateL"},
				{name="LaundryInmateLouisville", min=0, max=99, forceForZones="LouisvillePDPrisonL"},
            }
        },
        counter = {
            procedural = true,
            procList = {
                {name="LaundryCleaning", min=0, max=99, weightChance=100},
                {name="LaundryLoad1", min=0, max=2, weightChance=60},
                {name="LaundryLoad2", min=0, max=2, weightChance=60},
                {name="LaundryLoad3", min=0, max=2, weightChance=20},
                {name="LaundryLoad4", min=0, max=2, weightChance=40},
                {name="LaundryLoad5", min=0, max=2, weightChance=20},
                {name="LaundryLoad6", min=0, max=12, weightChance=10},
                {name="LaundryCleaning", min=0, max=99, forceForZones="RosewoodPrisonInmateL"},
                {name="LaundryCleaning", min=0, max=99, forceForZones="LouisvillePDPrisonL"},
            }
        },
        locker = {
            procedural = true,
            procList = {
                {name="FactoryLockers", min=0, max=99, forceForRooms="batteryfactory"},
            }
        },
        metal_shelves = {
            procedural = true,
            procList = {
                {name="LaundryCleaning", min=0, max=99},
            }
        },
        shelves = {
            procedural = true,
            procList = {
                {name="LaundryCleaning", min=0, max=99},
            }
		}
	}
}

table.insert(Distributions, 2, STRdistributionTable);