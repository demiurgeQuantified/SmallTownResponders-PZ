require 'Items/ProceduralDistributions'

local function preDistributionMergeBROKEN()

	if SandboxVars.STR.LootZones and getActivatedMods():contains("Greenport") then

		if not SandboxVars.STR.DuffelLoot then

			ProceduralDistributions.list.LockerGreenportPD = {
				rolls = 4,
				items = {
					"Bag_DuffelBagTINT", 0.5,
					"Bag_FannyPackFront", 0.8,
					"Bag_Satchel", 0.2,
					"Belt2", 2,
					"Briefcase", 0.2,
					"Disc_Retail", 2,
					"Earbuds", 1,
					"Glasses_Aviators", 1,
					"Hat_CrashHelmet_Police", 1,
					"Hat_EarMuff_Protectors", 1,
					"Headphones", 1,
					"HolsterDouble", 0.5,
					"HolsterSimple", 2,
					"Lunchbox", 1,
					"Lunchbox2", 1,
					"Nightstick", 2,
					"Radio.CDplayer", 2,
					"Radio.WalkieTalkie4", 1,
					"Shoes_Black", 6,
					"Shoes_Brown", 6,
					"Suitcase", 0.2,
					"STR.Hat_Riot_Helmet_Blue_Stripe", 1.5,
					"STR.Gloves_Leather_Black", 2,
					"STR.Gloves_Leather_Brown", 2,
					"STR.Gloves_Dress_White", 1,
					"STR.Jacket_Dress_Police_Greenport", 2,
					"STR.Hat_Police_Greenport", 4,
					"STR.Hat_Police_Greenport_Dress", 1,
					"STR.Jacket_Police_Greenport", 4,
					"STR.Shirt_Police_Greenport", 10,
					"STR.TShirt_Police_Greenport", 10,
					"STR.Trousers_Police_Greenport", 8,
					"STR.Tie_Full_Police_Greenport", 2,
					"STR.Tie_Worn_Police_Greenport", 2,
					"STR.Belt_PoliceDuty", 2,
					"STR.Chest_Walkie", 2,
					"Vest_BulletPolice", 1,
				},
				junk = {
					rolls = 1,
					items = {
					
					}
				}
			}

			ProceduralDistributions.list.LockerGreenportFD = {
				rolls = 4,
				items = {
					"Bag_DuffelBagTINT", 0.5,
					"Bag_FannyPackFront", 0.8,
					"Belt2", 2,
					"Briefcase", 0.2,
					"Disc_Retail", 2,
					"Earbuds", 1,
					"Glasses_Aviators", 1,
					"Hat_GasMask", 0.5,
					"Headphones", 1,
					"Lunchbox", 1,
					"Lunchbox2", 1,
					"Radio.CDplayer", 2,
					"Radio.WalkieTalkie4", 1,
					"Shirt_Denim", 8,
					"Shirt_Lumberjack", 6,
					"Shoes_ArmyBoots", 4,
					"Shoes_ArmyBoots", 4,
					"Socks_Ankle", 8,
					"Socks_Long", 6,
					"Suitcase", 0.2,
					"STR.Tie_Full_EMS_Greenport", 0.5,
					"STR.Tie_Worn_EMS_Greenport", 0.5,
					"STR.Hat_BaseballCap_EMS_Greenport", 1,
					"STR.Hat_Fire_Greenport", 1,
					"STR.Trousers_EMS_Greenport", 3,
					"STR.Trousers_Fire_Formal_Greenport", 3,
					"STR.Shirt_EMS_Greenport", 1,
					"STR.TShirt_EMS_Greenport", 1,
					"STR.Shirt_Fire_Greenport", 2,
					"STR.TShirt_Fire_Greenport", 2,
					"STR.Gloves_Fireman_Khaki", 2,
					"STR.Gloves_Fireman_Khaki_Simple", 2,
					"STR.Gloves_Fireman_Black", 2,
					"STR.Gloves_Fireman_Black_Simple", 2,
					"STR.Hat_Fireman_Greenport_Blue", 2,
					"STR.Hat_Fireman_Greenport_Black", 2,
					"STR.Hat_Fireman_Greenport_Red", 2,
					"STR.Jacket_EMS_Greenport", 2,
					"STR.Hat_Fireman_Greenport_Yellow", 2,
					"STR.Jacket_Fireman_Greenport_Black", 4,
					"STR.Jacket_Fireman_Greenport_Khaki", 4,
					"STR.Trousers_Fireman_Greenport_Black", 6,
					"STR.Trousers_Fireman_Greenport_Khaki", 6,
					"STR.TShirt_Profession_FiremanBlue_Greenport", 6,
					"STR.TShirt_Profession_FiremanRed_Greenport", 6,
					"STR.TShirt_Profession_FiremanRed_Greenport02", 6,
					"STR.TShirt_Profession_FiremanWhite_Greenport", 6,
				},
				junk = {
					rolls = 1,
					items = {
					
					}
				}
			}
		end
	end
end
local function preDistributionMerge()

	if getActivatedMods():contains("Greenport") then
		--elseif SandboxVars.STR.DuffelLoot then

			ProceduralDistributions.list.LockerGreenportPD = {
				rolls = 4,
				items = {
					--"Bag_DuffelBagTINT", 0.5,
					"Bag_FannyPackFront", 0.8,
					"Bag_Satchel", 0.2,
					"Belt2", 2,
					"Briefcase", 0.2,
					"Disc_Retail", 2,
					"Earbuds", 1,
					"Glasses_Aviators", 1,
					"Hat_CrashHelmet_Police", 1,
					"Hat_EarMuff_Protectors", 1,
					"Headphones", 1,
					"HolsterDouble", 0.5,
					"HolsterSimple", 2,
					"Lunchbox", 1,
					"Lunchbox2", 1,
					"Nightstick", 2,
					"Radio.CDplayer", 2,
					"Radio.WalkieTalkie4", 1,
					"Shoes_Black", 6,
					"Shoes_Brown", 6,
					"Suitcase", 0.2,
					"STR.Bag_DuffelBag_Police_Black", 0.5,
					"STR.Bag_DuffelBag_Police_Navy", 0.5,
					"STR.Bag_DuffelBag_Police_Olive", 0.5,
					"STR.Hat_Riot_Helmet_Blue_Stripe", 1.5,
					"STR.Gloves_Leather_Black", 2,
					"STR.Gloves_Leather_Brown", 2,
					"STR.Gloves_Dress_White", 1,
					"STR.Jacket_Dress_Police_Greenport", 2,
					"STR.Vest_HighViz_Police_Greenport", 2,
					"STR.Hat_Police_Greenport", 4,
					"STR.Hat_Police_Greenport_Dress", 1,
					"STR.Jacket_Police_Greenport", 4,
					"STR.Shirt_Police_Greenport", 10,
					"STR.TShirt_Police_Greenport", 10,
					"STR.Necklace_Badge_Police_Greenport", 8,
					"STR.Necklace_Badge_Police_Greenport", 8,
					"STR.Trousers_Police_Greenport", 8,
					"STR.Tie_Full_Police_Greenport", 2,
					"STR.Tie_Worn_Police_Greenport", 2,
					"STR.Belt_PoliceDuty", 2,
					"STR.Chest_Walkie", 2,
					"Vest_BulletPolice", 1,
				},
				junk = {
					rolls = 1,
					items = {
					
					}
				}
			}

			ProceduralDistributions.list.LockerGreenportFD = {
				rolls = 4,
				items = {
					--"Bag_DuffelBagTINT", 0.5,
					"Bag_FannyPackFront", 0.8,
					"Belt2", 2,
					"Briefcase", 0.2,
					"Disc_Retail", 2,
					"Earbuds", 1,
					"Glasses_Aviators", 1,
					"Hat_GasMask", 0.5,
					"Headphones", 1,
					"Lunchbox", 1,
					"Lunchbox2", 1,
					"Radio.CDplayer", 2,
					"Radio.WalkieTalkie4", 1,
					"Shirt_Denim", 8,
					"Shirt_Lumberjack", 6,
					"Shoes_ArmyBoots", 4,
					"Shoes_ArmyBoots", 4,
					"Socks_Ankle", 8,
					"Socks_Long", 6,
					"Suitcase", 0.2,
					"STR.Bag_DuffelBag_Fire_Black", 0.5,
					"STR.Bag_DuffelBag_Fire_Khaki", 0.5,
					"STR.Tie_Full_EMS_Greenport", 0.5,
					"STR.Tie_Worn_EMS_Greenport", 0.5,
					"STR.Hat_BaseballCap_EMS_Greenport", 1,
					"STR.Hat_Fire_Greenport", 1,
					"STR.Trousers_EMS_Greenport", 3,
					"STR.Trousers_Fire_Formal_Greenport", 3,
					"STR.Shirt_EMS_Greenport", 1,
					"STR.TShirt_EMS_Greenport", 1,
					"STR.Shirt_Fire_Greenport", 2,
					"STR.TShirt_Fire_Greenport", 2,
					"STR.Gloves_Fireman_Khaki", 2,
					"STR.Gloves_Fireman_Khaki_Simple", 2,
					"STR.Gloves_Fireman_Black", 2,
					"STR.Gloves_Fireman_Black_Simple", 2,
					"STR.Hat_Fireman_Greenport_Blue", 2,
					"STR.Hat_Fireman_Greenport_Black", 2,
					"STR.Hat_Fireman_Greenport_Red", 2,
					"STR.Jacket_EMS_Greenport", 2,
					"STR.Hat_Fireman_Greenport_Yellow", 2,
					"STR.Jacket_Fireman_Greenport_Black", 4,
					"STR.Jacket_Fireman_Greenport_Khaki", 4,
					"STR.Trousers_Fireman_Greenport_Black", 6,
					"STR.Trousers_Fireman_Greenport_Khaki", 6,
					"STR.TShirt_Profession_FiremanBlue_Greenport", 6,
					"STR.TShirt_Profession_FiremanRed_Greenport", 6,
					"STR.TShirt_Profession_FiremanRed_Greenport02", 6,
					"STR.TShirt_Profession_FiremanWhite_Greenport", 6,
				},
				junk = {
					rolls = 1,
					items = {
					
					}
				}
			}
	end
end

Events.OnPreDistributionMerge.Add(preDistributionMerge);