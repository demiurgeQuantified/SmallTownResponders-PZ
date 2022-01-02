ZombiesZoneDefinition = ZombiesZoneDefinition or {};

ZombiesZoneDefinition.MuldraughPD = {
	PoliceMuldraugh = {
		name="PoliceMuldraugh",
		chance=40,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=20,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=20,
		gender="male",
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.WestPointPD = {
	PoliceWestPoint = {
		name="PoliceWestPoint",
		chance=40,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=20,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=20,
		gender="male",
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.MeadeSO = {
	PoliceMeade = {
		name="PoliceMeade",
		chance=40,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=20,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=20,
		gender="male",
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.RiversidePD = {
	PoliceRiverside = {
		name="PoliceRiverside",
		chance=40,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=20,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=20,
		gender="male",
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.RosewoodSD = {
	PoliceRosewood = {
		name="PoliceRosewood",
		chance=40,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=20,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=20,
		gender="male",
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.LouisvillePD = {
	PoliceLouisville = {
		name="PoliceLouisville",
		chance=40,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=20,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=20,
		gender="male",
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.JeffersonPD = {
	PoliceJeffersonPD = {
		name="PoliceJeffersonPD",
		chance=40,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=20,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=20,
		gender="male",
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.JeffersonSD = {
	PoliceJeffersonSD = {
		name="PoliceJeffersonSD",
		chance=40,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=20,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=20,
		gender="male",
		beardStyles="null:80",
	},
}


ZombiesZoneDefinition.LouisvilleKSP = {
	KSP_Trooper = {
		name="KSP_Trooper",
		chance=40,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=20,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=20,
		gender="male",
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.LouisvilleKSPJail = {
	-- Gonna force male zombies
	maleChance = 80,
	PrisonGuard = {
		name="KSP_Trooper",
		chance=20,
		gender="male",
	},
	Security = {
		name="KSP_Trooper",
		gender="male",
		chance=100,
		room="security",
	},
	Inmate = {
		name="Inmate",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateLowerZone = {
		name="Inmate",
		chance=30,
		gender="male",
		room="bathroom;kitchen;medicalstorage;library",
	},
}

ZombiesZoneDefinition.RosewoodPrison = {
	-- Gonna force male zombies in prison
	maleChance = 80,
	Doctor = {
		name="Doctor",
		chance=2,
	},
	Priest = {
		name="Priest",
		toSpawn=1,
		gender="male",
		mandatory="true",
	},
	Doctor2 = {
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
	Waiter_Diner = {
		name="Waiter_Diner",
		chance=2,
	},
	PrisonGuard = {
		name="DOC_Meade",
		chance=20,
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
		name="DOC_Meade",
		gender="male",
		chance=100,
		room="security",
	},
	InmateMeadeOrange = {
		name="InmateMeadeOrange",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateMeadeOrangeLowerZone = {
		name="InmateMeadeOrange",
		chance=30,
		gender="male",
		room="bathroom;kitchen;medicalstorage;library",
	},
	InmateMeadeYellow = {
		name="InmateMeadeYellow",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateMeadeYellowLowerZone = {
		name="InmateMeadeYellow",
		chance=30,
		gender="male",
		room="bathroom;kitchen;medicalstorage;library",
	},
	InmateMeadeGreen = {
		name="InmateMeadeGreen",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateMeadeGreenLowerZone = {
		name="InmateMeadeGreen",
		chance=30,
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

ZombiesZoneDefinition.RosewoodPrisonMax = {
	-- Gonna force male zombies in prison
	maleChance = 80,
	Doctor = {
		name="Doctor",
		chance=2,
	},
	Priest = {
		name="Priest",
		toSpawn=1,
		gender="male",
		mandatory="true",
	},
	Doctor2 = {
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
	Waiter_Diner = {
		name="Waiter_Diner",
		chance=2,
	},
	PrisonGuard = {
		name="DOC_Meade",
		chance=20,
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
		name="DOC_Meade",
		gender="male",
		chance=100,
		room="security",
	},
	InmateMeadeRed = {
		name="InmateMeadeRed",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateMeadeRedLowerZone = {
		name="InmateMeadeRed",
		chance=30,
		gender="male",
		room="bathroom;kitchen;medicalstorage;library",
	},
	InmateMeadeWhite = {
		name="InmateMeadeWhite",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateMeadeWhiteLowerZone = {
		name="InmateMeadeWhite",
		chance=30,
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

ZombiesZoneDefinition.LouisvillePDPrison = {
	-- Gonna force male zombies in prison
	maleChance = 80,
	Doctor = {
		name="Doctor",
		chance=2,
	},
	Priest = {
		name="Priest",
		toSpawn=1,
		gender="male",
		mandatory="true",
	},
	Doctor2 = {
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
	Waiter_Diner = {
		name="Waiter_Diner",
		chance=2,
	},
	PrisonGuard = {
		name="DOC_Jefferson",
		chance=20,
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
		name="DOC_Jefferson",
		gender="male",
		chance=100,
		room="security",
	},
	Inmate = {
		name="InmateJefferson",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateLowerZone = {
		name="InmateJefferson",
		chance=30,
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

ZombiesZoneDefinition.JeffersonPDJail = {
	-- Gonna force male zombies
	maleChance = 80,
	PrisonGuard = {
		name="PoliceJeffersonPD",
		chance=20,
		gender="male",
	},
	Security = {
		name="PoliceJeffersonPD",
		gender="male",
		chance=100,
		room="security",
	},
	Inmate = {
		name="Inmate",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateLowerZone = {
		name="Inmate",
		chance=30,
		gender="male",
		room="bathroom;kitchen;medicalstorage;library",
	},
}

ZombiesZoneDefinition.JeffersonSDJail = {
	-- Gonna force male zombies
	maleChance = 80,
	PrisonGuard = {
		name="PoliceJeffersonSD",
		chance=20,
		gender="male",
	},
	Security = {
		name="PoliceJeffersonSD",
		gender="male",
		chance=100,
		room="security",
	},
	Inmate = {
		name="Inmate",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateLowerZone = {
		name="Inmate",
		chance=30,
		gender="male",
		room="bathroom;kitchen;medicalstorage;library",
	},
}


ZombiesZoneDefinition.WestPointPicnic = {
	FederalRanger = {
		name="FederalRanger",
		chance=15,
	},
	StateLawRanger = {
		name="State_LawRanger",
		chance=15,
	},
	StateRanger = {
		name="StateRanger",
		chance=15,
	},
}

ZombiesZoneDefinition.MuldraughPicnic = {
	FederalRanger = {
		name="FederalRanger",
		chance=15,
	},
	StateLawRanger = {
		name="State_LawRanger",
		chance=15,
	},
	StateRanger = {
		name="StateRanger",
		chance=15,
	},
}

ZombiesZoneDefinition.DixiePicnic = {
	FederalRanger = {
		name="FederalRanger",
		chance=15,
	},
	StateLawRanger = {
		name="State_LawRanger",
		chance=15,
	},
	StateRanger = {
		name="StateRanger",
		chance=15,
	},
}

ZombiesZoneDefinition.MeadeEMS = {
	EMSMeade = {
		name="EMSMeade",
		chance=35,
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

ZombiesZoneDefinition.LouisvilleEMS = {
	EMSMeade = {
		name="EMSLouisville",
		chance=35,
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

ZombiesZoneDefinition.FireDeptRW = {
	Fireman_Meade_Black = {
		name="Fireman_Meade_Black",
		chance=80,
	},
	FiremanFullSuit_Meade_Black = {
		name="FiremanFullSuit_Meade_Black",
		chance=60,
	},
	Fireman_Meade_Khaki = {
		name="Fireman_Meade_Khaki",
		chance=80,
	},
	FiremanFullSuit_Meade_Khaki = {
		name="FiremanFullSuit_Meade_Khaki",
		chance=80,
	},
	Fireman_Rosewood_Black = {
		name="Fireman_Rosewood_Black",
		chance=80,
	},
	FiremanFullSuit_Rosewood_Black = {
		name="FiremanFullSuit_Rosewood_Black",
		chance=60,
	},
	Fireman_Rosewood_Khaki = {
		name="Fireman_Rosewood_Khaki",
		chance=80,
	},
	FiremanFullSuit_Rosewood_Khaki = {
		name="FiremanFullSuit_Rosewood_Khaki",
		chance=60,
	},
}

ZombiesZoneDefinition.FireDeptLV = {
	Fireman_Louisville_Black = {
		name="Fireman_Louisville_Black",
		chance=80,
	},
	FiremanFullSuit_Louisville_Black = {
		name="FiremanFullSuit_Louisville_Black",
		chance=60,
	},
	Fireman_Louisville_Khaki = {
		name="Fireman_Louisville_Khaki",
		chance=80,
	},
	FiremanFullSuit_Louisville_Khaki = {
		name="FiremanFullSuit_Louisville_Khaki",
		chance=60,
	},
}

ZombiesZoneDefinition.Police = {};

table.insert(ZombiesZoneDefinition.Police,{name = "KSP_Trooper", chance=25});
table.insert(ZombiesZoneDefinition.Police,{name = "PoliceMuldraugh", chance=0.5});
table.insert(ZombiesZoneDefinition.Police,{name = "PoliceWestPoint", chance=0.5});
table.insert(ZombiesZoneDefinition.Police,{name = "PoliceMeade", chance=0.5});
table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRiverside", chance=0.5});
table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRosewood", chance=0.5});
table.insert(ZombiesZoneDefinition.Police,{name = "PoliceLouisville", chance=0.5});
table.insert(ZombiesZoneDefinition.Police,{name = "PoliceJeffersonPD", chance=0.5});
table.insert(ZombiesZoneDefinition.Police,{name = "PoliceJeffersonSD", chance=0.5});
