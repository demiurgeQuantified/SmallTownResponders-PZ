-- by albion#0123
-- Thanks again, Albion!

local Overrides = require 'overrides/STFR_overrides'
local ItemOverrides = {}

ItemOverrides.itemSwaps = {
    ['Base.Vest_BulletPolice'] = { -- item to replace
        Rosewood = 'STFR.Vest_BulletPolice_Meade', -- zone = replacement item
        JeffersonSD = 'STFR.Vest_BulletPolice_Meade',
        Meade = 'STFR.Vest_BulletPolice_Meade',
        RosewoodPrison = {'Remove'},
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
        Meade = {'STFR.TShirt_Sheriff_Meade_Officer','STFR.TShirt_Sheriff_Meade_SGT','STFR.TShirt_Sheriff_Meade_CPT'},
        RosewoodPrison = {'STFR.TShirt_DOC_Meade'},
        Rosewood = {'STFR.TShirt_Sheriff_Rosewood_Officer','STFR.TShirt_Sheriff_Rosewood_SGT','STFR.TShirt_Sheriff_Rosewood_CPT'},
        Riverside = {'STFR.TShirt_Police_Riverside_Officer','STFR.TShirt_Police_Riverside_SGT','STFR.TShirt_Police_Riverside_CPT'},
        Muldraugh = {'STFR.TShirt_Police_Muldraugh_Officer','STFR.TShirt_Police_Muldraugh_SGT','STFR.TShirt_Police_Muldraugh_CPT'},
        WestPoint = {'STFR.TShirt_Police_WestPoint_Officer','STFR.TShirt_Police_WestPoint_SGT','STFR.TShirt_Police_WestPoint_CPT'},
        JeffersonSD = {'STFR.TShirt_Sheriff_Jefferson_Officer','STFR.TShirt_Sheriff_Jefferson_SGT','STFR.TShirt_Sheriff_Jefferson_CPT'},
        JeffersonPD = {'STFR.TShirt_Police_Jefferson_Officer','STFR.TShirt_Police_Jefferson_SGT','STFR.TShirt_Police_Jefferson_CPT'},
        LouisvillePD = {'STFR.TShirt_Police_Louisville_Officer','STFR.TShirt_Police_Louisville_SGT','STFR.TShirt_Police_Louisville_CPT'},
        KSP = {'STFR.TShirt_Police_KSP_Officer','STFR.TShirt_Police_KSP_SGT','STFR.TShirt_Police_KSP_CPT'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Tshirt_PoliceBlue'] = { -- item to replace
        Meade = {'STFR.TShirt_Sheriff_Meade_Officer','STFR.TShirt_Sheriff_Meade_SGT','STFR.TShirt_Sheriff_Meade_CPT'},
        RosewoodPrison = {'STFR.TShirt_DOC_Meade'},
        Rosewood = {'STFR.TShirt_Sheriff_Rosewood_Officer','STFR.TShirt_Sheriff_Rosewood_SGT','STFR.TShirt_Sheriff_Rosewood_CPT'},
        Riverside = {'STFR.TShirt_Police_Riverside_Officer','STFR.TShirt_Police_Riverside_SGT','STFR.TShirt_Police_Riverside_CPT'},
        Muldraugh = {'STFR.TShirt_Police_Muldraugh_Officer','STFR.TShirt_Police_Muldraugh_SGT','STFR.TShirt_Police_Muldraugh_CPT'},
        WestPoint = {'STFR.TShirt_Police_WestPoint_Officer','STFR.TShirt_Police_WestPoint_SGT','STFR.TShirt_Police_WestPoint_CPT'},
        JeffersonSD = {'STFR.TShirt_Sheriff_Jefferson_Officer','STFR.TShirt_Sheriff_Jefferson_SGT','STFR.TShirt_Sheriff_Jefferson_CPT'},
        JeffersonPD = {'STFR.TShirt_Police_Jefferson_Officer','STFR.TShirt_Police_Jefferson_SGT','STFR.TShirt_Police_Jefferson_CPT'},
        LouisvillePD = {'STFR.TShirt_Police_Louisville_Officer','STFR.TShirt_Police_Louisville_SGT','STFR.TShirt_Police_Louisville_CPT'},
        KSP = {'STFR.TShirt_Police_KSP_Officer','STFR.TShirt_Police_KSP_SGT','STFR.TShirt_Police_KSP_CPT'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Shirt_PoliceGrey'] = { -- item to replace
        Meade = {'STFR.Shirt_Sheriff_Meade_Officer','STFR.Shirt_Sheriff_Meade_SGT','STFR.Shirt_Sheriff_Meade_CPT'},
        RosewoodPrison = {'STFR.Shirt_DOC_Meade'},
        Rosewood = {'STFR.Shirt_Sheriff_Rosewood_Officer','STFR.Shirt_Sheriff_Rosewood_SGT','STFR.Shirt_Sheriff_Rosewood_CPT'},
        Riverside = {'STFR.Shirt_Police_Riverside_Officer','STFR.Shirt_Police_Riverside_SGT','STFR.Shirt_Police_Riverside_CPT'},
        Muldraugh = {'STFR.Shirt_Police_Muldraugh_Officer','STFR.Shirt_Police_Muldraugh_SGT','STFR.Shirt_Police_Muldraugh_CPT'},
        WestPoint = {'STFR.Shirt_Police_WestPoint_Officer','STFR.Shirt_Police_WestPoint_SGT','STFR.Shirt_Police_WestPoint_CPT'},
        JeffersonSD = {'STFR.Shirt_Sheriff_Jefferson_Officer','STFR.Shirt_Sheriff_Jefferson_SGT','STFR.Shirt_Sheriff_Jefferson_CPT'},
        JeffersonPD = {'STFR.Shirt_Police_Jefferson_Officer','STFR.Shirt_Police_Jefferson_SGT','STFR.Shirt_Police_Jefferson_CPT'},
        LouisvillePD = {'STFR.Shirt_Police_Louisville_Officer','STFR.Shirt_Police_Louisville_SGT','STFR.Shirt_Police_Louisville_CPT'},
        KSP = {'STFR.Shirt_Police_KSP_Officer','STFR.Shirt_Police_KSP_SGT','STFR.Shirt_Police_KSP_CPT'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Shirt_PoliceBlue'] = { -- item to replace
        Meade = {'STFR.Shirt_Sheriff_Meade_Officer','STFR.Shirt_Sheriff_Meade_SGT','STFR.Shirt_Sheriff_Meade_CPT'},
        RosewoodPrison = {'STFR.Shirt_DOC_Meade'},
        Rosewood = {'STFR.Shirt_Sheriff_Rosewood_Officer','STFR.Shirt_Sheriff_Rosewood_SGT','STFR.Shirt_Sheriff_Rosewood_CPT'},
        Riverside = {'STFR.Shirt_Police_Riverside_Officer','STFR.Shirt_Police_Riverside_SGT','STFR.Shirt_Police_Riverside_CPT'},
        Muldraugh = {'STFR.Shirt_Police_Muldraugh_Officer','STFR.Shirt_Police_Muldraugh_SGT','STFR.Shirt_Police_Muldraugh_CPT'},
        WestPoint = {'STFR.Shirt_Police_WestPoint_Officer','STFR.Shirt_Police_WestPoint_SGT','STFR.Shirt_Police_WestPoint_CPT'},
        JeffersonSD = {'STFR.Shirt_Sheriff_Jefferson_Officer','STFR.Shirt_Sheriff_Jefferson_SGT','STFR.Shirt_Sheriff_Jefferson_CPT'},
        JeffersonPD = {'STFR.Shirt_Police_Jefferson_Officer','STFR.Shirt_Police_Jefferson_SGT','STFR.Shirt_Police_Jefferson_CPT'},
        LouisvillePD = {'STFR.Shirt_Police_Louisville_Officer','STFR.Shirt_Police_Louisville_SGT','STFR.Shirt_Police_Louisville_CPT'},
        KSP = {'STFR.Shirt_Police_KSP_Officer','STFR.Shirt_Police_KSP_SGT','STFR.Shirt_Police_KSP_CPT'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Shirt_OfficerWhite'] = { -- item to replace
        Meade = {'STFR.Shirt_Sheriff_Meade_Officer','STFR.Shirt_Sheriff_Meade_SGT','STFR.Shirt_Sheriff_Meade_CPT'},
        RosewoodPrison = {'STFR.Shirt_DOC_Meade'},
        Rosewood = {'STFR.Shirt_Sheriff_Rosewood_Officer','STFR.Shirt_Sheriff_Rosewood_SGT','STFR.Shirt_Sheriff_Rosewood_CPT'},
        Riverside = {'STFR.Shirt_Police_Riverside_Officer','STFR.Shirt_Police_Riverside_SGT','STFR.Shirt_Police_Riverside_CPT'},
        Muldraugh = {'STFR.Shirt_Police_Muldraugh_Officer','STFR.Shirt_Police_Muldraugh_SGT','STFR.Shirt_Police_Muldraugh_CPT'},
        WestPoint = {'STFR.Shirt_Police_WestPoint_Officer','STFR.Shirt_Police_WestPoint_SGT','STFR.Shirt_Police_WestPoint_CPT'},
        JeffersonSD = {'STFR.Shirt_Sheriff_Jefferson_Officer','STFR.Shirt_Sheriff_Jefferson_SGT','STFR.Shirt_Sheriff_Jefferson_CPT'},
        JeffersonPD = {'STFR.Shirt_Police_Jefferson_Officer','STFR.Shirt_Police_Jefferson_SGT','STFR.Shirt_Police_Jefferson_CPT'},
        LouisvillePD = {'STFR.Shirt_Police_Louisville_Officer','STFR.Shirt_Police_Louisville_SGT','STFR.Shirt_Police_Louisville_CPT'},
        KSP = {'STFR.Shirt_Police_KSP_Officer','STFR.Shirt_Police_KSP_SGT','STFR.Shirt_Police_KSP_CPT'},
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
        Meade = {'STFR.Jacket_Sheriff_Meade_Officer','STFR.Jacket_Sheriff_Meade_SGT','STFR.Jacket_Sheriff_Meade_CPT'},
        RosewoodPrison = {'STFR.Jacket_DOC_Meade'},
        Rosewood = {'STFR.Jacket_Sheriff_Rosewood_Officer','STFR.Jacket_Sheriff_Rosewood_SGT','STFR.Jacket_Sheriff_Rosewood_CPT'},
        Riverside = {'STFR.Jacket_Police_Riverside_Officer','STFR.Jacket_Police_Riverside_SGT','STFR.Jacket_Police_Riverside_CPT'},
        Muldraugh = {'STFR.Jacket_Police_Muldraugh_Officer','STFR.Jacket_Police_Muldraugh_SGT','STFR.Jacket_Police_Muldraugh_CPT'},
        WestPoint = {'STFR.Jacket_Police_WestPoint_Officer','STFR.Jacket_Police_WestPoint_SGT','STFR.Jacket_Police_WestPoint_CPT'},
        JeffersonSD = {'STFR.Jacket_Sheriff_Jefferson_Officer','STFR.Jacket_Sheriff_Jefferson_SGT','STFR.Jacket_Sheriff_Jefferson_CPT'},
        JeffersonPD = {'STFR.Jacket_Police_Jefferson_Officer','STFR.Jacket_Police_Jefferson_SGT','STFR.Jacket_Police_Jefferson_CPT'},
        LouisvillePD = {'STFR.Jacket_Police_Louisville_Officer','STFR.Jacket_Police_Louisville_SGT','STFR.Jacket_Police_Louisville_CPT'},
        KSP = {'STFR.Jacket_Police_KSP_Officer','STFR.Jacket_Police_KSP_SGT','STFR.Jacket_Police_KSP_CPT'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Hat_Police'] = { -- item to replace
        Meade = {'STFR.Hat_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.Hat_BaseballCap_DOC_Meade'},
        Rosewood = {'STFR.Hat_Sheriff_Rosewood_Officer','STFR.Hat_Sheriff_Rosewood_SGT','STFR.Hat_Sheriff_Rosewood_CPT'},
        Riverside = {'STFR.Hat_Police_Riverside_Officer','STFR.Hat_Police_Riverside_SGT','STFR.Hat_Police_Riverside_CPT'},
        Muldraugh = {'STFR.Hat_Police_Muldraugh_Officer','STFR.Hat_Police_Muldraugh_SGT','STFR.Hat_Police_Muldraugh_CPT'},
        WestPoint = {'STFR.Hat_Police_WestPoint_Officer','STFR.Hat_Police_WestPoint_SGT','STFR.Hat_Police_WestPoint_CPT'},
        JeffersonSD = {'STFR.Hat_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.Hat_Police_Jefferson_Officer','STFR.Hat_Police_Jefferson_SGT','STFR.Hat_Police_Jefferson_CPT'},
        LouisvillePD = {'STFR.Hat_Police_Louisville_Officer','STFR.Hat_Police_Louisville_SGT','STFR.Hat_Police_Louisville_CPT'},
        KSP = {'STFR.Hat_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Hat_Police_Grey'] = { -- item to replace
        Meade = {'STFR.Hat_Sheriff_Meade_Officer'},
        RosewoodPrison = {'STFR.Hat_BaseballCap_DOC_Meade'},
        Rosewood = {'STFR.Hat_Sheriff_Rosewood_Officer','STFR.Hat_Sheriff_Rosewood_SGT','STFR.Hat_Sheriff_Rosewood_CPT'},
        Riverside = {'STFR.Hat_Police_Riverside_Officer','STFR.Hat_Police_Riverside_SGT','STFR.Hat_Police_Riverside_CPT'},
        Muldraugh = {'STFR.Hat_Police_Muldraugh_Officer','STFR.Hat_Police_Muldraugh_SGT','STFR.Hat_Police_Muldraugh_CPT'},
        WestPoint = {'STFR.Hat_Police_WestPoint_Officer','STFR.Hat_Police_WestPoint_SGT','STFR.Hat_Police_WestPoint_CPT'},
        JeffersonSD = {'STFR.Hat_Sheriff_Jefferson_Officer'},
        JeffersonPD = {'STFR.Hat_Police_Jefferson_Officer','STFR.Hat_Police_Jefferson_SGT','STFR.Hat_Police_Jefferson_CPT'},
        LouisvillePD = {'STFR.Hat_Police_Louisville_Officer','STFR.Hat_Police_Louisville_SGT','STFR.Hat_Police_Louisville_CPT'},
        KSP = {'STFR.Hat_Police_KSP_Officer'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Hat_Fireman'] = { -- item to replace
        Louisville = {'STFR.Hat_Fireman_Louisville_Black','STFR.Hat_Fireman_Louisville_Red','STFR.Hat_Fireman_Louisville_Yellow','STFR.Hat_Fireman_Louisville_White','STFR.Hat_Fireman_Louisville_Blue'}, -- zone = replacement item
        JeffersonSD = {'STFR.Hat_Fireman_Louisville_Black','STFR.Hat_Fireman_Louisville_Red','STFR.Hat_Fireman_Louisville_Yellow','STFR.Hat_Fireman_Louisville_White','STFR.Hat_Fireman_Louisville_Blue'}, -- zone = replacement item
        JeffersonPD = {'STFR.Hat_Fireman_Louisville_Black','STFR.Hat_Fireman_Louisville_Red','STFR.Hat_Fireman_Louisville_Yellow','STFR.Hat_Fireman_Louisville_White','STFR.Hat_Fireman_Louisville_Blue'}, -- zone = replacement item
        LouisvillePD = {'STFR.Hat_Fireman_Louisville_Black','STFR.Hat_Fireman_Louisville_Red','STFR.Hat_Fireman_Louisville_Yellow','STFR.Hat_Fireman_Louisville_White','STFR.Hat_Fireman_Louisville_Blue'}, -- zone = replacement item
        KSP = {'STFR.Hat_Fireman_Louisville_Black','STFR.Hat_Fireman_Louisville_Red','STFR.Hat_Fireman_Louisville_Yellow','STFR.Hat_Fireman_Louisville_White','STFR.Hat_Fireman_Louisville_Blue'}, -- zone = replacement item
        Rosewood = {'STFR.Hat_Fireman_Rosewood_Black','STFR.Hat_Fireman_Rosewood_Red','STFR.Hat_Fireman_Rosewood_Yellow','STFR.Hat_Fireman_Rosewood_White'},
        Meade = {'STFR.Hat_Fireman_Meade_Black','STFR.Hat_Fireman_Meade_Red','STFR.Hat_Fireman_Meade_Yellow','STFR.Hat_Fireman_Meade_White'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Jacket_Fireman'] = { -- item to replace
        Louisville = {'STFR.Jacket_Fireman_Black_Louisville','STFR.Jacket_Fireman_Khaki_Louisville'}, -- zone = replacement item
        JeffersonSD = {'STFR.Jacket_Fireman_Black_Louisville','STFR.Jacket_Fireman_Khaki_Louisville'}, -- zone = replacement item
        JeffersonPD = {'STFR.Jacket_Fireman_Black_Louisville','STFR.Jacket_Fireman_Khaki_Louisville'}, -- zone = replacement item
        LouisvillePD = {'STFR.Jacket_Fireman_Black_Louisville','STFR.Jacket_Fireman_Khaki_Louisville'}, -- zone = replacement item
        KSP = {'STFR.Jacket_Fireman_Black_Louisville','STFR.Jacket_Fireman_Khaki_Louisville'}, -- zone = replacement item
        Rosewood = {'STFR.Jacket_Fireman_Black_Rosewood','STFR.Jacket_Fireman_Khaki_Rosewood'},
        Meade = {'STFR.Jacket_Fireman_Black_Meade','STFR.Jacket_Fireman_Khaki_Meade'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Trousers_Fireman'] = { -- item to replace
        Louisville = {'STFR.Trousers_Fireman_Black_Louisville','STFR.Trousers_Fireman_Khaki_Louisville'}, -- zone = replacement item
        JeffersonSD = {'STFR.Trousers_Fireman_Black_Louisville','STFR.Trousers_Fireman_Khaki_Louisville'}, -- zone = replacement item
        JeffersonPD = {'STFR.Trousers_Fireman_Black_Louisville','STFR.Trousers_Fireman_Khaki_Louisville'}, -- zone = replacement item
        LouisvillePD = {'STFR.Trousers_Fireman_Black_Louisville','STFR.Trousers_Fireman_Khaki_Louisville'}, -- zone = replacement item
        KSP = {'STFR.Trousers_Fireman_Black_Louisville','STFR.Trousers_Fireman_Khaki_Louisville'}, -- zone = replacement item
        Rosewood = {'STFR.Trousers_Fireman_Black_Rosewood','STFR.Trousers_Fireman_Khaki_Rosewood'},
        Meade = {'STFR.Trousers_Fireman_Black_Meade','STFR.Trousers_Fireman_Khaki_Meade'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Bag_Police'] = { -- item to replace
        Meade = {'STFR.Bag_DuffelBag_Sheriff_Meade'},
        RosewoodPrison = {'Remove'},
        Rosewood = {'STFR.Bag_DuffelBag_Sheriff_Rosewood'},
        Riverside = {'STFR.Bag_DuffelBag_Police_Black','STFR.Bag_DuffelBag_Police_Navy','STFR.Bag_DuffelBag_Police_Olive'},
        Muldraugh = {'STFR.Bag_DuffelBag_Police_Black','STFR.Bag_DuffelBag_Police_Navy','STFR.Bag_DuffelBag_Police_Olive'},
        WestPoint = {'STFR.Bag_DuffelBag_Police_Black','STFR.Bag_DuffelBag_Police_Navy','STFR.Bag_DuffelBag_Police_Olive'},
        JeffersonSD = {'STFR.Bag_DuffelBag_Police_Black','STFR.Bag_DuffelBag_Police_Navy','STFR.Bag_DuffelBag_Police_Olive'},
        JeffersonPD = {'STFR.Bag_DuffelBag_Police_Black','STFR.Bag_DuffelBag_Police_Navy','STFR.Bag_DuffelBag_Police_Olive'},
        LouisvillePD = {'STFR.Bag_DuffelBag_Police_Black','STFR.Bag_DuffelBag_Police_Navy','STFR.Bag_DuffelBag_Police_Olive'},
        KSP = {'STFR.Bag_DuffelBag_Police_KSP'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Hat_CrashHelmet_Police'] = { -- item to replace
        Meade = {'STFR.Hat_Crash_Helmet_Sheriff_Meade'},
        RosewoodPrison = {'Remove'},
        Rosewood = {'STFR.Hat_Crash_Helmet_Sheriff_Rosewood'},
        Riverside = {'STFR.Hat_Crash_Helmet_Police_Riverside'},
        Muldraugh = {'STFR.Hat_Crash_Helmet_Police_Muldraugh'},
        WestPoint = {'STFR.Hat_Crash_Helmet_Police_WestPoint'},
        JeffersonSD = {'STFR.Hat_Crash_Helmet_Sheriff_Jefferson'},
        JeffersonPD = {'STFR.Hat_Crash_Helmet_Police_Jefferson'},
        LouisvillePD = {'STFR.Hat_Crash_Helmet_Police_Louisville'},
        KSP = {'STFR.Hat_Crash_Helmet_Police_KSP'},
        Default = false, -- don't override if not in one of these zones
    },
    ['Base.Hat_CHiPsHelmet'] = { -- item to replace
        Meade = {'STFR.Hat_Crash_Helmet_Sheriff_Meade'},
        RosewoodPrison = {'Remove'},
        Rosewood = {'STFR.Hat_Crash_Helmet_Sheriff_Rosewood'},
        Riverside = {'STFR.Hat_Crash_Helmet_Police_Riverside'},
        Muldraugh = {'STFR.Hat_Crash_Helmet_Police_Muldraugh'},
        WestPoint = {'STFR.Hat_Crash_Helmet_Police_WestPoint'},
        JeffersonSD = {'STFR.Hat_Crash_Helmet_Sheriff_Jefferson'},
        JeffersonPD = {'STFR.Hat_Crash_Helmet_Police_Jefferson'},
        LouisvillePD = {'STFR.Hat_Crash_Helmet_Police_Louisville'},
        KSP = {'STFR.Hat_Crash_Helmet_Police_KSP'},
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
        metal_shelves = 'loot', -- container type = true
        crate = 'loot', -- container type = true
    },
    firestorage = { -- room name
        locker = 'loot', -- container type = true
        metal_shelves = 'loot', -- container type = true
    },
    lockerroom = { -- room name
        locker = 'loot', -- container type = true
    },
    locker = { -- room name
        locker = 'loot', -- container type = true
    },
    changeroom = { -- room name
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
    prisonbus = {
        TruckBed = true,
        TruckBedOpen = true,
    },
}

local CarLightsPolice = ItemOverrides.overrideContainers.CarLightsPolice

ItemOverrides.overrideContainers.PickUpVanLightsPolice = CarLightsPolice -- reuse to save memory and less ugly code
ItemOverrides.overrideContainers['CarLightsSheriff'] = CarLightsPolice
ItemOverrides.overrideContainers['CarLightsStatepolice'] = CarLightsPolice
ItemOverrides.overrideContainers['85vicsheriff'] = CarLightsPolice
ItemOverrides.overrideContainers['92crownvicPD'] = CarLightsPolice
ItemOverrides.overrideContainers['87capricePD'] = CarLightsPolice
ItemOverrides.overrideContainers['91blazerpd'] = CarLightsPolice
ItemOverrides.overrideContainers['chevystepvanswat'] = {FR_VehicleArmory = 'police', FR_VehicleArmory2 = 'police'}
ItemOverrides.overrideContainers['86econolineambulance_swat'] = CarLightsPolice
ItemOverrides.overrideContainers['80kz1000'] = {TruckBed = 'police', KZ1Ktrunk = 'police', KZ1Kleftbox = 'police', KZ1Krightbox = 'police'}
ItemOverrides.overrideContainers['pzkChevalierCeriseSedanPolice'] = CarLightsPolice
ItemOverrides.overrideContainers['pzkDashMayorPolice'] = CarLightsPolice
ItemOverrides.overrideContainers['pzkFranklinTriumphTWDPolice'] = CarLightsPolice
ItemOverrides.overrideContainers['pzkChevalierTowTruckPolice'] = CarLightsPolice
ItemOverrides.overrideContainers['pzkFranklinGalloperPolice'] = CarLightsPolice
ItemOverrides.overrideContainers['pzkChevalierLaserPolice'] = CarLightsPolice
ItemOverrides.overrideContainers['pzkFranklinStallionPolice'] = CarLightsPolice
ItemOverrides.overrideContainers['pzkFranklinTriumphPolice'] = CarLightsPolice
ItemOverrides.overrideContainers['pzkStepVanSwat'] = CarLightsPolice
ItemOverrides.overrideContainers['pzkFranklinSwatTruck'] = CarLightsPolice

local PickUpVanLightsFire = ItemOverrides.overrideContainers.PickUpVanLightsFire

ItemOverrides.overrideContainers.PickUpTruckLightsFire = PickUpVanLightsFire -- reuse to save memory and less ugly code
ItemOverrides.overrideContainers['firepumper'] = PickUpVanLightsFire
ItemOverrides.overrideContainers['87c10fire'] = PickUpVanLightsFire
ItemOverrides.overrideContainers['pzkChevalierCeriseSedanFire'] = PickUpVanLightsFire
ItemOverrides.overrideContainers['pzkFranklinTriumphTWDFire'] = PickUpVanLightsFire
ItemOverrides.overrideContainers['pzkChevalierLaserFire'] = PickUpVanLightsFire
ItemOverrides.overrideContainers['pzkFranklinGalloperFire'] = PickUpVanLightsFire
ItemOverrides.overrideContainers['pzkChevalierTowTruckFire'] = PickUpVanLightsFire
ItemOverrides.overrideContainers['pzkFranklinTruckFire'] = PickUpVanLightsFire
ItemOverrides.overrideContainers['pzkFranklinTruckFireTanker'] = PickUpVanLightsFire

local VanAmbulance = ItemOverrides.overrideContainers.VanAmbulance

ItemOverrides.overrideContainers['80f350ambulance'] = VanAmbulance
ItemOverrides.overrideContainers['86econolineambulance'] = VanAmbulance
ItemOverrides.overrideContainers['pzkVanBoxAmbulance'] = VanAmbulance
ItemOverrides.overrideContainers['pzkVanBoxFiretruck'] = VanAmbulance

local prisonbus = ItemOverrides.overrideContainers.prisonbus

ItemOverrides.overrideContainers['86econoline_doc'] = prisonbus
ItemOverrides.overrideContainers['Van_doc'] = prisonbus
ItemOverrides.overrideContainers['pzkVanPolice'] = prisonbus
ItemOverrides.overrideContainers['pzkFranklinTruckBusPrison'] = prisonbus

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