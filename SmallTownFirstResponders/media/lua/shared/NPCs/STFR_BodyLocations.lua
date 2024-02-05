require 'NPCs/BodyLocations'
--***********************************************************
--**                    THE INDIE STONE                    **
--***********************************************************

-- Locations must be declared in render-order.
-- Location IDs must match BodyLocation= and CanBeEquipped= values in items.txt.
local group = BodyLocations.getGroup("Human")

group:getOrCreateLocation("DutyBelt")
group:getOrCreateLocation("ChestWalkie")
group:getOrCreateLocation("Neck2")

--group:setExclusive("DutyBelt", "Belt")
--group:setExclusive("DutyBelt", "BeltExtra")

group:setExclusive("FullSuitHead", "Neck2")
group:setExclusive("FullTop", "Neck2")
group:setExclusive("BodyCostume", "Neck2")
