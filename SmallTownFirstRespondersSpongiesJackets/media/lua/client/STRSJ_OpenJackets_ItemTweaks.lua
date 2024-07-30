require("OpenJackets_ItemTweaks");

-- Copying these over because they're locals :/
local function ModifyParamsFromOriginalItem(originalItemName, newItemName, resistanceModifier)
	local originalItem = ScriptManager.instance:getItem(originalItemName);
	local newItem = ScriptManager.instance:getItem(newItemName);
	
	if ((not originalItem) or (not newItem)) then return end;
	
	if resistanceModifier then 
		-- modify resistance
		TweakItem(newItemName, "Insulation", originalItem:getInsulation()*resistanceModifier);
		TweakItem(newItemName, "WindResistance", originalItem:getWindresist()*resistanceModifier);
		TweakItem(newItemName, "WaterResistance", originalItem:getWaterresist()*resistanceModifier);
	end;
end

--Automates the adding of context menus
local function AddNewExtraItem(originalItem, newItem, originalContextMenu, newContextMenu, resistanceModifier)

	ItemTweaker.AddOrReplaceClothingOption(originalItem, newItem, newContextMenu);
	ItemTweaker.AddOrReplaceClothingOption(newItem, originalItem, originalContextMenu);
	
	TweakItem(originalItem, "clothingExtraSubmenu", originalContextMenu);
	TweakItem(newItem, "clothingExtraSubmenu", newContextMenu);
	
	
	ModifyParamsFromOriginalItem(originalItem, newItem, resistanceModifier);
end

function Add4WayExtraItem(item1, item2, item3, item4, context1, context2, context3, context4, resistanceModifier)
	AddNewExtraItem(item1, item2, context1, context2);
	AddNewExtraItem(item2, item3, context2, context3, resistanceModifier);
	AddNewExtraItem(item1, item4, context1, context4, resistanceModifier);
	AddNewExtraItem(item2, item4, context2, context4);
	AddNewExtraItem(item1, item3, context1, context3);
	AddNewExtraItem(item4, item3, context4, context3);
	
end

-- Vest
AddNewExtraItem("STFR.Vest_HighViz_Police_Riverside", "STFR.Vest_HighViz_Police_Riverside_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Vest_HighViz_Police_KSP", "STFR.Vest_HighViz_Police_KSP_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Vest_HighViz_Police_Yellow", "STFR.Vest_HighViz_Police_Yellow_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Vest_HighViz_Police_Green", "STFR.Vest_HighViz_Police_Green_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Vest_HighViz_Police_Green_Unmarked", "STFR.Vest_HighViz_Police_Green_Unmarked_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Vest_HighViz_Sheriff_Orange", "STFR.Vest_HighViz_Sheriff_Orange_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Vest_HighViz_Sheriff_Green", "STFR.Vest_HighViz_Sheriff_Green_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Vest_HighViz_Sheriff_Yellow", "STFR.Vest_HighViz_Sheriff_Yellow_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Vest_HighViz_Extra_USPS", "STFR.Vest_HighViz_Extra_USPS_OPEN", "CloseJacket", "OpenJacket", 0.75);

-- Jacket
AddNewExtraItem("STFR.Jacket_Police_Muldraugh_Officer", "STFR.Jacket_Police_Muldraugh_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_Muldraugh_SGT", "STFR.Jacket_Police_Muldraugh_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_Muldraugh_CPT", "STFR.Jacket_Police_Muldraugh_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Sheriff_Meade_Officer", "STFR.Jacket_Sheriff_Meade_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Sheriff_Meade_SGT", "STFR.Jacket_Sheriff_Meade_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Sheriff_Meade_CPT", "STFR.Jacket_Sheriff_Meade_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Police_WestPoint_Officer", "STFR.Jacket_Police_WestPoint_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_WestPoint_SGT", "STFR.Jacket_Police_WestPoint_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_WestPoint_CPT", "STFR.Jacket_Police_WestPoint_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Police_Riverside_Officer", "STFR.Jacket_Police_Riverside_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_Riverside_SGT", "STFR.Jacket_Police_Riverside_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_Riverside_CPT", "STFR.Jacket_Police_Riverside_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Sheriff_Rosewood_Officer", "STFR.Jacket_Sheriff_Rosewood_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Sheriff_Rosewood_SGT", "STFR.Jacket_Sheriff_Rosewood_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Sheriff_Rosewood_CPT", "STFR.Jacket_Sheriff_Rosewood_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Police_Louisville_Officer", "STFR.Jacket_Police_Louisville_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_Louisville_SGT", "STFR.Jacket_Police_Louisville_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_Louisville_CPT", "STFR.Jacket_Police_Louisville_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Police_Jefferson_Officer", "STFR.Jacket_Police_Jefferson_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_Jefferson_SGT", "STFR.Jacket_Police_Jefferson_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_Jefferson_CPT", "STFR.Jacket_Police_Jefferson_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Sheriff_Jefferson_Officer", "STFR.Jacket_Sheriff_Jefferson_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Sheriff_Jefferson_SGT", "STFR.Jacket_Sheriff_Jefferson_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Sheriff_Jefferson_CPT", "STFR.Jacket_Sheriff_Jefferson_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Police_KSP_Officer", "STFR.Jacket_Police_KSP_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_KSP_SGT", "STFR.Jacket_Police_KSP_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Police_KSP_CPT", "STFR.Jacket_Police_KSP_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Ranger_Federal", "STFR.Jacket_Ranger_Federal_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Ranger_State_Park", "STFR.Jacket_Ranger_State_Park_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Ranger_Conservation", "STFR.Jacket_Ranger_Conservation_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_DOC_Meade", "STFR.Jacket_DOC_Meade_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_DOC_Jefferson", "STFR.Jacket_DOC_Jefferson_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_EMS_Meade", "STFR.Jacket_EMS_Meade_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_EMS_Jefferson", "STFR.Jacket_EMS_Jefferson_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_EMS_Louisville", "STFR.Jacket_EMS_Louisville_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Fireman_Black_Meade", "STFR.Jacket_Fireman_Black_Meade_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Fireman_Khaki_Meade", "STFR.Jacket_Fireman_Khaki_Meade_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Fireman_Black_Rosewood", "STFR.Jacket_Fireman_Black_Rosewood_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Fireman_Khaki_Rosewood", "STFR.Jacket_Fireman_Khaki_Rosewood_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Fireman_Black_Louisville", "STFR.Jacket_Fireman_Black_Louisville_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Fireman_Khaki_Louisville", "STFR.Jacket_Fireman_Khaki_Louisville_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_USPS", "STFR.Jacket_USPS_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Security_Bank", "STFR.Jacket_Security_Bank_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Security_Mall_Grand_Ohio", "STFR.Jacket_Security_Mall_Grand_Ohio_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Security_Mall_Valley_Station", "STFR.Jacket_Security_Mall_Valley_Station_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Security_Mall_Louisville", "STFR.Jacket_Security_Mall_Louisville_OPEN", "CloseJacket", "OpenJacket", 0.75);


-- Dress Jacket
AddNewExtraItem("STFR.Jacket_Dress_Sheriff_Rosewood_Officer", "STFR.Jacket_Dress_Sheriff_Rosewood_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Sheriff_Rosewood_SGT", "STFR.Jacket_Dress_Sheriff_Rosewood_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Sheriff_Rosewood_CPT", "STFR.Jacket_Dress_Sheriff_Rosewood_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Police_Jefferson_Officer", "STFR.Jacket_Dress_Police_Jefferson_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_Jefferson_SGT", "STFR.Jacket_Dress_Police_Jefferson_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_Jefferson_CPT", "STFR.Jacket_Dress_Police_Jefferson_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Police_KSP_Officer", "STFR.Jacket_Dress_Police_KSP_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_KSP_SGT", "STFR.Jacket_Dress_Police_KSP_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_KSP_CPT", "STFR.Jacket_Dress_Police_KSP_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Police_Louisville_Officer", "STFR.Jacket_Dress_Police_Louisville_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_Louisville_SGT", "STFR.Jacket_Dress_Police_Louisville_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_Louisville_CPT", "STFR.Jacket_Dress_Police_Louisville_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Sheriff_Meade_Officer", "STFR.Jacket_Dress_Sheriff_Meade_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Sheriff_Meade_SGT", "STFR.Jacket_Dress_Sheriff_Meade_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Sheriff_Meade_CPT", "STFR.Jacket_Dress_Sheriff_Meade_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Police_Muldraugh_Officer", "STFR.Jacket_Dress_Police_Muldraugh_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_Muldraugh_SGT", "STFR.Jacket_Dress_Police_Muldraugh_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_Muldraugh_CPT", "STFR.Jacket_Dress_Police_Muldraugh_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Police_Riverside_Officer", "STFR.Jacket_Dress_Police_Riverside_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_Riverside_SGT", "STFR.Jacket_Dress_Police_Riverside_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_Riverside_CPT", "STFR.Jacket_Dress_Police_Riverside_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Police_WestPoint_Officer", "STFR.Jacket_Dress_Police_WestPoint_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_WestPoint_SGT", "STFR.Jacket_Dress_Police_WestPoint_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Police_WestPoint_CPT", "STFR.Jacket_Dress_Police_WestPoint_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Sheriff_Jefferson_Officer", "STFR.Jacket_Dress_Sheriff_Jefferson_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Sheriff_Jefferson_SGT", "STFR.Jacket_Dress_Sheriff_Jefferson_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Sheriff_Jefferson_CPT", "STFR.Jacket_Dress_Sheriff_Jefferson_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_EMS_Jefferson", "STFR.Jacket_Dress_EMS_Jefferson_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_EMS_Louisville", "STFR.Jacket_Dress_EMS_Louisville_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_EMS_Meade", "STFR.Jacket_Dress_EMS_Meade_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Fire_Louisville", "STFR.Jacket_Dress_Fire_Louisville_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Ranger_Federal", "STFR.Jacket_Dress_Ranger_Federal_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Ranger_Conservation", "STFR.Jacket_Dress_Ranger_Conservation_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Dress_Ranger_State_Park", "STFR.Jacket_Dress_Ranger_State_Park_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Extra_USPS_Vintage", "STFR.Jacket_Dress_Extra_USPS_Vintage_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.Jacket_Dress_Security_Hotel_Havisham", "STFR.Jacket_Dress_Security_Hotel_Havisham_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Jacket_Suit_Security_Hotel_Fancy", "STFR.Jacket_Suit_Security_Hotel_Fancy_OPEN", "CloseJacket", "OpenJacket", 0.75);


-- Boiler Suit
AddNewExtraItem("STFR.Boilersuit_Jefferson_Prisoner", "STFR.Boilersuit_Jefferson_Prisoner_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Boilersuit_Meade_Supermax_Prisoner", "STFR.Boilersuit_Meade_Supermax_Prisoner_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Boilersuit_Meade_Low_Risk_Prisoner", "STFR.Boilersuit_Meade_Low_Risk_Prisoner_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.Boilersuit_Meade_Gen_Pop_Prisoner", "STFR.Boilersuit_Meade_Gen_Pop_Prisoner_OPEN", "CloseJacket", "OpenJacket", 0.75);


-- Trousers tucked
AddNewExtraItem("STFR.Trousers_Police_Muldraugh", "STFR.Trousers_Police_Muldraugh_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Sheriff_Meade", "STFR.Trousers_Sheriff_Meade_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_WestPoint", "STFR.Trousers_Police_WestPoint_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_Riverside", "STFR.Trousers_Police_Riverside_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Sheriff_Rosewood", "STFR.Trousers_Sheriff_Rosewood_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_Louisville", "STFR.Trousers_Police_Louisville_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_Jefferson", "STFR.Trousers_Police_Jefferson_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Sheriff_Jefferson", "STFR.Trousers_Sheriff_Jefferson_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_KSP_Summer", "STFR.Trousers_Police_KSP_Summer_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_KSP_Winter", "STFR.Trousers_Police_KSP_Winter_TUCK", "TuckOut", "TuckIn", 1);

AddNewExtraItem("STFR.Trousers_Ranger_Federal", "STFR.Trousers_Ranger_Federal_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Ranger_State_Park", "STFR.Trousers_Ranger_State_Park_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Ranger_Conservation", "STFR.Trousers_Ranger_Conservation_TUCK", "TuckOut", "TuckIn", 1);

AddNewExtraItem("STFR.Trousers_DOC_Meade", "STFR.Trousers_DOC_Meade_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_DOC_Jefferson", "STFR.Trousers_DOC_Jefferson_TUCK", "TuckOut", "TuckIn", 1);

AddNewExtraItem("STFR.Trousers_EMS_Meade", "STFR.Trousers_EMS_Meade_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_EMS_Jefferson", "STFR.Trousers_EMS_Jefferson_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_EMS_Louisville", "STFR.Trousers_EMS_Louisville_TUCK", "TuckOut", "TuckIn", 1);

AddNewExtraItem("STFR.Trousers_Fireman_Black_Meade", "STFR.Trousers_Fireman_Black_Meade_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Fireman_Khaki_Meade", "STFR.Trousers_Fireman_Khaki_Meade_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Fireman_Black_Rosewood", "STFR.Trousers_Fireman_Black_Rosewood_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Fireman_Khaki_Rosewood", "STFR.Trousers_Fireman_Khaki_Rosewood_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Fireman_Black_Louisville", "STFR.Trousers_Fireman_Black_Louisville_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Fireman_Khaki_Louisville", "STFR.Trousers_Fireman_Khaki_Louisville_TUCK", "TuckOut", "TuckIn", 1);

AddNewExtraItem("STFR.Trousers_USPS", "STFR.Trousers_USPS_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_USPS_Vintage", "STFR.Trousers_USPS_Vintage_TUCK", "TuckOut", "TuckIn", 1);

AddNewExtraItem("STFR.Trousers_Fire_Formal_Louisville", "STFR.Trousers_Fire_Formal_Louisville_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Fire_Formal_Meade", "STFR.Trousers_Fire_Formal_Meade_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Fire_Formal_Rosewood", "STFR.Trousers_Fire_Formal_Rosewood_TUCK", "TuckOut", "TuckIn", 1);

AddNewExtraItem("STFR.Trousers_Security_Bank", "STFR.Trousers_Security_Bank_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Security_Hotel_Havisham", "STFR.Trousers_Security_Hotel_Havisham_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Security_Hotel_Fancy", "STFR.Trousers_Security_Hotel_Fancy_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Security_Mall_Grand_Ohio", "STFR.Trousers_Security_Mall_Grand_Ohio_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Security_Mall_Valley_Station", "STFR.Trousers_Security_Mall_Valley_Station_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Security_Mall_Louisville", "STFR.Trousers_Security_Mall_Louisville_TUCK", "TuckOut", "TuckIn", 1);

AddNewExtraItem("STFR.Trousers_Police_Louisville_SWAT_Black", "STFR.Trousers_Police_Louisville_SWAT_Black_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_Louisville_SWAT_Camo", "STFR.Trousers_Police_Louisville_SWAT_Camo_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_Jefferson_SWAT_Blue", "STFR.Trousers_Police_Jefferson_SWAT_Blue_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Sheriff_Jefferson_SWAT_Green", "STFR.Trousers_Sheriff_Jefferson_SWAT_Green_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Sheriff_Rosewood_SWAT_Green", "STFR.Trousers_Sheriff_Rosewood_SWAT_Green_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_WestPoint_SWAT_Navy", "STFR.Trousers_Police_WestPoint_SWAT_Navy_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_KSP_SWAT_Blue", "STFR.Trousers_Police_KSP_SWAT_Blue_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_KSP_SWAT_Camo", "STFR.Trousers_Police_KSP_SWAT_Camo_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Sheriff_Meade_SWAT_Tan", "STFR.Trousers_Sheriff_Meade_SWAT_Tan_TUCK", "TuckOut", "TuckIn", 1);
AddNewExtraItem("STFR.Trousers_Police_Riverside_SWAT_Blue", "STFR.Trousers_Police_Riverside_SWAT_Blue_TUCK", "TuckOut", "TuckIn", 1);

-- t-shirts
AddNewExtraItem("STFR.TShirt_USPS", "STFR.TShirt_USPS_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_DOC_Jefferson", "STFR.TShirt_DOC_Jefferson_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_DOC_Meade", "STFR.TShirt_DOC_Meade_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_EMS_Jefferson", "STFR.TShirt_EMS_Jefferson_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_EMS_Louisville", "STFR.TShirt_EMS_Louisville_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_EMS_Meade", "STFR.TShirt_EMS_Meade_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Ranger_Federal", "STFR.TShirt_Ranger_Federal_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Ranger_Conservation", "STFR.TShirt_Ranger_Conservation_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Ranger_State_Park", "STFR.TShirt_Ranger_State_Park_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Police_KSP_Officer", "STFR.TShirt_Police_KSP_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_KSP_SGT", "STFR.TShirt_Police_KSP_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_KSP_CPT", "STFR.TShirt_Police_KSP_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Police_WestPoint_Officer", "STFR.TShirt_Police_WestPoint_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_WestPoint_SGT", "STFR.TShirt_Police_WestPoint_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_WestPoint_CPT", "STFR.TShirt_Police_WestPoint_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Sheriff_Rosewood_Officer", "STFR.TShirt_Sheriff_Rosewood_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Sheriff_Rosewood_SGT", "STFR.TShirt_Sheriff_Rosewood_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Sheriff_Rosewood_CPT", "STFR.TShirt_Sheriff_Rosewood_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Police_Riverside_Officer", "STFR.TShirt_Police_Riverside_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Riverside_SGT", "STFR.TShirt_Police_Riverside_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Riverside_CPT", "STFR.TShirt_Police_Riverside_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Sheriff_Meade_Officer", "STFR.TShirt_Sheriff_Meade_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Sheriff_Meade_SGT", "STFR.TShirt_Sheriff_Meade_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Sheriff_Meade_CPT", "STFR.TShirt_Sheriff_Meade_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Police_Muldraugh_Officer", "STFR.TShirt_Police_Muldraugh_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Muldraugh_SGT", "STFR.TShirt_Police_Muldraugh_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Muldraugh_CPT", "STFR.TShirt_Police_Muldraugh_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Police_Jefferson_Officer", "STFR.TShirt_Police_Jefferson_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Jefferson_SGT", "STFR.TShirt_Police_Jefferson_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Jefferson_CPT", "STFR.TShirt_Police_Jefferson_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Sheriff_Jefferson_Officer", "STFR.TShirt_Sheriff_Jefferson_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Sheriff_Jefferson_SGT", "STFR.TShirt_Sheriff_Jefferson_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Sheriff_Jefferson_CPT", "STFR.TShirt_Sheriff_Jefferson_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Police_Louisville_Officer", "STFR.TShirt_Police_Louisville_Officer_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Louisville_SGT", "STFR.TShirt_Police_Louisville_SGT_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Louisville_CPT", "STFR.TShirt_Police_Louisville_CPT_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Fire_Louisville", "STFR.TShirt_Fire_Louisville_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Fire_Louisville_Supervisor", "STFR.TShirt_Fire_Louisville_Supervisor_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Fire_Louisville_Supervisor_Station", "STFR.TShirt_Fire_Louisville_Supervisor_Station_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Fire_Meade", "STFR.TShirt_Fire_Meade_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Fire_Meade_Supervisor", "STFR.TShirt_Fire_Meade_Supervisor_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Fire_Rosewood", "STFR.TShirt_Fire_Rosewood_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Fire_Rosewood_Supervisor", "STFR.TShirt_Fire_Rosewood_Supervisor_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Security_Bank", "STFR.TShirt_Security_Bank_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Security_Hotel_Havisham", "STFR.TShirt_Security_Hotel_Havisham_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Security_Mall_Grand_Ohio", "STFR.TShirt_Security_Mall_Grand_Ohio_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Security_Mall_Valley_Station", "STFR.TShirt_Security_Mall_Valley_Station_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Security_Mall_Louisville", "STFR.TShirt_Security_Mall_Louisville_OPEN", "CloseJacket", "OpenJacket", 0.75);

AddNewExtraItem("STFR.TShirt_Police_Louisville_Officer_SWAT_Black", "STFR.TShirt_Police_Louisville_Officer_SWAT_Black_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Louisville_Officer_SWAT_Camo", "STFR.TShirt_Police_Louisville_Officer_SWAT_Camo_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Jefferson_Officer_SWAT_Blue", "STFR.TShirt_Police_Jefferson_Officer_SWAT_Blue_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Sheriff_Jefferson_Officer_SWAT_Green", "STFR.TShirt_Sheriff_Jefferson_Officer_SWAT_Green_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Sheriff_Rosewood_Officer_SWAT_Green", "STFR.TShirt_Sheriff_Rosewood_Officer_SWAT_Green_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_WestPoint_Officer_SWAT_Navy", "STFR.TShirt_Police_WestPoint_Officer_SWAT_Navy_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_KSP_Officer_SWAT_Blue", "STFR.TShirt_Police_KSP_Officer_SWAT_Blue_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_KSP_Officer_SWAT_Camo", "STFR.TShirt_Police_KSP_Officer_SWAT_Camo_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Sheriff_Meade_Officer_SWAT_Tan", "STFR.TShirt_Sheriff_Meade_Officer_SWAT_Tan_OPEN", "CloseJacket", "OpenJacket", 0.75);
AddNewExtraItem("STFR.TShirt_Police_Riverside_Officer_SWAT_Blue", "STFR.TShirt_Police_Riverside_Officer_SWAT_Blue_OPEN", "CloseJacket", "OpenJacket", 0.75);

-- shirts
Add4WayExtraItem("STFR.Shirt_USPS","STFR.Shirt_USPS_ROLL","STFR.Shirt_USPS_OPEN_ROLL","STFR.Shirt_USPS_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_DOC_Jefferson","STFR.Shirt_DOC_Jefferson_ROLL","STFR.Shirt_DOC_Jefferson_OPEN_ROLL","STFR.Shirt_DOC_Jefferson_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_DOC_Meade","STFR.Shirt_DOC_Meade_ROLL","STFR.Shirt_DOC_Meade_OPEN_ROLL","STFR.Shirt_DOC_Meade_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_EMS_Jefferson","STFR.Shirt_EMS_Jefferson_ROLL","STFR.Shirt_EMS_Jefferson_OPEN_ROLL","STFR.Shirt_EMS_Jefferson_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_EMS_Louisville","STFR.Shirt_EMS_Louisville_ROLL","STFR.Shirt_EMS_Louisville_OPEN_ROLL","STFR.Shirt_EMS_Louisville_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_EMS_Meade","STFR.Shirt_EMS_Meade_ROLL","STFR.Shirt_EMS_Meade_OPEN_ROLL","STFR.Shirt_EMS_Meade_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Ranger_Federal","STFR.Shirt_Ranger_Federal_ROLL","STFR.Shirt_Ranger_Federal_OPEN_ROLL","STFR.Shirt_Ranger_Federal_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Ranger_Conservation","STFR.Shirt_Ranger_Conservation_ROLL","STFR.Shirt_Ranger_Conservation_OPEN_ROLL","STFR.Shirt_Ranger_Conservation_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Ranger_State_Park","STFR.Shirt_Ranger_State_Park_ROLL","STFR.Shirt_Ranger_State_Park_OPEN_ROLL","STFR.Shirt_Ranger_State_Park_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Police_KSP_Officer","STFR.Shirt_Police_KSP_Officer_ROLL","STFR.Shirt_Police_KSP_OfficerOPEN_ROLL","STFR.Shirt_Police_KSP_Officer_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_KSP_SGT","STFR.Shirt_Police_KSP_SGT_ROLL","STFR.Shirt_Police_KSP_SGT_OPEN_ROLL","STFR.Shirt_Police_KSP_SGT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_KSP_CPT","STFR.Shirt_Police_KSP_CPT_ROLL","STFR.Shirt_Police_KSP_CPT_OPEN_ROLL","STFR.Shirt_Police_KSP_CPT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Police_WestPoint_Officer","STFR.Shirt_Police_WestPoint_Officer_ROLL","STFR.Shirt_Police_WestPoint_Officer_OPEN_ROLL","STFR.Shirt_Police_WestPoint_Officer_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_WestPoint_SGT","STFR.Shirt_Police_WestPoint_SGT_ROLL","STFR.Shirt_Police_WestPoint_SGT_OPEN_ROLL","STFR.Shirt_Police_WestPoint_SGT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_WestPoint_CPT","STFR.Shirt_Police_WestPoint_CPT_ROLL","STFR.Shirt_Police_WestPoint_CPT_OPEN_ROLL","STFR.Shirt_Police_WestPoint_CPT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Sheriff_Rosewood_Officer","STFR.Shirt_Sheriff_Rosewood_Officer_ROLL","STFR.Shirt_Sheriff_Rosewood_Officer_OPEN_ROLL","STFR.Shirt_Sheriff_Rosewood_Officer_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Sheriff_Rosewood_SGT","STFR.Shirt_Sheriff_Rosewood_SGT_ROLL","STFR.Shirt_Sheriff_Rosewood_SGT_OPEN_ROLL","STFR.Shirt_Sheriff_Rosewood_SGT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Sheriff_Rosewood_CPT","STFR.Shirt_Sheriff_Rosewood_CPT_ROLL","STFR.Shirt_Sheriff_Rosewood_CPT_OPEN_ROLL","STFR.Shirt_Sheriff_Rosewood_CPT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Police_Riverside_Officer","STFR.Shirt_Police_Riverside_Officer_ROLL","STFR.Shirt_Police_Riverside_Officer_OPEN_ROLL","STFR.Shirt_Police_Riverside_Officer_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Riverside_SGT","STFR.Shirt_Police_Riverside_SGT_ROLL","STFR.Shirt_Police_Riverside_SGT_OPEN_ROLL","STFR.Shirt_Police_Riverside_SGT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Riverside_CPT","STFR.Shirt_Police_Riverside_CPT_ROLL","STFR.Shirt_Police_Riverside_CPT_OPEN_ROLL","STFR.Shirt_Police_Riverside_CPT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Sheriff_Meade_Officer","STFR.Shirt_Sheriff_Meade_Officer_ROLL","STFR.Shirt_Sheriff_Meade_Officer_OPEN_ROLL","STFR.Shirt_Sheriff_Meade_Officer_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Sheriff_Meade_SGT","STFR.Shirt_Sheriff_Meade_SGT_ROLL","STFR.Shirt_Sheriff_Meade_SGT_OPEN_ROLL","STFR.Shirt_Sheriff_Meade_SGT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Sheriff_Meade_CPT","STFR.Shirt_Sheriff_Meade_CPT_ROLL","STFR.Shirt_Sheriff_Meade_CPT_OPEN_ROLL","STFR.Shirt_Sheriff_Meade_CPT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Police_Muldraugh_Officer","STFR.Shirt_Police_Muldraugh_Officer_ROLL","STFR.Shirt_Police_Muldraugh_Officer_OPEN_ROLL","STFR.Shirt_Police_Muldraugh_Officer_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Muldraugh_SGT","STFR.Shirt_Police_Muldraugh_SGT_ROLL","STFR.Shirt_Police_Muldraugh_SGT_OPEN_ROLL","STFR.Shirt_Police_Muldraugh_SGT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Muldraugh_CPT","STFR.Shirt_Police_Muldraugh_CPT_ROLL","STFR.Shirt_Police_Muldraugh_CPT_OPEN_ROLL","STFR.Shirt_Police_Muldraugh_CPT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Police_Jefferson_Officer","STFR.Shirt_Police_Jefferson_Officer_ROLL","STFR.Shirt_Police_Jefferson_Officer_OPEN_ROLL","STFR.Shirt_Police_Jefferson_Officer_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Jefferson_SGT","STFR.Shirt_Police_Jefferson_SGT_ROLL","STFR.Shirt_Police_Jefferson_SGT_OPEN_ROLL","STFR.Shirt_Police_Jefferson_SGT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Jefferson_CPT","STFR.Shirt_Police_Jefferson_CPT_ROLL","STFR.Shirt_Police_Jefferson_CPT_OPEN_ROLL","STFR.Shirt_Police_Jefferson_CPT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Sheriff_Jefferson_Officer","STFR.Shirt_Sheriff_Jefferson_Officer_ROLL","STFR.Shirt_Sheriff_Jefferson_Officer_OPEN_ROLL","STFR.Shirt_Sheriff_Jefferson_Officer_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Sheriff_Jefferson_SGT","STFR.Shirt_Sheriff_Jefferson_SGT_ROLL","STFR.Shirt_Sheriff_Jefferson_SGT_OPEN_ROLL","STFR.Shirt_Sheriff_Jefferson_SGT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Sheriff_Jefferson_CPT","STFR.Shirt_Sheriff_Jefferson_CPT_ROLL","STFR.Shirt_Sheriff_Jefferson_CPT_OPEN_ROLL","STFR.Shirt_Sheriff_Jefferson_CPT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Police_Louisville_Officer","STFR.Shirt_Police_Louisville_Officer_ROLL","STFR.Shirt_Police_Louisville_Officer_OPEN_ROLL","STFR.Shirt_Police_Louisville_Officer_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Louisville_SGT","STFR.Shirt_Police_Louisville_SGT_ROLL","STFR.Shirt_Police_Louisville_SGT_OPEN_ROLL","STFR.Shirt_Police_Louisville_SGT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Louisville_CPT","STFR.Shirt_Police_Louisville_CPT_ROLL","STFR.Shirt_Police_Louisville_CPT_OPEN_ROLL","STFR.Shirt_Police_Louisville_CPT_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Fire_Louisville","STFR.Shirt_Fire_Louisville_ROLL","STFR.Shirt_Fire_Louisville_OPEN_ROLL","STFR.Shirt_Fire_Louisville_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Fire_Louisville_Supervisor","STFR.Shirt_Fire_Louisville_Supervisor_ROLL","STFR.Shirt_Fire_Louisville_Supervisor_OPEN_ROLL","STFR.Shirt_Fire_Louisville_Supervisor_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Fire_Louisville_Supervisor_Station","STFR.Shirt_Fire_Louisville_Supervisor_Station_ROLL","STFR.Shirt_Fire_Louisville_Supervisor_Station_OPEN_ROLL","STFR.Shirt_Fire_Louisville_Supervisor_Station_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Fire_Meade","STFR.Shirt_Fire_Meade_ROLL","STFR.Shirt_Fire_Meade_OPEN_ROLL","STFR.Shirt_Fire_Meade_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Fire_Meade_Supervisor","STFR.Shirt_Fire_Meade_Supervisor_ROLL","STFR.Shirt_Fire_Meade_Supervisor_OPEN_ROLL","STFR.Shirt_Fire_Meade_Supervisor_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Fire_Rosewood","STFR.Shirt_Fire_Rosewood_ROLL","STFR.Shirt_Fire_Rosewood_OPEN_ROLL","STFR.Shirt_Fire_Rosewood_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Fire_Rosewood_Supervisor","STFR.Shirt_Fire_Rosewood_Supervisor_ROLL","STFR.Shirt_Fire_Rosewood_Supervisor_OPEN_ROLL","STFR.Shirt_Fire_Rosewood_Supervisor_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Security_Bank","STFR.Shirt_Security_Bank_ROLL","STFR.Shirt_Security_Bank_OPEN_ROLL","STFR.Shirt_Security_Bank_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Security_Hotel_Havisham","STFR.Shirt_Security_Hotel_Havisham_ROLL","STFR.Shirt_Security_Hotel_Havisham_OPEN_ROLL","STFR.Shirt_Security_Hotel_Havisham_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Security_Hotel_Fancy","STFR.Shirt_Security_Hotel_Fancy_ROLL","STFR.Shirt_Security_Hotel_Fancy_OPEN_ROLL","STFR.Shirt_Security_Hotel_Fancy_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Security_Mall_Grand_Ohio","STFR.Shirt_Security_Mall_Grand_Ohio_ROLL","STFR.Shirt_Security_Mall_Grand_Ohio_OPEN_ROLL","STFR.Shirt_Security_Mall_Grand_Ohio_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Security_Mall_Valley_Station","STFR.Shirt_Security_Mall_Valley_Station_ROLL","STFR.Shirt_Security_Mall_Valley_Station_OPEN_ROLL","STFR.Shirt_Security_Mall_Valley_Station_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Security_Mall_Louisville","STFR.Shirt_Security_Mall_Louisville_ROLL","STFR.Shirt_Security_Mall_Louisville_OPEN_ROLL","STFR.Shirt_Security_Mall_Louisville_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)

Add4WayExtraItem("STFR.Shirt_Police_Louisville_Officer_SWAT_Black","STFR.Shirt_Police_Louisville_Officer_SWAT_Black_ROLL","STFR.Shirt_Police_Louisville_Officer_SWAT_Black_OPEN_ROLL","STFR.Shirt_Police_Louisville_Officer_SWAT_Black_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Louisville_Officer_SWAT_Camo","STFR.Shirt_Police_Louisville_Officer_SWAT_Camo_ROLL","STFR.Shirt_Police_Louisville_Officer_SWAT_Camo_OPEN_ROLL","STFR.Shirt_Police_Louisville_Officer_SWAT_Camo_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Jefferson_Officer_SWAT_Blue","STFR.Shirt_Police_Jefferson_Officer_SWAT_Blue_ROLL","STFR.Shirt_Police_Jefferson_Officer_SWAT_Blue_OPEN_ROLL","STFR.Shirt_Police_Jefferson_Officer_SWAT_Blue_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Sheriff_Jefferson_Officer_SWAT_Green","STFR.Shirt_Sheriff_Jefferson_Officer_SWAT_Green_ROLL","STFR.Shirt_Sheriff_Jefferson_Officer_SWAT_Green_OPEN_ROLL","STFR.Shirt_Sheriff_Jefferson_Officer_SWAT_Green_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Sheriff_Rosewood_Officer_SWAT_Green","STFR.Shirt_Sheriff_Rosewood_Officer_SWAT_Green_ROLL","STFR.Shirt_Sheriff_Rosewood_Officer_SWAT_Green_OPEN_ROLL","STFR.Shirt_Sheriff_Rosewood_Officer_SWAT_Green_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_WestPoint_Officer_SWAT_Navy","STFR.Shirt_Police_WestPoint_Officer_SWAT_Navy_ROLL","STFR.Shirt_Police_WestPoint_Officer_SWAT_Navy_OPEN_ROLL","STFR.Shirt_Police_WestPoint_Officer_SWAT_Navy_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_KSP_Officer_SWAT_Blue","STFR.Shirt_Police_KSP_Officer_SWAT_Blue_ROLL","STFR.Shirt_Police_KSP_Officer_SWAT_Blue_OPEN_ROLL","STFR.Shirt_Police_KSP_Officer_SWAT_Blue_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_KSP_Officer_SWAT_Camo","STFR.Shirt_Police_KSP_Officer_SWAT_Camo_ROLL","STFR.Shirt_Police_KSP_Officer_SWAT_Camo_OPEN_ROLL","STFR.Shirt_Police_KSP_Officer_SWAT_Camo_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Sheriff_Meade_Officer_SWAT_Tan","STFR.Shirt_Sheriff_Meade_Officer_SWAT_Tan_ROLL","STFR.Shirt_Sheriff_Meade_Officer_SWAT_Tan_OPEN_ROLL","STFR.Shirt_Sheriff_Meade_Officer_SWAT_Tan_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
Add4WayExtraItem("STFR.Shirt_Police_Riverside_Officer_SWAT_Blue","STFR.Shirt_Police_Riverside_Officer_SWAT_Blue_ROLL","STFR.Shirt_Police_Riverside_Officer_SWAT_Blue_OPEN_ROLL","STFR.Shirt_Police_Riverside_Officer_SWAT_Blue_OPEN","CloseRollDown","CloseRollUp","OpenRollUp","OpenRollDown",0.75)
