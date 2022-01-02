-- define weapons to be attached to zombies when creating them
-- random knives inside their neck, spear in their stomach, meatcleaver in their back...
-- this is used in IsoZombie.addRandomAttachedWeapon()

AttachedWeaponDefinitions = AttachedWeaponDefinitions or {};

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceMuldraugh");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceMuldraugh");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceMuldraugh");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceMeade");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceMeade");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceMeade");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceWestPoint");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceWestPoint");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceWestPoint");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceRiverside");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceRiverside");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceRiverside");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceRosewood");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceRosewood");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceRosewood");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceLouisville");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceLouisville");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceLouisville");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceJeffersonPD");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonPD");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonPD");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "PoliceJeffersonSD");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "PoliceJeffersonSD");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "PoliceJeffersonSD");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "KSP_Trooper");
table.insert(AttachedWeaponDefinitions.shotgunPolice["outfit"], "KSP_Trooper");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "KSP_Trooper");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "DOC_Meade");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "DOC_Meade");

table.insert(AttachedWeaponDefinitions.handgunHolster["outfit"], "DOC_Jefferson");
table.insert(AttachedWeaponDefinitions.nightstick["outfit"], "DOC_Jefferson");

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMuldraugh = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceMeade = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceWestPoint = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRiverside = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceRosewood = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceLouisville = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonPD = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.PoliceJeffersonSD = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.KSP_Trooper = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.shotgunPolice,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DOC_Meade = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.nightstick,
	},
}

AttachedWeaponDefinitions.attachedWeaponCustomOutfit.DOC_Jefferson = {
	chance = 50;
	maxitem = 2;
	weapons = {
		AttachedWeaponDefinitions.handgunHolster,
		AttachedWeaponDefinitions.nightstick,
	},
}
