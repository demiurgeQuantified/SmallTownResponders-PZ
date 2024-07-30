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

AttachedWeaponDefinitions.handgunDutyBeltSWAT = {
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

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "SheriffMeadeOfficerSWATTanLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffMeadeOfficerSWATTanLight");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "SheriffMeadeOfficerSWATTanLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "SheriffMeadeOfficerSWATTanLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffMeadeOfficerSWATTanLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "SheriffMeadeOfficerSWATTanHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffMeadeOfficerSWATTanHeavy");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "SheriffMeadeOfficerSWATTanHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "SheriffMeadeOfficerSWATTanHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffMeadeOfficerSWATTanHeavy");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceWestPointOfficerSWATNavyLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceWestPointOfficerSWATNavyLight");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceWestPointOfficerSWATNavyLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceWestPointOfficerSWATNavyLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceWestPointOfficerSWATNavyLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceWestPointOfficerSWATNavyHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceWestPointOfficerSWATNavyHeavy");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceWestPointOfficerSWATNavyHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceWestPointOfficerSWATNavyHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceWestPointOfficerSWATNavyHeavy");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "SheriffRosewoodOfficerSWATGreenLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodOfficerSWATGreenLight");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "SheriffRosewoodOfficerSWATGreenLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "SheriffRosewoodOfficerSWATGreenLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodOfficerSWATGreenLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "SheriffRosewoodOfficerSWATGreenHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodOfficerSWATGreenHeavy");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "SheriffRosewoodOfficerSWATGreenHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "SheriffRosewoodOfficerSWATGreenHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodOfficerSWATGreenHeavy");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "SheriffRosewoodOfficerSARGreenLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodOfficerSARGreenLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "SheriffRosewoodOfficerSARGreenLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodOfficerSARGreenLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "SheriffRosewoodOfficerSARGreenHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRosewoodOfficerSARGreenHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "SheriffRosewoodOfficerSARGreenHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRosewoodOfficerSARGreenHeavy");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceKSPOfficerSWATBlueLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceKSPOfficerSWATBlueLight");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceKSPOfficerSWATBlueLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceKSPOfficerSWATBlueLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceKSPOfficerSWATBlueLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceKSPOfficerSWATBlueHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceKSPOfficerSWATBlueHeavy");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceKSPOfficerSWATBlueHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceKSPOfficerSWATBlueHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceKSPOfficerSWATBlueHeavy");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceKSPOfficerSWATCamoLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceKSPOfficerSWATCamoLight");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceKSPOfficerSWATCamoLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceKSPOfficerSWATCamoLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceKSPOfficerSWATCamoLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceKSPOfficerSWATCamoHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceKSPOfficerSWATCamoHeavy");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceKSPOfficerSWATCamoHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceKSPOfficerSWATCamoHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceKSPOfficerSWATCamoHeavy");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceJeffersonOfficerSWATBlueLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonOfficerSWATBlueLight");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceJeffersonOfficerSWATBlueLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceJeffersonOfficerSWATBlueLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonOfficerSWATBlueLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceJeffersonOfficerSWATBlueHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonOfficerSWATBlueHeavy");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceJeffersonOfficerSWATBlueHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceJeffersonOfficerSWATBlueHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonOfficerSWATBlueHeavy");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "SheriffJeffersonOfficerSWATGreenLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffJeffersonOfficerSWATGreenLight");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "SheriffJeffersonOfficerSWATGreenLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "SheriffJeffersonOfficerSWATGreenLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffJeffersonOfficerSWATGreenLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "SheriffJeffersonOfficerSWATGreenHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffJeffersonOfficerSWATGreenHeavy");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "SheriffJeffersonOfficerSWATGreenHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "SheriffJeffersonOfficerSWATGreenHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffJeffersonOfficerSWATGreenHeavy");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceLouisvilleOfficerSWATBlackLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleOfficerSWATBlackLight");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceLouisvilleOfficerSWATBlackLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceLouisvilleOfficerSWATBlackLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleOfficerSWATBlackLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceLouisvilleOfficerSWATBlackHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleOfficerSWATBlackHeavy");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceLouisvilleOfficerSWATBlackHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceLouisvilleOfficerSWATBlackHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleOfficerSWATBlackHeavy");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceLouisvilleOfficerSWATCamoLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleOfficerSWATCamoLight");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceLouisvilleOfficerSWATCamoLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceLouisvilleOfficerSWATCamoLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleOfficerSWATCamoLight");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "PoliceLouisvilleOfficerSWATCamoHeavy");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisvilleOfficerSWATCamoHeavy");
table.insert(AttachedWeaponDefinitions.assaultRifleOnBack["outfit"], "PoliceLouisvilleOfficerSWATCamoHeavy");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "PoliceLouisvilleOfficerSWATCamoHeavy");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisvilleOfficerSWATCamoHeavy");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceMuldraughDetectiveCasual");
table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceWestPointDetectiveCasual");
table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceRiversideDetectiveCasual");
table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "SheriffRosewoodDetectiveCasual");
table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceLouisvilleDetectiveCasual");
table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceJeffersonDetectiveCasual");
table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "SheriffJeffersonDetectiveCasual");

table.insert(AttachedWeaponDefinitions.handgunDutyBeltSWAT["outfit"], "SheriffRiversideOfficerSARBlueLight");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "SheriffRiversideOfficerSARBlueLight");
table.insert(AttachedWeaponDefinitions.huntingRifleOnBack["outfit"], "SheriffRiversideOfficerSARBlueLight");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "SheriffRiversideOfficerSARBlueLight");

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughSGT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughCPT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficerRiot = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficer = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeSGT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeCPT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerRiot = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointOfficer = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointSGT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointCPT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointOfficerRiot = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideOfficer = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideSGT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideCPT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideOfficerRiot = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodOfficer = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodSGT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodCPT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodOfficerRiot = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer

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
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleSGT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleCPT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficerRiot = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficer

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonOfficer = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonSGT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonCPT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonOfficerRiot = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonOfficer = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonSGT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonCPT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonOfficerRiot = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPOfficer = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPSGT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPCPT = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPOfficerRiot = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughOfficer

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DOCMeade = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBelt,
		AttachedWeaponDefinitions.nightstick,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DOCJefferson = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DOCMeade

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityBank = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.nightstick,
		AttachedWeaponDefinitions.policeRadio,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityMallGrandOhio = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityBank
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityMallValleyStation = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityBank
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityMallLouisville = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SecurityBank

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight = {
	chance = 50;
	maxitem = 3;
	weapons = {
		AttachedWeaponDefinitions.handgunDutyBeltSWAT,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.huntingRifleOnBack,
		AttachedWeaponDefinitions.nightstick,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointOfficerSWATNavyLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointOfficerSWATNavyHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodOfficerSWATGreenLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodOfficerSWATGreenHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodOfficerSARGreenLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodOfficerSARGreenHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPOfficerSWATBlueLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPOfficerSWATBlueHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPOfficerSWATCamoLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceKSPOfficerSWATCamoHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonOfficerSWATBlueLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonOfficerSWATBlueHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonOfficerSWATGreenLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonOfficerSWATGreenHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficerSWATBlackLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficerSWATBlackHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficerSWATCamoLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleOfficerSWATCamoHeavy = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRiversideOfficerSARBlueLight = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeOfficerSWATTanLight

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughDetectiveCasual = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
	},
}
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffMeadeDetectiveCasual = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughDetectiveCasual
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPointDetectiveCasual = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughDetectiveCasual
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiversideDetectiveCasual = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughDetectiveCasual
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffRosewoodDetectiveCasual = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughDetectiveCasual
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisvilleDetectiveCasual = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughDetectiveCasual
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonDetectiveCasual = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughDetectiveCasual
AttachedWeaponDefinitions.attachedWeaponCustomOutfit.SheriffJeffersonDetectiveCasual = AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraughDetectiveCasual
