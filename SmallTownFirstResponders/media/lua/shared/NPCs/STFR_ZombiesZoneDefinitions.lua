require 'NPCs/ZombiesZoneDefinition'

local function STFRSpawns()

	local STFRChances = {}

	STFRChances.InmateMeadeRedOutfits = SandboxVars.STFR.InmateMeadeRedOutfits
	STFRChances.InmateMeadeYellowOutfits = SandboxVars.STFR.InmateMeadeYellowOutfits
	STFRChances.InmateMeadeOrangeOutfits = SandboxVars.STFR.InmateMeadeOrangeOutfits
	STFRChances.InmateJeffersonOutfits = SandboxVars.STFR.InmateJeffersonOutfits
	STFRChances.DOCMeadeOutfits = SandboxVars.STFR.DOCMeadeOutfits
	STFRChances.DOCJeffersonOutfits = SandboxVars.STFR.DOCJeffersonOutfits
	STFRChances.PoliceKSPOutfits = SandboxVars.STFR.PoliceKSPOutfits
	STFRChances.SheriffJeffersonOutfits = SandboxVars.STFR.SheriffJeffersonOutfits
	STFRChances.PoliceJeffersonOutfits = SandboxVars.STFR.PoliceJeffersonOutfits
	STFRChances.PoliceLouisvilleOutfits = SandboxVars.STFR.PoliceLouisvilleOutfits
	STFRChances.SheriffRosewoodOutfits = SandboxVars.STFR.SheriffRosewoodOutfits
	STFRChances.PoliceRiversideOutfits = SandboxVars.STFR.PoliceRiversideOutfits
	STFRChances.SheriffMeadeOutfits = SandboxVars.STFR.SheriffMeadeOutfits
	STFRChances.PoliceWestPointOutfits = SandboxVars.STFR.PoliceWestPointOutfits
	STFRChances.PoliceMuldraughOutfits = SandboxVars.STFR.PoliceMuldraughOutfits
	STFRChances.EMSMeadeOutfits = SandboxVars.STFR.EMSMeadeOutfits
	STFRChances.EMSJeffersonOutfits = SandboxVars.STFR.EMSJeffersonOutfits
	STFRChances.EMSLouisvilleOutfits = SandboxVars.STFR.EMSLouisvilleOutfits
	STFRChances.DressOutfits = SandboxVars.STFR.DressOutfits
	STFRChances.DetectiveOutfits = SandboxVars.STFR.DetectiveOutfits
	STFRChances.TrafficOutfits = SandboxVars.STFR.TrafficOutfits
	STFRChances.RiotOutfits = SandboxVars.STFR.RiotOutfits
	STFRChances.SWATOutfits = SandboxVars.STFR.SWATOutfits
	STFRChances.RangerOutfits = SandboxVars.STFR.RangerOutfits
	STFRChances.FireFormalRosewoodOutfits = SandboxVars.STFR.FireFormalRosewoodOutfits
	STFRChances.FiremanRosewoodOutfits = SandboxVars.STFR.FiremanRosewoodOutfits
	STFRChances.FiremanFullRosewoodOutfits = SandboxVars.STFR.FiremanFullRosewoodOutfits
	STFRChances.FireFormalLouisvilleOutfits = SandboxVars.STFR.FireFormalLouisvilleOutfits
	STFRChances.FiremanLouisvilleOutfits = SandboxVars.STFR.FiremanLouisvilleOutfits
	STFRChances.FiremanFullLouisvilleOutfits = SandboxVars.STFR.FiremanFullLouisvilleOutfits
	STFRChances.USPSOutfits = SandboxVars.STFR.USPSOutfits
	STFRChances.OtherOutfits = SandboxVars.STFR.OtherOutfits
	STFRChances.SecurityOutfits = SandboxVars.STFR.SecurityOutfits

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
			chance=STFRChances.SecurityOutfits,
		},
	}

	ZombiesZoneDefinition.MallGrandOhio = {
		SecurityMallGrandOhio = {
			name="SecurityMallGrandOhio",
			chance=STFRChances.SecurityOutfits,
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
			chance=STFRChances.SecurityOutfits,
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
			chance=STFRChances.SecurityOutfits,
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
			chance=STFRChances.SecurityOutfits,
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
			chance=STFRChances.SecurityOutfits,
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
			chance=STFRChances.SheriffRosewoodOutfits,
		},
		SheriffRosewoodSGT = {
			name="SheriffRosewoodSGT",
			chance=STFRChances.SheriffRosewoodOutfits,
		},
		SheriffRosewoodCPT = {
			name="SheriffRosewoodCPT",
			chance=STFRChances.SheriffRosewoodOutfits,
		},
		SheriffRosewoodOfficerRiot = {
			name="SheriffRosewoodOfficerRiot",
			chance=STFRChances.RiotOutfits,
		},
		SheriffRosewoodOfficerDress = {
			name="SheriffRosewoodOfficerDress",
			chance=STFRChances.DressOutfits,
		},
		SheriffRosewoodSGTDress = {
			name="SheriffRosewoodSGTDress",
			chance=STFRChances.DressOutfits,
		},
		SheriffRosewoodCPTDress = {
			name="SheriffRosewoodCPTDress",
			chance=STFRChances.DressOutfits,
		},
		SheriffRosewoodOfficerTraffic = {
			name="SheriffRosewoodOfficerTraffic",
			chance=STFRChances.TrafficOutfits,
		},
		SheriffRosewoodOfficerSWATGreenLight = {
			name="SheriffRosewoodOfficerSWATGreenLight",
			chance=STFRChances.SWATOutfits,
		},
		SheriffRosewoodOfficerSWATGreenHeavy = {
			name="SheriffRosewoodOfficerSWATGreenHeavy",
			chance=STFRChances.SWATOutfits,
		},
		SheriffRosewoodOfficerSARGreenLight = {
			name="SheriffRosewoodOfficerSARGreenLight",
			chance=STFRChances.SWATOutfits,
		},
		SheriffRosewoodOfficerSARGreenHeavy = {
			name="SheriffRosewoodOfficerSARGreenHeavy",
			chance=STFRChances.SWATOutfits,
		},
		SheriffRosewoodDetectiveCasual = {
			name="SheriffRosewoodDetectiveCasual",
			chance=STFRChances.DetectiveOutfits,
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
			chance=STFRChances.OtherOutfits,
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
			chance=STFRChances.SheriffRosewoodOutfits,
		},
	}

	ZombiesZoneDefinition.PoliceRiverside = {
		PoliceRiversideOfficer = {
			name="PoliceRiversideOfficer",
			chance=STFRChances.PoliceRiversideOutfits,
		},
		PoliceRiversideSGT = {
			name="PoliceRiversideSGT",
			chance=STFRChances.PoliceRiversideOutfits,
		},
		PoliceRiversideCPT = {
			name="PoliceRiversideCPT",
			chance=STFRChances.PoliceRiversideOutfits,
		},
		PoliceRiversideOfficerRiot = {
			name="PoliceRiversideOfficerRiot",
			chance=STFRChances.RiotOutfits,
		},
		PoliceRiversideOfficerDress = {
			name="PoliceRiversideOfficerDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceRiversideSGTDress = {
			name="PoliceRiversideSGTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceRiversideCPTDress = {
			name="PoliceRiversideCPTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceRiversideOfficerTraffic = {
			name="PoliceRiversideOfficerTraffic",
			chance=STFRChances.TrafficOutfits,
		},
		PoliceRiversideOfficerSARBlueLight = {
			name="PoliceRiversideOfficerSARBlueLight",
			chance=STFRChances.SWATOutfits,
		},
		PoliceRiversideDetectiveCasual = {
			name="PoliceRiversideDetectiveCasual",
			chance=STFRChances.DetectiveOutfits,
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
			chance=STFRChances.PoliceMuldraughOutfits,
		},
		PoliceMuldraughSGT = {
			name="PoliceMuldraughSGT",
			chance=STFRChances.PoliceMuldraughOutfits,
		},
		PoliceMuldraughCPT = {
			name="PoliceMuldraughCPT",
			chance=STFRChances.PoliceMuldraughOutfits,
		},
		PoliceMuldraughOfficerRiot = {
			name="PoliceMuldraughOfficerRiot",
			chance=STFRChances.RiotOutfits,
		},
		PoliceMuldraughOfficerDress = {
			name="PoliceMuldraughOfficerDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceMuldraughSGTDress = {
			name="PoliceMuldraughSGTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceMuldraughCPTDress = {
			name="PoliceMuldraughCPTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceMuldraughOfficerTraffic = {
			name="PoliceMuldraughOfficerTraffic",
			chance=STFRChances.TrafficOutfits,
		},
		PoliceMuldraughDetectiveCasual = {
			name="PoliceMuldraughDetectiveCasual",
			chance=STFRChances.DetectiveOutfits,
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
			chance=STFRChances.PoliceWestPointOutfits,
		},
		PoliceWestPointSGT = {
			name="PoliceWestPointSGT",
			chance=STFRChances.PoliceWestPointOutfits,
		},
		PoliceWestPointCPT = {
			name="PoliceWestPointCPT",
			chance=STFRChances.PoliceWestPointOutfits,
		},
		PoliceWestPointOfficerRiot = {
			name="PoliceWestPointOfficerRiot",
			chance=STFRChances.RiotOutfits,
		},
		PoliceWestPointOfficerDress = {
			name="PoliceWestPointOfficerDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceWestPointSGTDress = {
			name="PoliceWestPointSGTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceWestPointCPTDress = {
			name="PoliceWestPointCPTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceWestPointOfficerTraffic = {
			name="PoliceWestPointOfficerTraffic",
			chance=STFRChances.TrafficOutfits,
		},
		PoliceWestPointOfficerSWATNavyLight = {
			name="PoliceWestPointOfficerSWATNavyLight",
			chance=STFRChances.SWATOutfits,
		},
		PoliceWestPointOfficerSWATNavyHeavy = {
			name="PoliceWestPointOfficerSWATNavyHeavy",
			chance=STFRChances.SWATOutfits,
		},
		PoliceWestPointDetectiveCasual = {
			name="PoliceWestPointDetectiveCasual",
			chance=STFRChances.DetectiveOutfits,
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
			chance=STFRChances.SheriffJeffersonOutfits,
		},
		SheriffJeffersonSGT = {
			name="SheriffJeffersonSGT",
			chance=STFRChances.SheriffJeffersonOutfits,
		},
		SheriffJeffersonCPT = {
			name="SheriffJeffersonCPT",
			chance=STFRChances.SheriffJeffersonOutfits,
		},
		SheriffJeffersonOfficerRiot = {
			name="SheriffJeffersonOfficerRiot",
			chance=STFRChances.RiotOutfits,
		},
		SheriffJeffersonOfficerDress = {
			name="PoliceSheriffJeffersonDress",
			chance=STFRChances.DressOutfits,
		},
		SheriffJeffersonSGTDress = {
			name="SheriffJeffersonSGTDress",
			chance=STFRChances.DressOutfits,
		},
		SheriffJeffersonCPTDress = {
			name="SheriffJeffersonCPTDress",
			chance=STFRChances.DressOutfits,
		},
		SheriffJeffersonOfficerTraffic = {
			name="SheriffJeffersonOfficerTraffic",
			chance=STFRChances.TrafficOutfits,
		},
		SheriffJeffersonOfficerSWATGreenLight = {
			name="SheriffJeffersonOfficerSWATGreenLight",
			chance=STFRChances.SWATOutfits,
		},
		SheriffJeffersonOfficerSWATGreenHeavy = {
			name="SheriffJeffersonOfficerSWATGreenHeavy",
			chance=STFRChances.SWATOutfits,
		},
		SheriffJeffersonDetectiveCasual = {
			name="SheriffJeffersonDetectiveCasual",
			chance=STFRChances.DetectiveOutfits,
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
			chance=STFRChances.PoliceJeffersonOutfits,
		},
		PoliceJeffersonSGT = {
			name="PoliceJeffersonSGT",
			chance=STFRChances.PoliceJeffersonOutfits,
		},
		PoliceJeffersonCPT = {
			name="PoliceJeffersonCPT",
			chance=STFRChances.PoliceJeffersonOutfits,
		},
		PoliceJeffersonOfficerRiot = {
			name="PoliceJeffersonOfficerRiot",
			chance=STFRChances.RiotOutfits,
		},
		PoliceJeffersonOfficerDress = {
			name="PoliceJeffersonOfficerDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceJeffersonSGTDress = {
			name="PoliceJeffersonSGTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceJeffersonCPTDress = {
			name="PoliceJeffersonCPTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceJeffersonOfficerTraffic = {
			name="PoliceJeffersonOfficerTraffic",
			chance=STFRChances.TrafficOutfits,
		},
		PoliceJeffersonOfficerSWATBlueLight = {
			name="PoliceJeffersonOfficerSWATBlueLight",
			chance=STFRChances.SWATOutfits,
		},
		PoliceJeffersonOfficerSWATBlueHeavy = {
			name="PoliceJeffersonOfficerSWATBlueHeavy",
			chance=STFRChances.SWATOutfits,
		},
		PoliceJeffersonDetectiveCasual = {
			name="PoliceJeffersonDetectiveCasual",
			chance=STFRChances.DetectiveOutfits,
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
			chance=STFRChances.PoliceLouisvilleOutfits,
		},
		PoliceLouisvilleSGT = {
			name="PoliceLouisvilleSGT",
			chance=STFRChances.PoliceLouisvilleOutfits,
		},
		PoliceLouisvilleCPT = {
			name="PoliceLouisvilleCPT",
			chance=STFRChances.PoliceLouisvilleOutfits,
		},
		PoliceLouisvilleOfficerRiot = {
			name="PoliceLouisvilleOfficerRiot",
			chance=STFRChances.RiotOutfits,
		},
		PoliceLouisvilleOfficerDress = {
			name="PoliceLouisvilleOfficerDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceLouisvilleSGTDress = {
			name="PoliceLouisvilleSGTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceLouisvilleCPTDress = {
			name="PoliceLouisvilleCPTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceLouisvilleOfficerTraffic = {
			name="PoliceLouisvilleOfficerTraffic",
			chance=STFRChances.TrafficOutfits,
		},
		PoliceLouisvilleOfficerSWATBlackLight = {
			name="PoliceLouisvilleOfficerSWATBlackLight",
			chance=STFRChances.SWATOutfits,
		},
		PoliceLouisvilleOfficerSWATBlackHeavy = {
			name="PoliceLouisvilleOfficerSWATBlackHeavy",
			chance=STFRChances.SWATOutfits,
		},
		PoliceLouisvilleOfficerSWATCamoLight = {
			name="PoliceLouisvilleOfficerSWATCamoLight",
			chance=STFRChances.SWATOutfits,
		},
		PoliceLouisvilleOfficerSWATCamoHeavy = {
			name="PoliceLouisvilleOfficerSWATCamoHeavy",
			chance=STFRChances.SWATOutfits,
		},
		PoliceLouisvilleDetectiveCasual = {
			name="PoliceLouisvilleDetectiveCasual",
			chance=STFRChances.DetectiveOutfits,
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
			chance=STFRChances.OtherOutfits,
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
			chance=STFRChances.PoliceLouisvilleOutfits,
		},
	}

	ZombiesZoneDefinition.SheriffMeade = {
		SheriffMeadeOfficer = {
			name="SheriffMeadeOfficer",
			chance=STFRChances.SheriffMeadeOutfits,
		},
		SheriffMeadeSGT = {
			name="SheriffMeadeSGT",
			chance=STFRChances.SheriffMeadeOutfits,
		},
		SheriffMeadeCPT = {
			name="SheriffMeadeCPT",
			chance=STFRChances.SheriffMeadeOutfits,
		},
		SheriffMeadeOfficerRiot = {
			name="SheriffMeadeOfficerRiot",
			chance=STFRChances.RiotOutfits,
		},
		SheriffMeadeOfficerDress = {
			name="SheriffMeadeOfficerDress",
			chance=STFRChances.DressOutfits,
		},
		SheriffMeadeSGTDress = {
			name="SheriffMeadeSGTDress",
			chance=STFRChances.DressOutfits,
		},
		SheriffMeadeCPTDress = {
			name="SheriffMeadeCPTDress",
			chance=STFRChances.DressOutfits,
		},
		SheriffMeadeOfficerTraffic = {
			name="SheriffMeadeOfficerTraffic",
			chance=STFRChances.TrafficOutfits,
		},
		SheriffMeadeOfficerSWATTanLight = {
			name="SheriffMeadeOfficerSWATTanLight",
			chance=STFRChances.SWATOutfits,
		},
		SheriffMeadeOfficerSWATTanHeavy = {
			name="SheriffMeadeOfficerSWATTanHeavy",
			chance=STFRChances.SWATOutfits,
		},
		SheriffMeadeDetectiveCasual = {
			name="SheriffMeadeDetectiveCasual",
			chance=STFRChances.DetectiveOutfits,
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
			chance=STFRChances.PoliceKSPOutfits,
		},
		PoliceKSPSGT = {
			name="PoliceKSPSGT",
			chance=STFRChances.PoliceKSPOutfits,
		},
		PoliceKSPCPT = {
			name="PoliceKSPCPT",
			chance=STFRChances.PoliceKSPOutfits,
		},
		PoliceKSPOfficerRiot = {
			name="PoliceKSPOfficerRiot",
			chance=STFRChances.RiotOutfits,
		},
		PoliceKSPOfficerDress = {
			name="PoliceKSPOfficerDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceKSPSGTDress = {
			name="PoliceKSPSGTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceKSPCPTDress = {
			name="PoliceKSPCPTDress",
			chance=STFRChances.DressOutfits,
		},
		PoliceKSPOfficerTraffic = {
			name="PoliceKSPOfficerTraffic",
			chance=STFRChances.TrafficOutfits,
		},
		PoliceKSPOfficerSWATBlueLight = {
			name="PoliceKSPOfficerSWATBlueLight",
			chance=STFRChances.SWATOutfits,
		},
		PoliceKSPOfficerSWATBlueHeavy = {
			name="PoliceKSPOfficerSWATBlueHeavy",
			chance=STFRChances.SWATOutfits,
		},
		PoliceKSPOfficerSWATCamoLight = {
			name="PoliceKSPOfficerSWATCamoLight",
			chance=STFRChances.SWATOutfits,
		},
		PoliceKSPOfficerSWATCamoHeavy = {
			name="PoliceKSPOfficerSWATCamoHeavy",
			chance=STFRChances.SWATOutfits,
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
			chance=STFRChances.PoliceKSPOutfits,
			gender="male",
		},
		Security = {
			name="PoliceKSPOfficer",
			gender="male",
			chance=STFRChances.PoliceKSPOutfits,
			room="security",
		},
		Inmate = {
			name="InmateJefferson",
			chance=STFRChances.InmateJeffersonOutfits,
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
			chance=STFRChances.DOCMeadeOutfits,
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
			chance=STFRChances.DOCMeadeOutfits,
			room="security",
		},
		InmateMeadeOrange = {
			name="InmateMeadeOrange",
			chance=STFRChances.InmateMeadeOrangeOutfits,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateMeadeOrangeLowerZone = {
			name="InmateMeadeOrange",
			chance=STFRChances.InmateMeadeOrangeOutfits,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
		InmateMeadeYellow = {
			name="InmateMeadeYellow",
			chance=STFRChances.InmateMeadeYellowOutfits,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateMeadeYellowLowerZone = {
			name="InmateMeadeYellow",
			chance=STFRChances.InmateMeadeYellowOutfits,
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
			chance=STFRChances.DOCMeadeOutfits,
			gender="male",
		},
		Security = {
			name="DOCMeade",
			gender="male",
			chance=STFRChances.DOCMeadeOutfits,
			room="office",
		},
		InmateMeadeRed = {
			name="InmateMeadeRed",
			chance=STFRChances.InmateMeadeRedOutfits,
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
			chance=STFRChances.DOCJeffersonOutfits,
			gender="male",
		},
		Security = {
			name="DOCJefferson",
			gender="male",
			chance=STFRChances.DOCJeffersonOutfits,
			room="security",
		},
		Inmate = {
			name="InmateJefferson",
			chance=STFRChances.InmateJeffersonOutfits,
			gender="male",
			room="prisoncells;hall;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateLowerZone = {
			name="InmateJefferson",
			chance=STFRChances.InmateJeffersonOutfits,
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
			chance=STFRChances.PoliceJeffersonOutfits,
			gender="male",
		},
		Inmate = {
			name="InmateJefferson",
			chance=STFRChances.InmateJeffersonOutfits,
			gender="male",
			room="prisoncells",
		},
	}

	ZombiesZoneDefinition.SheriffJeffersonJail = {
		-- Gonna force male zombies
		maleChance = 80,
		PrisonGuard = {
			name="SheriffJeffersonOfficer",
			chance=STFRChances.SheriffJeffersonOutfits,
			gender="male",
		},
		Inmate = {
			name="InmateJefferson",
			chance=STFRChances.InmateJeffersonOutfits,
			gender="male",
			room="cell",
		},
	}

	ZombiesZoneDefinition.RangerMeade = {
		FederalRanger = {
			name="FederalRanger",
			chance=STFRChances.RangerOutfits,
		},
		FederalRangerDress = {
			name="FederalRangerDress",
			chance=STFRChances.DressOutfits,
		},
		StateParkRanger = {
			name="StateParkRanger",
			chance=STFRChances.RangerOutfits,
		},
		StateParkRangerDress = {
			name="StateParkRangerDress",
			chance=STFRChances.DressOutfits,
		},
		ConservationRanger = {
			name="ConservationRanger",
			chance=STFRChances.RangerOutfits,
		},
		ConservationRangerDress = {
			name="ConservationRangerDress",
			chance=STFRChances.DressOutfits,
		},
	}

	ZombiesZoneDefinition.EMSMeade = {
		EMSMeade = {
			name="EMSMeade",
			chance=STFRChances.EMSMeadeOutfits,
		},
		EMSMeadeDress = {
			name="EMSMeadeDress",
			chance=STFRChances.DressOutfits,
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
			chance=STFRChances.EMSLouisvilleOutfits,
		},
		EMSLouisvilleDress = {
			name="EMSLouisvilleDress",
			chance=STFRChances.DressOutfits,
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
			chance=STFRChances.EMSJeffersonOutfits,
		},
		EMSJeffersonDress = {
			name="EMSJeffersonDress",
			chance=STFRChances.DressOutfits,
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
			chance=STFRChances.FireFormalRosewoodOutfits,
		},
		FiremanRosewoodFormalSupervisor = {
			name="FiremanRosewoodFormalSupervisor",
			chance=STFRChances.FireFormalRosewoodOutfits,
		},
		FiremanRosewoodBlack = {
			name="FiremanRosewoodBlack",
			chance=STFRChances.FiremanRosewoodOutfits,
		},
		FiremanFullSuitRosewoodBlack = {
			name="FiremanFullSuitRosewoodBlack",
			chance=STFRChances.FiremanFullRosewoodOutfits,
		},
		FiremanRosewoodKhaki = {
			name="FiremanRosewoodKhaki",
			chance=STFRChances.FiremanRosewoodOutfits,
		},
		FiremanFullSuitRosewoodKhaki = {
			name="FiremanFullSuitRosewoodKhaki",
			chance=STFRChances.FiremanFullRosewoodOutfits,
		},
	}

	ZombiesZoneDefinition.FireLouisville = {
		FiremanLouisvilleFormal = {
			name="FiremanLouisvilleFormal",
			chance=STFRChances.FireFormalLouisvilleOutfits,
		},
		FiremanLouisvilleFormalSupervisor = {
			name="FiremanLouisvilleFormalSupervisor",
			chance=STFRChances.FireFormalLouisvilleOutfits,
		},
		FiremanLouisvilleStationSupervisor = {
			name="FiremanLouisvilleStationSupervisor",
			chance=STFRChances.FireFormalLouisvilleOutfits,
		},
		FiremanLouisvilleDressSupervisor = {
			name="FiremanLouisvilleDressSupervisor",
			chance=STFRChances.DressOutfits,
		},
		FiremanLouisvilleBlack = {
			name="FiremanLouisvilleBlack",
			chance=STFRChances.FiremanLouisvilleOutfits,
		},
		FiremanFullSuitLouisvilleBlack = {
			name="FiremanFullSuitLouisvilleBlack",
			chance=STFRChances.FiremanFullLouisvilleOutfits,
		},
		FiremanLouisvilleKhaki = {
			name="FiremanLouisvilleKhaki",
			chance=STFRChances.FiremanLouisvilleOutfits,
		},
		FiremanFullSuitLouisvilleKhaki = {
			name="FiremanFullSuitLouisvilleKhaki",
			chance=STFRChances.FiremanFullLouisvilleOutfits,
		},
	}

	ZombiesZoneDefinition.USPS = {
		USPSMail = {
			name="USPSMail",
			chance=STFRChances.USPSOutfits,
		},
		USPSVintage = {
			name="USPSVintage",
			chance=1,
			gender="male",
			beardStyles="null:80",
		},
	}
	if getActivatedMods():contains("SpecialEmergencyVehiclesFRsm") then
		table.insert(ZombiesZoneDefinition.SheriffJeffersonJail,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceKSPJail,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceJeffersonJail,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceKSP,{name = "AntiriotofficerLGgen", chance=5});

		table.insert(ZombiesZoneDefinition.SheriffJefferson,{name = "Fbiofficer", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffJefferson,{name = "Fbiofficer2", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffJefferson,{name = "AntiriotofficerLG", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffJefferson,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffJefferson,{name = "ATFofficer", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffJefferson,{name = "USMSHofficer", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffJefferson,{name = "DEAofficer", chance=5});

		table.insert(ZombiesZoneDefinition.PoliceJefferson,{name = "Fbiofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceJefferson,{name = "Fbiofficer2", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceJefferson,{name = "AntiriotofficerLG", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceJefferson,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceJefferson,{name = "ATFofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceJefferson,{name = "USMSHofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceJefferson,{name = "DEAofficer", chance=5});

		table.insert(ZombiesZoneDefinition.PoliceWestPoint,{name = "Fbiofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceWestPoint,{name = "Fbiofficer2", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceWestPoint,{name = "AntiriotofficerLG", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceWestPoint,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceWestPoint,{name = "ATFofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceWestPoint,{name = "USMSHofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceWestPoint,{name = "DEAofficer", chance=5});

		table.insert(ZombiesZoneDefinition.PoliceMuldraugh,{name = "Fbiofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceMuldraugh,{name = "Fbiofficer2", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceMuldraugh,{name = "AntiriotofficerLG", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceMuldraugh,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceMuldraugh,{name = "ATFofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceMuldraugh,{name = "USMSHofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceMuldraugh,{name = "DEAofficer", chance=5});

		table.insert(ZombiesZoneDefinition.PoliceRiverside,{name = "Fbiofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceRiverside,{name = "Fbiofficer2", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceRiverside,{name = "AntiriotofficerLG", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceRiverside,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceRiverside,{name = "ATFofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceRiverside,{name = "USMSHofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceRiverside,{name = "DEAofficer", chance=5});

		table.insert(ZombiesZoneDefinition.SheriffMeade,{name = "Fbiofficer", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffMeade,{name = "Fbiofficer2", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffMeade,{name = "AntiriotofficerLG", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffMeade,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffMeade,{name = "ATFofficer", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffMeade,{name = "USMSHofficer", chance=5});
		table.insert(ZombiesZoneDefinition.SheriffMeade,{name = "DEAofficer", chance=5});

		table.insert(ZombiesZoneDefinition.PoliceLouisville,{name = "Fbiofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceLouisville,{name = "Fbiofficer2", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceLouisville,{name = "AntiriotofficerLG", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceLouisville,{name = "AntiriotofficerLGgen", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceLouisville,{name = "ATFofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceLouisville,{name = "USMSHofficer", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceLouisville,{name = "DEAofficer", chance=5});
	end
end
Events.OnInitGlobalModData.Add(STFRSpawns)
