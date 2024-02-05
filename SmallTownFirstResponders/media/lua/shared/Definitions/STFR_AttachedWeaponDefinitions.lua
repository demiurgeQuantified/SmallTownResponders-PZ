-- define weapons to be attached to zombies when creating them
-- random knives inside their neck, spear in their stomach, meatcleaver in their back...
-- this is used in IsoZombie.addRandomAttachedWeapon()

AttachedWeaponDefinitions = AttachedWeaponDefinitions or {};

AttachedWeaponDefinitions.policeRadio = {
	chance = 30,
	outfit = {"Police", "PoliceState", "PoliceRiot"},
	weaponLocation = {"Walkie Belt Right"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	weapons = {
		"Radio.WalkieTalkie4",
	},
}

AttachedWeaponDefinitions.handgunDutyBelt = {
	id = "handgunDutyBelt",
	chance = 50,
	outfit = {"Police", "PoliceState", "PoliceRiot"},
	weaponLocation =  {"Holster Right"},
	bloodLocations = nil,
	addHoles = false,
	daySurvived = 0,
	ensureItem = "STR.Belt_PoliceDuty",
	weapons = {
		"Base.Pistol",
		"Base.Pistol2",
		"Base.Pistol3",
		"Base.Revolver",
		"Base.Revolver_Long",
		"Base.Revolver_Short",
	},
}

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceMuldraughOfficer");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceMuldraughOfficer");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceMuldraughOfficer");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceMuldraughSGT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceMuldraughSGT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceMuldraughSGT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceMuldraughCPT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceMuldraughCPT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceMuldraughCPT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceMuldraughOfficerTraffic");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceMuldraughOfficerTraffic");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceMuldraughOfficerTraffic");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceMuldraughOfficerBag");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceMuldraughOfficerBag");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceMuldraughOfficerBag");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceMuldraughOfficerRiot");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceMuldraughOfficerRiot");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceMuldraughOfficerRiot");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffMeadeOfficer");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffMeadeOfficer");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffMeadeOfficer");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffMeadeSGT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffMeadeSGT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffMeadeSGT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffMeadeCPT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffMeadeCPT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffMeadeCPT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffMeadeOfficerTraffic");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffMeadeOfficerTraffic");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffMeadeOfficerTraffic");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffMeadeOfficerBag");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffMeadeOfficerBag");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffMeadeOfficerBag");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffMeadeOfficerRiot");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffMeadeOfficerRiot");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffMeadeOfficerRiot");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceWestPointOfficer");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceWestPointOfficer");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceWestPointOfficer");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceWestPointSGT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceWestPointSGT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceWestPointSGT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceWestPointCPT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceWestPointCPT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceWestPointCPT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceWestPointOfficerTraffic");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceWestPointOfficerTraffic");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceWestPointOfficerTraffic");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceWestPointOfficerBag");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceWestPointOfficerBag");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceWestPointOfficerBag");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceWestPointOfficerRiot");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceWestPointOfficerRiot");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceWestPointOfficerRiot");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceRiversideOfficer");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceRiversideOfficer");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceRiversideOfficer");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceRiversideSGT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceRiversideSGT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceRiversideSGT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceRiversideCPT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceRiversideCPT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceRiversideCPT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceRiversideOfficerTraffic");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceRiversideOfficerTraffic");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceRiversideOfficerTraffic");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceRiversideOfficerBag");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceRiversideOfficerBag");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceRiversideOfficerBag");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceRiversideOfficerRiot");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceRiversideOfficerRiot");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceRiversideOfficerRiot");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffRosewoodOfficer");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodOfficer");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodOfficer");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffRosewoodSGT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodSGT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodSGT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffRosewoodCPT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodCPT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodCPT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffRosewoodOfficerTraffic");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodOfficerTraffic");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodOfficerTraffic");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffRosewoodOfficerBag");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodOfficerBag");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodOfficerBag");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffRosewoodOfficerRiot");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodOfficerRiot");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodOfficerRiot");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceLouisvilleOfficer");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleOfficer");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleOfficer");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "PoliceLouisvilleOfficer");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceLouisvilleSGT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleSGT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleSGT");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "PoliceLouisvilleSGT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceLouisvilleCPT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleCPT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleCPT");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "PoliceLouisvilleCPT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceLouisvilleOfficerTraffic");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleOfficerTraffic");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleOfficerTraffic");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "PoliceLouisvilleOfficerTraffic");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceLouisvilleOfficerBag");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleOfficerBag");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleOfficerBag");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "PoliceLouisvilleOfficerBag");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceLouisvilleOfficerRiot");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleOfficerRiot");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleOfficerRiot");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "PoliceLouisvilleOfficerRiot");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceJeffersonOfficer");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonOfficer");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonOfficer");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceJeffersonSGT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonSGT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonSGT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceJeffersonCPT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonCPT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonCPT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceJeffersonOfficerTraffic");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonOfficerTraffic");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonOfficerTraffic");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceJeffersonOfficerBag");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonOfficerBag");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonOfficerBag");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceJeffersonOfficerRiot");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonOfficerRiot");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonOfficerRiot");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffJeffersonOfficer");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffJeffersonOfficer");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffJeffersonOfficer");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffJeffersonSGT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffJeffersonSGT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffJeffersonSGT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffJeffersonCPT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffJeffersonCPT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffJeffersonCPT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffJeffersonOfficerTraffic");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffJeffersonOfficerTraffic");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffJeffersonOfficerTraffic");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffJeffersonOfficerBag");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffJeffersonOfficerBag");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffJeffersonOfficerBag");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SheriffJeffersonOfficerRiot");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffJeffersonOfficerRiot");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffJeffersonOfficerRiot");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceKSPOfficer");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceKSPOfficer");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceKSPOfficer");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceKSPSGT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceKSPSGT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceKSPSGT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceKSPCPT");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceKSPCPT");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceKSPCPT");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceKSPOfficerBag");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceKSPOfficerBag");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceKSPOfficerBag");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "PoliceKSPOfficerRiot");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceKSPOfficerRiot");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceKSPOfficerRiot");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "DOCMeade");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "DOCMeade");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "DOCJefferson");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "DOCJefferson");

table.insert(AttachedWeaponDefinitions.handgunDutyBelt["outfit"], "SecurityBank");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SecurityBank");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "SecurityBank");

table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SecurityMallGrandOhio");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "SecurityMallGrandOhio");

table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SecurityMallValleyStation");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "SecurityMallValleyStation");

table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SecurityMallLouisville");
table.insert(AttachedWeaponDefinitions.policeRadio["outfit"], "SecurityMallLouisville");

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughSGT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughCPT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficerBag = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficerRiot = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeSGT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeCPT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerBag = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerRiot = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointSGT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointCPT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointOfficerBag = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointOfficerRiot = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideSGT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideCPT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideOfficerBag = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideOfficerRiot = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodSGT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodCPT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodOfficerBag = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodOfficerRiot = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeRadio,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleSGT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeRadio,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleCPT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeRadio,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficerBag = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeRadio,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficerRiot = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeradio,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonSGT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonCPT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonOfficerBag = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonOfficerRiot = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonSGT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonCPT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonOfficerBag = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonOfficerRiot = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPSGT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPCPT = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPOfficerBag = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPOfficerRiot = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DOCMeade = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DOCJefferson = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityBank = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeRadio,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityMallGrandOhio = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeRadio,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityMallValleyStation = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeRadio,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityMallLouisville = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeRadio,
	},
}
