-- This function has been adapted from the "Bra Storage" mod.
require('NPCs/MainCreationMethods');
STFR_ItemFunction = STFR_ItemFunction or {}

function STFR_ItemFunction.DutyBelt(container, item)
	return (item:getDisplayCategory() == "Ammo")
end