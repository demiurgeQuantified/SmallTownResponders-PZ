-- This function has been adapted from the "Bra Storage" mod.
require('NPCs/MainCreationMethods');
STR_ItemFunction = STR_ItemFunction or {}

function STR_ItemFunction.DutyBelt(container, item)
	return (item:getDisplayCategory() == "Ammo")
end