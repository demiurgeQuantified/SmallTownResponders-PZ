-- by albion#0123
-- Thanks again, Albion!

local Overrides = require 'overrides/STFR_overrides'
local ItemOverrides = {}

ItemOverrides.itemSwaps = {
    ['Base.Vest_BulletPolice'] = { -- item to replace
        Rosewood = 'STFR.Vest_BulletPolice_Meade', -- zone = replacement item
        JeffersonSD = 'STFR.Vest_BulletPolice_Meade',
        Meade = 'STFR.Vest_BulletPolice_Meade',
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Boilersuit_Prisoner'] = { -- item to replace
        RosewoodPrison = {'STFR.Boilersuit_Meade_Gen_Pop_Prisoner','STFR.Boilersuit_Meade_Low_Risk_Prisoner','STFR.Boilersuit_Meade_Supermax_Prisoner'},
        Louisville = {'STFR.Boilersuit_Jefferson_Prisoner'}, -- zone = replacement item
        Jefferson = {'STFR.Boilersuit_Jefferson_Prisoner'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Shirt_PrisonGuard'] = { -- item to replace
        Louisville = 'Remove', -- zone = replacement item
        Jefferson = 'Remove',
        Meade = {'STFR.Shirt_DOC_Meade'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Trousers_PrisonGuard'] = { -- item to replace
        Louisville = 'Remove', -- zone = replacement item
        Jefferson = 'Remove',
        Meade = {'STFR.Trousers_DOC_Meade'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Tshirt_PoliceGrey'] = { -- item to replace
        Meade = {'STFR.TShirt_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.TShirt_DOC_Meade'},
        Rosewood = {'STFR.TShirt_Sheriff_Rosewood_Officer'},
        Riverside = {'STFR.TShirt_Police_Riverside_Officer'},
        Muldraugh = {'STFR.TShirt_Police_Muldraugh_Officer'},
        WestPoint = {'STFR.TShirt_Police_WestPoint_Officer'},
        JeffersonSD = {'STFR.TShirt_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.TShirt_Police_Jefferson_Officer'},
        LouisvillePD = {'STFR.TShirt_Police_Louisville_Officer'},
        KSP = {'STFR.TShirt_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Tshirt_PoliceBlue'] = { -- item to replace
        Meade = {'STFR.TShirt_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.TShirt_DOC_Meade'},
        Rosewood = {'STFR.TShirt_Sheriff_Rosewood_Officer'},
        Riverside = {'STFR.TShirt_Police_Riverside_Officer'},
        Muldraugh = {'STFR.TShirt_Police_Muldraugh_Officer'},
        WestPoint = {'STFR.TShirt_Police_WestPoint_Officer'},
        JeffersonSD = {'STFR.TShirt_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.TShirt_Police_Jefferson_Officer'},
        LouisvillePD = {'STFR.TShirt_Police_Louisville_Officer'},
        KSP = {'STFR.TShirt_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Shirt_PoliceGrey'] = { -- item to replace
        Meade = {'STFR.Shirt_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.Shirt_DOC_Meade'},
        Rosewood = {'STFR.Shirt_Sheriff_Rosewood_Officer'},
        Riverside = {'STFR.Shirt_Police_Riverside_Officer'},
        Muldraugh = {'STFR.Shirt_Police_Muldraugh_Officer'},
        WestPoint = {'STFR.Shirt_Police_WestPoint_Officer'},
        JeffersonSD = {'STFR.Shirt_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.Shirt_Police_Jefferson_Officer'},
        LouisvillePD = {'STFR.Shirt_Police_Louisville_Officer'},
        KSP = {'STFR.Shirt_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Shirt_PoliceBlue'] = { -- item to replace
        Meade = {'STFR.Shirt_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.Shirt_DOC_Meade'},
        Rosewood = {'STFR.Shirt_Sheriff_Rosewood_Officer'},
        Riverside = {'STFR.Shirt_Police_Riverside_Officer'},
        Muldraugh = {'STFR.Shirt_Police_Muldraugh_Officer'},
        WestPoint = {'STFR.Shirt_Police_WestPoint_Officer'},
        JeffersonSD = {'STFR.Shirt_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.Shirt_Police_Jefferson_Officer'},
        LouisvillePD = {'STFR.Shirt_Police_Louisville_Officer'},
        KSP = {'STFR.Shirt_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Shirt_OfficerWhite'] = { -- item to replace
        Meade = {'STFR.Shirt_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.Shirt_DOC_Meade'},
        Rosewood = {'STFR.Shirt_Sheriff_Rosewood_Officer'},
        Riverside = {'STFR.Shirt_Police_Riverside_Officer'},
        Muldraugh = {'STFR.Shirt_Police_Muldraugh_Officer'},
        WestPoint = {'STFR.Shirt_Police_WestPoint_Officer'},
        JeffersonSD = {'STFR.Shirt_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.Shirt_Police_Jefferson_Officer'},
        LouisvillePD = {'STFR.Shirt_Police_Louisville_Officer'},
        KSP = {'STFR.Shirt_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Trousers_PoliceGrey'] = { -- item to replace
        Meade = {'STFR.Trousers_Sheriff_Meade'},
        RosewoodPrison = {'STFR.Trousers_DOC_Meade'},
        Rosewood = {'STFR.Trousers_Sheriff_Rosewood'},
        Riverside = {'STFR.Trousers_Police_Riverside'},
        Muldraugh = {'STFR.Trousers_Police_Muldraugh'},
        WestPoint = {'STFR.Trousers_Police_WestPoint'},
        JeffersonSD = {'STFR.Trousers_Sheriff_Jefferson'},
        JeffersonPD = {'STFR.Trousers_Police_Jefferson'},
        LouisvillePD = {'STFR.Trousers_Police_Louisville'},
        KSP = {'STFR.Trousers_Police_KSP_Summer', 'STFR.Trousers_Police_KSP_Winter'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Trousers_Police'] = { -- item to replace
        Meade = {'STFR.Trousers_Sheriff_Meade'},
        RosewoodPrison = {'STFR.Trousers_DOC_Meade'},
        Rosewood = {'STFR.Trousers_Sheriff_Rosewood'},
        Riverside = {'STFR.Trousers_Police_Riverside'},
        Muldraugh = {'STFR.Trousers_Police_Muldraugh'},
        WestPoint = {'STFR.Trousers_Police_WestPoint'},
        JeffersonSD = {'STFR.Trousers_Sheriff_Jefferson'},
        JeffersonPD = {'STFR.Trousers_Police_Jefferson'},
        LouisvillePD = {'STFR.Trousers_Police_Louisville'},
        KSP = {'STFR.Trousers_Police_KSP_Summer','STFR.Trousers_Police_KSP_Winter'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Jacket_Police'] = { -- item to replace
        Meade = {'STFR.Jacket_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.Jacket_DOC_Meade'},
        Rosewood = {'STFR.Jacket_Sheriff_Rosewood_Officer'},
        Riverside = {'STFR.Jacket_Police_Riverside_Officer'},
        Muldraugh = {'STFR.Jacket_Police_Muldraugh_Officer'},
        WestPoint = {'STFR.Jacket_Police_WestPoint_Officer'},
        JeffersonSD = {'STFR.Jacket_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.Jacket_Police_Jefferson_Officer'},
        LouisvillePD = {'STFR.Jacket_Police_Louisville_Officer'},
        KSP = {'STFR.Jacket_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Hat_Police'] = { -- item to replace
        Meade = {'STFR.Hat_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.Hat_BaseballCap_DOC_Meade'},
        Rosewood = {'STFR.Hat_Sheriff_Rosewood_Officer'},
        Riverside = {'STFR.Hat_Police_Riverside_Officer'},
        Muldraugh = {'STFR.Hat_Police_Muldraugh_Officer'},
        WestPoint = {'STFR.Hat_Police_WestPoint_Officer'},
        JeffersonSD = {'STFR.Hat_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.Hat_Police_Jefferson_Officer'},
        LouisvillePD = {'STFR.Hat_Police_Louisville_Officer'},
        KSP = {'STFR.Hat_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Hat_Police_Grey'] = { -- item to replace
        Meade = {'STFR.Hat_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.Hat_BaseballCap_DOC_Meade'},
        Rosewood = {'STFR.Hat_Sheriff_Rosewood_Officer'},
        Riverside = {'STFR.Hat_Police_Riverside_Officer'},
        Muldraugh = {'STFR.Hat_Police_Muldraugh_Officer'},
        WestPoint = {'STFR.Hat_Police_WestPoint_Officer'},
        JeffersonSD = {'STFR.Hat_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.Hat_Police_Jefferson_Officer'},
        LouisvillePD = {'STFR.Hat_Police_Louisville_Officer'},
        KSP = {'STFR.Hat_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Hat_Fireman'] = { -- item to replace
        Louisville = {'STFR.Hat_Fireman_Louisville_Black','STFR.Hat_Fireman_Louisville_Red','STFR.Hat_Fireman_Louisville_Yellow','STFR.Hat_Fireman_Louisville_White','STFR.Hat_Fireman_Louisville_Blue'}, -- zone = replacement item
        Rosewood = {'STFR.Hat_Fireman_Rosewood_Black','STFR.Hat_Fireman_Rosewood_Red','STFR.Hat_Fireman_Rosewood_Yellow','STFR.Hat_Fireman_Rosewood_White'},
        Meade = {'STFR.Hat_Fireman_Meade_Black','STFR.Hat_Fireman_Meade_Red','STFR.Hat_Fireman_Meade_Yellow','STFR.Hat_Fireman_Meade_White'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Jacket_Fireman'] = { -- item to replace
        Louisville = {'STFR.Jacket_Fireman_Black_Louisville','STFR.Jacket_Fireman_Khaki_Louisville'}, -- zone = replacement item
        Rosewood = {'STFR.Jacket_Fireman_Black_Rosewood','STFR.Jacket_Fireman_Khaki_Rosewood'},
        Meade = {'STFR.Jacket_Fireman_Black_Meade','STFR.Jacket_Fireman_Khaki_Meade'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Trousers_Fireman'] = { -- item to replace
        Louisville = {'STFR.Trousers_Fireman_Black_Louisville','STFR.Trousers_Fireman_Khaki_Louisville'}, -- zone = replacement item
        Rosewood = {'STFR.Trousers_Fireman_Black_Rosewood','STFR.Trousers_Fireman_Khaki_Rosewood'},
        Meade = {'STFR.Trousers_Fireman_Black_Meade','STFR.Trousers_Fireman_Khaki_Meade'},
        Default = false, -- don't override if not in one of these zones
    },
}

ItemOverrides.overrideContainers = {
    all = { -- room name
        TruckBed = true, -- container type = true
        TruckBedOpen = true,
    },
    policestorage = { -- room name
        locker = 'loot', -- container type = true
    },
    -- all is checked last, so you can override it like below
    CarLightsPolice = {
        TruckBed = 'police', -- use police zones instead of normal zones
        TruckBedOpen = 'police',
    },
    PickUpVanLightsFire = {
        TruckBed = true,
        TruckBedOpen = true,
    },
    VanAmbulance = {
        TruckBed = true,
        TruckBedOpen = true,
    },
}

local CarLightsPolice = ItemOverrides.overrideContainers.CarLightsPolice

ItemOverrides.overrideContainers.PickUpVanLightsPolice = CarLightsPolice -- reuse to save memory and less ugly code
ItemOverrides.overrideContainers['85vicsheriff'] = CarLightsPolice
ItemOverrides.overrideContainers['92crownvicPD'] = CarLightsPolice
ItemOverrides.overrideContainers['87capricePD'] = CarLightsPolice
ItemOverrides.overrideContainers['91blazerpd'] = CarLightsPolice

local PickUpVanLightsFire = ItemOverrides.overrideContainers.PickUpVanLightsFire

ItemOverrides.overrideContainers.PickUpTruckLightsFire = PickUpVanLightsFire -- reuse to save memory and less ugly code
ItemOverrides.overrideContainers['firepumper'] = PickUpVanLightsFire
ItemOverrides.overrideContainers['87c10fire'] = PickUpVanLightsFire

local VanAmbulance = ItemOverrides.overrideContainers.VanAmbulance

ItemOverrides.overrideContainers['80f350ambulance'] = VanAmbulance
ItemOverrides.overrideContainers['86econolineambulance'] = VanAmbulance

---@param container ItemContainer
ItemOverrides.overrideContainer = function(container, specialZones, zoneName)
    local parent = container:getParent()

    local zone
    if specialZones then
		if zoneName == 'police' then
			zone = Overrides.getZone(parent:getX(), parent:getY(), Overrides.zonesPolice)
		elseif zoneName == 'loot' then
			zone = Overrides.getZone(parent:getX(), parent:getY(), Overrides.zonesLoot)
		end
	else
		zone = Overrides.getZone(parent:getX(), parent:getY())
	end

    local items = container:getItems()
    local getItem = items.get
    for i = items:size()-1, 0, -1 do
        local item = getItem(items, i)

        local itemType = item:getFullType()
        if ItemOverrides.itemSwaps[itemType] then
			if zone ~= nil then
				local newType = ItemOverrides.itemSwaps[itemType][zone]
				if not newType then
					newType = ItemOverrides.itemSwaps[itemType].Default
				end

				if newType then
					if type(newType) == 'table' then
						newType = newType[ZombRand(#newType)+1]
					end
					container:Remove(item)
					if newType ~= 'Remove' then
						container:AddItem(newType)
					end
				end
			end
        end
    end
end

---@param roomType string
---@param containerType string
---@param container ItemContainer
ItemOverrides.OnFillContainer = function(roomType, containerType, container)
    --local zones = ItemOverrides.overrideContainers[roomType] and ItemOverrides.overrideContainers[roomType][containerType] or ItemOverrides.overrideContainers.all[containerType]
    local room = ItemOverrides.overrideContainers[roomType]
	if room then
		local conType = ItemOverrides.overrideContainers[roomType][containerType]
		local conTypeAll = ItemOverrides.overrideContainers.all[containerType]
		local zones = room and conType or conTypeAll
		if zones then
			if conType == 'police' or conTypeAll == 'police' then
				ItemOverrides.overrideContainer(container, zones == 'police', 'police')
			elseif conType == 'loot' or conTypeAll == 'loot' then
				ItemOverrides.overrideContainer(container, zones == 'loot', 'loot')
			elseif conType == true or conTypeAll == true then
				ItemOverrides.overrideContainer(container)
			end
		end
    end
end

ItemOverrides.OnInitGlobalModData = function()
	if SandboxVars.STFR.TrunkOverrides then
		Events.OnFillContainer.Add(ItemOverrides.OnFillContainer)
	end
end
Events.OnInitGlobalModData.Add(ItemOverrides.OnInitGlobalModData)

return ItemOverrides