require 'NPCs/ZombiesZoneDefinition'

local function STFRSpawns()

	local InmateMeadeRedOutfits = SandboxVars.STFR.InmateMeadeRedOutfits
	local InmateMeadeYellowOutfits = SandboxVars.STFR.InmateMeadeYellowOutfits
	local InmateMeadeOrangeOutfits = SandboxVars.STFR.InmateMeadeOrangeOutfits
	local InmateJeffersonOutfits = SandboxVars.STFR.InmateJeffersonOutfits
	local DOCMeadeOutfits = SandboxVars.STFR.DOCMeadeOutfits
	local DOCJeffersonOutfits = SandboxVars.STFR.DOCJeffersonOutfits
	local PoliceKSPOutfits = SandboxVars.STFR.PoliceKSPOutfits
	local SheriffJeffersonOutfits = SandboxVars.STFR.SheriffJeffersonOutfits
	local PoliceJeffersonOutfits = SandboxVars.STFR.PoliceJeffersonOutfits
	local PoliceLouisvilleOutfits = SandboxVars.STFR.PoliceLouisvilleOutfits
	local SheriffRosewoodOutfits = SandboxVars.STFR.SheriffRosewoodOutfits
	local PoliceRiversideOutfits = SandboxVars.STFR.PoliceRiversideOutfits
	local SheriffMeadeOutfits = SandboxVars.STFR.SheriffMeadeOutfits
	local PoliceWestPointOutfits = SandboxVars.STFR.PoliceWestPointOutfits
	local PoliceMuldraughOutfits = SandboxVars.STFR.PoliceMuldraughOutfits
	local EMSMeadeOutfits = SandboxVars.STFR.EMSMeadeOutfits
	local EMSJeffersonOutfits = SandboxVars.STFR.EMSJeffersonOutfits
	local EMSLouisvilleOutfits = SandboxVars.STFR.EMSLouisvilleOutfits
	local DressOutfits = SandboxVars.STFR.DressOutfits
	local TrafficOutfits = SandboxVars.STFR.TrafficOutfits
	local BagOutfits = SandboxVars.STFR.BagOutfits
	local RiotOutfits = SandboxVars.STFR.RiotOutfits
	local RangerOutfits = SandboxVars.STFR.RangerOutfits
	local FireFormalRosewoodOutfits = SandboxVars.STFR.FireFormalRosewoodOutfits
	local FiremanRosewoodOutfits = SandboxVars.STFR.FiremanRosewoodOutfits
	local FiremanFullRosewoodOutfits = SandboxVars.STFR.FiremanFullRosewoodOutfits
	local FireFormalLouisvilleOutfits = SandboxVars.STFR.FireFormalLouisvilleOutfits
	local FiremanLouisvilleOutfits = SandboxVars.STFR.FiremanLouisvilleOutfits
	local FiremanFullLouisvilleOutfits = SandboxVars.STFR.FiremanFullLouisvilleOutfits
	local USPSOutfits = SandboxVars.STFR.USPSOutfits
	local OtherOutfits = SandboxVars.STFR.OtherOutfits
	local SecurityOutfits = SandboxVars.STFR.SecurityOutfits

	ZombiesZoneDefinition = ZombiesZoneDefinition or {};

	ZombiesZoneDefinition.BankSecurity = {
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
		Trader = {
			name="Trader",
			chance=10,
			beardStyles="null:80",
		},
		SecurityBank = {
			name="SecurityBank",
			chance=SecurityOutfits,
		},
	}

	ZombiesZoneDefinition.MallGrandOhio = {
		SecurityMallGrandOhio = {
			name="SecurityMallGrandOhio",
			chance=SecurityOutfits,
		},
		Generic01 = {
			name="Generic01",
			chance=5,
		},
		Generic02 = {
			name="Generic02",
			chance=5,
		},
		Generic03 = {
			name="Generic03",
			chance=5,
		},
		Generic04 = {
			name="Generic04",
			chance=5,
		},
		Generic05 = {
			name="Generic05",
			chance=5,
		},
		Generic_Skirt = {
			name="Generic_Skirt",
			chance=5,
			gender="female",
		},
		DressLong = {
			name="DressLong",
			chance=5,
			gender="female",
		},
		DressNormal = {
			name="DressNormal",
			chance=5,
			gender="female",
		},
		DressShort = {
			name="DressShort",
			chance=5,
			gender="female",
		},
	}

	ZombiesZoneDefinition.MallValleyStation = {
		SecurityMallValleyStation = {
			name="SecurityMallValleyStation",
			chance=SecurityOutfits,
		},
		Generic01 = {
			name="Generic01",
			chance=5,
		},
		Generic02 = {
			name="Generic02",
			chance=5,
		},
		Generic03 = {
			name="Generic03",
			chance=5,
		},
		Generic04 = {
			name="Generic04",
			chance=5,
		},
		Generic05 = {
			name="Generic05",
			chance=5,
		},
		Generic_Skirt = {
			name="Generic_Skirt",
			chance=5,
			gender="female",
		},
		DressLong = {
			name="DressLong",
			chance=5,
			gender="female",
		},
		DressNormal = {
			name="DressNormal",
			chance=5,
			gender="female",
		},
		DressShort = {
			name="DressShort",
			chance=5,
			gender="female",
		},
	}

	ZombiesZoneDefinition.MallLouisville = {
		SecurityMallLouisville = {
			name="SecurityMallLouisville",
			chance=SecurityOutfits,
		},
		Generic01 = {
			name="Generic01",
			chance=5,
		},
		Generic02 = {
			name="Generic02",
			chance=5,
		},
		Generic03 = {
			name="Generic03",
			chance=5,
		},
		Generic04 = {
			name="Generic04",
			chance=5,
		},
		Generic05 = {
			name="Generic05",
			chance=5,
		},
		Generic_Skirt = {
			name="Generic_Skirt",
			chance=5,
			gender="female",
		},
		DressLong = {
			name="DressLong",
			chance=5,
			gender="female",
		},
		DressNormal = {
			name="DressNormal",
			chance=5,
			gender="female",
		},
		DressShort = {
			name="DressShort",
			chance=5,
			gender="female",
		},
	}

	ZombiesZoneDefinition.HotelHavisham = {
		SecurityHotelHavisham = {
			name="SecurityHotelHavisham",
			chance=SecurityOutfits,
		},
		Tourist = {
			name="Tourist",
			chance=10,
		},
		Golfer = {
			name="Golfer",
			chance=5,
		},
		Classy = {
			name="Classy",
			chance=10,
		},
	}

	ZombiesZoneDefinition.HotelFancy = {
		SecurityHotelFancy = {
			name="SecurityHotelFancy",
			chance=SecurityOutfits,
		},
		Tourist = {
			name="Tourist",
			chance=10,
		},
		Golfer = {
			name="Golfer",
			chance=5,
		},
		Classy = {
			name="Classy",
			chance=10,
		},
	}

	ZombiesZoneDefinition.SheriffRosewood = {
		SheriffRosewoodOfficer = {
			name="SheriffRosewoodOfficer",
			chance=SheriffRosewoodOutfits,
		},
		SheriffRosewoodSGT = {
			name="SheriffRosewoodSGT",
			chance=SheriffRosewoodOutfits,
		},
		SheriffRosewoodCPT = {
			name="SheriffRosewoodCPT",
			chance=SheriffRosewoodOutfits,
		},
		PoliceRosewoodOfficerRiot = {
			name="PoliceRosewoodOfficerRiot",
			chance=RiotOutfits,
		},
		SheriffRosewoodOfficerDress = {
			name="SheriffRosewoodOfficerDress",
			chance=DressOutfits,
		},
		SheriffRosewoodSGTDress = {
			name="SheriffRosewoodSGTDress",
			chance=DressOutfits,
		},
		SheriffRosewoodCPTDress = {
			name="SheriffRosewoodCPTDress",
			chance=DressOutfits,
		},
		SheriffRosewoodOfficerTraffic = {
			name="SheriffRosewoodOfficerTraffic",
			chance=TrafficOutfits,
		},
		SheriffRosewoodOfficerBag = {
			name="SheriffRosewoodOfficerBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.CourtHouseRosewood = {
		Judge = {
			name="Judge",
			chance=OtherOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
		Trader = {
			name="Trader",
			chance=5,
			beardStyles="null:80",
		},
		SheriffRosewoodOfficer = {
			name="SheriffRosewoodOfficer",
			chance=SheriffRosewoodOutfits,
		},
	}

	ZombiesZoneDefinition.PoliceRiverside = {
		PoliceRiversideOfficer = {
			name="PoliceRiversideOfficer",
			chance=PoliceRiversideOutfits,
		},
		PoliceRiversideSGT = {
			name="PoliceRiversideSGT",
			chance=PoliceRiversideOutfits,
		},
		PoliceRiversideCPT = {
			name="PoliceRiversideCPT",
			chance=PoliceRiversideOutfits,
		},
		PoliceRiversideOfficerRiot = {
			name="PoliceRiversideOfficerRiot",
			chance=RiotOutfits,
		},
		PoliceRiversideOfficerDress = {
			name="PoliceRiversideOfficerDress",
			chance=DressOutfits,
		},
		PoliceRiversideSGTDress = {
			name="PoliceRiversideSGTDress",
			chance=DressOutfits,
		},
		PoliceRiversideCPTDress = {
			name="PoliceRiversideCPTDress",
			chance=DressOutfits,
		},
		PoliceRiversideOfficerTraffic = {
			name="PoliceRiversideOfficerTraffic",
			chance=TrafficOutfits,
		},
		PoliceRiversideOfficerBag = {
			name="PoliceRiversideOfficerBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.PoliceMuldraugh = {
		PoliceMuldraughOfficer = {
			name="PoliceMuldraughOfficer",
			chance=PoliceMuldraughOutfits,
		},
		PoliceMuldraughSGT = {
			name="PoliceMuldraughSGT",
			chance=PoliceMuldraughOutfits,
		},
		PoliceMuldraughCPT = {
			name="PoliceMuldraughCPT",
			chance=PoliceMuldraughOutfits,
		},
		PoliceMuldraughOfficerRiot = {
			name="PoliceMuldraughOfficerRiot",
			chance=RiotOutfits,
		},
		PoliceMuldraughOfficerDress = {
			name="PoliceMuldraughOfficerDress",
			chance=DressOutfits,
		},
		PoliceMuldraughSGTDress = {
			name="PoliceMuldraughSGTDress",
			chance=DressOutfits,
		},
		PoliceMuldraughCPTDress = {
			name="PoliceMuldraughCPTDress",
			chance=DressOutfits,
		},
		PoliceMuldraughOfficerTraffic = {
			name="PoliceMuldraughOfficerTraffic",
			chance=TrafficOutfits,
		},
		PoliceMuldraughOfficerBag = {
			name="PoliceMuldraughOfficerBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.PoliceWestPoint = {
		PoliceWestPointOfficer = {
			name="PoliceWestPointOfficer",
			chance=PoliceWestPointOutfits,
		},
		PoliceWestPointSGT = {
			name="PoliceWestPointSGT",
			chance=PoliceWestPointOutfits,
		},
		PoliceWestPointCPT = {
			name="PoliceWestPointCPT",
			chance=PoliceWestPointOutfits,
		},
		PoliceWestPointOfficerRiot = {
			name="PoliceWestPointOfficerRiot",
			chance=RiotOutfits,
		},
		PoliceWestPointOfficerDress = {
			name="PoliceWestPointOfficerDress",
			chance=DressOutfits,
		},
		PoliceWestPointSGTDress = {
			name="PoliceWestPointSGTDress",
			chance=DressOutfits,
		},
		PoliceWestPointCPTDress = {
			name="PoliceWestPointCPTDress",
			chance=DressOutfits,
		},
		PoliceWestPointOfficerTraffic = {
			name="PoliceWestPointOfficerTraffic",
			chance=TrafficOutfits,
		},
		PoliceWestPointOfficerBag = {
			name="PoliceWestPointOfficerBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.SheriffJefferson = {
		SheriffJeffersonOfficer = {
			name="SheriffJeffersonOfficer",
			chance=SheriffJeffersonOutfits,
		},
		SheriffJeffersonSGT = {
			name="SheriffJeffersonSGT",
			chance=SheriffJeffersonOutfits,
		},
		SheriffJeffersonCPT = {
			name="SheriffJeffersonCPT",
			chance=SheriffJeffersonOutfits,
		},
		SheriffJeffersonOfficerRiot = {
			name="SheriffJeffersonOfficerRiot",
			chance=RiotOutfits,
		},
		SheriffJeffersonOfficerDress = {
			name="PoliceSheriffJeffersonDress",
			chance=DressOutfits,
		},
		SheriffJeffersonSGTDress = {
			name="SheriffJeffersonSGTDress",
			chance=DressOutfits,
		},
		SheriffJeffersonCPTDress = {
			name="SheriffJeffersonCPTDress",
			chance=DressOutfits,
		},
		SheriffJeffersonOfficerTraffic = {
			name="SheriffJeffersonOfficerTraffic",
			chance=TrafficOutfits,
		},
		SheriffJeffersonOfficerBag = {
			name="SheriffJeffersonOfficerBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.PoliceJefferson = {
		PoliceJeffersonOfficer = {
			name="PoliceJeffersonOfficer",
			chance=PoliceJeffersonOutfits,
		},
		PoliceJeffersonSGT = {
			name="PoliceJeffersonSGT",
			chance=PoliceJeffersonOutfits,
		},
		PoliceJeffersonCPT = {
			name="PoliceJeffersonCPT",
			chance=PoliceJeffersonOutfits,
		},
		PoliceJeffersonOfficerRiot = {
			name="PoliceJeffersonOfficerRiot",
			chance=RiotOutfits,
		},
		PoliceJeffersonOfficerDress = {
			name="PoliceJeffersonOfficerDress",
			chance=DressOutfits,
		},
		PoliceJeffersonSGTDress = {
			name="PoliceJeffersonSGTDress",
			chance=DressOutfits,
		},
		PoliceJeffersonCPTDress = {
			name="PoliceJeffersonCPTDress",
			chance=DressOutfits,
		},
		PoliceJeffersonOfficerTraffic = {
			name="PoliceJeffersonOfficerTraffic",
			chance=TrafficOutfits,
		},
		PoliceJeffersonOfficerBag = {
			name="PoliceJeffersonOfficerBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.PoliceLouisville = {
		PoliceLouisvilleOfficer = {
			name="PoliceLouisvilleOfficer",
			chance=PoliceLouisvilleOutfits,
		},
		PoliceLouisvilleSGT = {
			name="PoliceLouisvilleSGT",
			chance=PoliceLouisvilleOutfits,
		},
		PoliceLouisvilleCPT = {
			name="PoliceLouisvilleCPT",
			chance=PoliceLouisvilleOutfits,
		},
		PoliceLouisvilleOfficerRiot = {
			name="PoliceLouisvilleOfficerRiot",
			chance=RiotOutfits,
		},
		PoliceLouisvilleOfficerDress = {
			name="PoliceLouisvilleOfficerDress",
			chance=DressOutfits,
		},
		PoliceLouisvilleSGTDress = {
			name="PoliceLouisvilleSGTDress",
			chance=DressOutfits,
		},
		PoliceLouisvilleCPTDress = {
			name="PoliceLouisvilleCPTDress",
			chance=DressOutfits,
		},
		PoliceLouisvilleOfficerTraffic = {
			name="PoliceLouisvilleOfficerTraffic",
			chance=TrafficOutfits,
		},
		PoliceLouisvilleOfficerBag = {
			name="PoliceLouisvilleOfficerBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.CourtHouseLouisville = {
		Judge = {
			name="Judge",
			chance=OtherOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
		Trader = {
			name="Trader",
			chance=5,
			beardStyles="null:80",
		},
		PoliceLouisvilleOfficer = {
			name="PoliceLouisvilleOfficer",
			chance=PoliceLouisvilleOutfits,
		},
	}

	ZombiesZoneDefinition.SheriffMeade = {
		SheriffMeadeOfficer = {
			name="SheriffMeadeOfficer",
			chance=SheriffMeadeOutfits,
		},
		SheriffMeadeSGT = {
			name="SheriffMeadeSGT",
			chance=SheriffMeadeOutfits,
		},
		SheriffMeadeCPT = {
			name="SheriffMeadeCPT",
			chance=SheriffMeadeOutfits,
		},
		SheriffMeadeOfficerRiot = {
			name="SheriffMeadeOfficerRiot",
			chance=RiotOutfits,
		},
		SheriffMeadeOfficerDress = {
			name="SheriffMeadeOfficerDress",
			chance=DressOutfits,
		},
		SheriffMeadeSGTDress = {
			name="SheriffMeadeSGTDress",
			chance=DressOutfits,
		},
		SheriffMeadeCPTDress = {
			name="SheriffMeadeCPTDress",
			chance=DressOutfits,
		},
		SheriffMeadeOfficerTraffic = {
			name="SheriffMeadeOfficerTraffic",
			chance=TrafficOutfits,
		},
		SheriffMeadeOfficerBag = {
			name="SheriffMeadeOfficerBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.PoliceKSP = {
		PoliceKSPOfficer = {
			name="PoliceKSPOfficer",
			chance=PoliceKSPOutfits,
		},
		PoliceKSPSGT = {
			name="PoliceKSPSGT",
			chance=PoliceKSPOutfits,
		},
		PoliceKSPCPT = {
			name="PoliceKSPCPT",
			chance=PoliceKSPOutfits,
		},
		PoliceKSPOfficerRiot = {
			name="PoliceKSPOfficerRiot",
			chance=RiotOutfits,
		},
		PoliceKSPOfficerDress = {
			name="PoliceKSPOfficerDress",
			chance=DressOutfits,
		},
		PoliceKSPSGTDress = {
			name="PoliceKSPSGTDress",
			chance=DressOutfits,
		},
		PoliceKSPCPTDress = {
			name="PoliceKSPCPTDress",
			chance=DressOutfits,
		},
		PoliceKSPOfficerTraffic = {
			name="PoliceKSPOfficerTraffic",
			chance=TrafficOutfits,
		},
		PoliceKSPOfficerBag = {
			name="PoliceKSPOfficerBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.PoliceKSPJail = {
		-- Gonna force male zombies
		maleChance = 80,
		PrisonGuard = {
			name="PoliceKSPOfficer",
			chance=PoliceKSPOutfits,
			gender="male",
		},
		Security = {
			name="PoliceKSPOfficer",
			gender="male",
			chance=PoliceKSPOutfits,
			room="security",
		},
		Inmate = {
			name="InmateJefferson",
			chance=InmateJeffersonOutfits,
			gender="male",
			room="prisoncells;hall",
		},
	}

	ZombiesZoneDefinition.PrisonRosewoodInmate = {
		-- Gonna force male zombies in prison
		maleChance = 80,
		Doctor = {
			name="Doctor",
			chance=20,
			room="medicalstorage",
		},
		Nurse = {
			name="Nurse",
			chance=30,
			room="medicalstorage",
		},
		Priest = {
			name="Priest",
			mandatory="true",
			toSpawn=1,
			gender="male",
		},
		PrisonGuard = {
			name="DOCMeade",
			chance=DOCMeadeOutfits,
			gender="male",
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			gender="female",
			chance=30,
			room="office",
		},
		OfficeWorker = {
			name="OfficeWorker",
			gender="male",
			chance=30,
			room="office",
			beardStyles="null:80",
		},
		Security = {
			name="DOCMeade",
			gender="male",
			chance=DOCMeadeOutfits,
			room="security",
		},
		InmateMeadeOrange = {
			name="InmateMeadeOrange",
			chance=InmateMeadeOrangeOutfits,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateMeadeOrangeLowerZone = {
			name="InmateMeadeOrange",
			chance=InmateMeadeOrangeOutfits,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
		InmateMeadeYellow = {
			name="InmateMeadeYellow",
			chance=InmateMeadeYellowOutfits,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateMeadeYellowLowerZone = {
			name="InmateMeadeYellow",
			chance=InmateMeadeYellowOutfits,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
		Naked = {
			name="Naked",
			chance=50,
			gender="male",
			room="bathroom",
		},
		Cook_Generic = {
			name="Cook_Generic",
			chance=30,
			gender="male",
			room="kitchen",
		},
	}

	ZombiesZoneDefinition.PrisonRosewoodInmateSupermax = {
		-- Gonna force male zombies in prison
		maleChance = 80,
		Priest = {
			name="Priest",
			mandatory="true",
			toSpawn=1,
			gender="male",
		},
		PrisonGuard = {
			name="DOCMeade",
			chance=DOCMeadeOutfits,
			gender="male",
		},
		Security = {
			name="DOCMeade",
			gender="male",
			chance=DOCMeadeOutfits,
			room="office",
		},
		InmateMeadeRed = {
			name="InmateMeadeRed",
			chance=InmateMeadeRedOutfits,
			gender="male",
			room="prisoncells;hall",
		},
	}

	ZombiesZoneDefinition.PrisonJeffersonInmate = {
		-- Gonna force male zombies in prison
		maleChance = 80,
		Priest = {
			name="Priest",
			mandatory="true",
			toSpawn=1,
			gender="male",
		},
		PrisonGuard = {
			name="DOCJefferson",
			chance=DOCJeffersonOutfits,
			gender="male",
		},
		Security = {
			name="DOCJefferson",
			gender="male",
			chance=DOCJeffersonOutfits,
			room="security",
		},
		Inmate = {
			name="InmateJefferson",
			chance=InmateJeffersonOutfits,
			gender="male",
			room="prisoncells;hall;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateLowerZone = {
			name="InmateJefferson",
			chance=InmateJeffersonOutfits,
			gender="male",
			room="bathroom",
		},
		Naked = {
			name="Naked",
			chance=50,
			gender="male",
			room="bathroom",
		},
	}

	ZombiesZoneDefinition.PoliceJeffersonJail = {
		-- Gonna force male zombies
		maleChance = 80,
		PrisonGuard = {
			name="PoliceJeffersonOfficer",
			chance=PoliceJeffersonOutfits,
			gender="male",
		},
		Inmate = {
			name="InmateJefferson",
			chance=InmateJeffersonOutfits,
			gender="male",
			room="prisoncells",
		},
	}

	ZombiesZoneDefinition.SheriffJeffersonJail = {
		-- Gonna force male zombies
		maleChance = 80,
		PrisonGuard = {
			name="SheriffJeffersonOfficer",
			chance=SheriffJeffersonOutfits,
			gender="male",
		},
		Inmate = {
			name="InmateJefferson",
			chance=InmateJeffersonOutfits,
			gender="male",
			room="cell",
		},
	}

	ZombiesZoneDefinition.RangerMeade = {
		FederalRanger = {
			name="FederalRanger",
			chance=RangerOutfits,
		},
		FederalRangerBag = {
			name="FederalRangerBag",
			chance=BagOutfits,
		},
		FederalRangerDress = {
			name="FederalRangerDress",
			chance=DressOutfits,
		},
		StateParkRanger = {
			name="StateParkRanger",
			chance=RangerOutfits,
		},
		StateParkRangerBag = {
			name="StateParkRangerBag",
			chance=BagOutfits,
		},
		StateParkRangerDress = {
			name="StateParkRangerDress",
			chance=DressOutfits,
		},
		ConservationRanger = {
			name="ConservationRanger",
			chance=RangerOutfits,
		},
		ConservationRangerBag = {
			name="ConservationRangerBag",
			chance=BagOutfits,
		},
		ConservationRangerDress = {
			name="ConservationRangerDress",
			chance=DressOutfits,
		},
	}

	ZombiesZoneDefinition.EMSMeade = {
		EMSMeade = {
			name="EMSMeade",
			chance=EMSMeadeOutfits,
		},
		EMSMeadeDress = {
			name="EMSMeadeDress",
			chance=DressOutfits,
		},
		Doctor = {
			name="Doctor",
			chance=3,
		},
		Nurse = {
			name="Nurse",
			chance=5,
		},
	}

	ZombiesZoneDefinition.EMSLouisville = {
		EMSLouisville = {
			name="EMSLouisville",
			chance=EMSLouisvilleOutfits,
		},
		EMSLouisvilleDress = {
			name="EMSLouisvilleDress",
			chance=DressOutfits,
		},
		Doctor = {
			name="Doctor",
			chance=3,
		},
		Nurse = {
			name="Nurse",
			chance=5,
		},
	}

	ZombiesZoneDefinition.EMSJefferson = {
		EMSJefferson = {
			name="EMSJefferson",
			chance=EMSJeffersonOutfits,
		},
		EMSJeffersonDress = {
			name="EMSJeffersonDress",
			chance=DressOutfits,
		},
		Doctor = {
			name="Doctor",
			chance=3,
		},
		Nurse = {
			name="Nurse",
			chance=5,
		},
	}

	ZombiesZoneDefinition.FireRosewood = {
		FiremanRosewoodFormal = {
			name="FiremanRosewoodFormal",
			chance=FireFormalRosewoodOutfits,
		},
		FiremanRosewoodFormalSupervisor = {
			name="FiremanRosewoodFormalSupervisor",
			chance=FireFormalRosewoodOutfits,
		},
		FiremanRosewoodBlack = {
			name="FiremanRosewoodBlack",
			chance=FiremanRosewoodOutfits,
		},
		FiremanFullSuitRosewoodBlack = {
			name="FiremanFullSuitRosewoodBlack",
			chance=FiremanFullRosewoodOutfits,
		},
		FiremanRosewoodKhaki = {
			name="FiremanRosewoodKhaki",
			chance=FiremanRosewoodOutfits,
		},
		FiremanFullSuitRosewoodKhaki = {
			name="FiremanFullSuitRosewoodKhaki",
			chance=FiremanFullRosewoodOutfits,
		},
	}

	ZombiesZoneDefinition.FireLouisville = {
		FiremanLouisvilleFormal = {
			name="FiremanLouisvilleFormal",
			chance=FireFormalLouisvilleOutfits,
		},
		FiremanLouisvilleFormalSupervisor = {
			name="FiremanLouisvilleFormalSupervisor",
			chance=FireFormalLouisvilleOutfits,
		},
		FiremanLouisvilleStationSupervisor = {
			name="FiremanLouisvilleStationSupervisor",
			chance=FireFormalLouisvilleOutfits,
		},
		FiremanLouisvilleDressSupervisor = {
			name="FiremanLouisvilleDressSupervisor",
			chance=DressOutfits,
		},
		FiremanLouisvilleBlack = {
			name="FiremanLouisvilleBlack",
			chance=FiremanLouisvilleOutfits,
		},
		FiremanFullSuitLouisvilleBlack = {
			name="FiremanFullSuitLouisvilleBlack",
			chance=FiremanFullLouisvilleOutfits,
		},
		FiremanLouisvilleKhaki = {
			name="FiremanLouisvilleKhaki",
			chance=FiremanLouisvilleOutfits,
		},
		FiremanFullSuitLouisvilleKhaki = {
			name="FiremanFullSuitLouisvilleKhaki",
			chance=FiremanFullLouisvilleOutfits,
		},
	}

	ZombiesZoneDefinition.USPS = {
		USPSMail = {
			name="USPSMail",
			chance=USPSOutfits,
		},
		USPSMailBag = {
			name="USPSMailBag",
			chance=BagOutfits,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=10,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=10,
			gender="male",
			beardStyles="null:80",
		},
	}

end

Events.OnInitGlobalModData.Add(STFRSpawns)
