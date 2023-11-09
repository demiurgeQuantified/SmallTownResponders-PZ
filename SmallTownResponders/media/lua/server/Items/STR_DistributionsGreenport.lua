require 'Items/Distributions'
require 'Items/STR_Distributions'

Distributions = Distributions or {};

local function STRDistributionsGreenport()

	if getActivatedMods():contains("Greenport") and getActivatedMods():contains("Tandil") then

		-- Check if the custom loot zones are enabled in sandbox options
		--if SandboxVars.STR.LootZones and not SandboxVars.STR.TrunkOverrides then

		local STRdistributionTable = {

			bathroom = {
				counter = {
					procedural = true,
					procList = {
						{name="BathroomCounter", min=0, max=99},
						{name="BathroomCounterEmpty", min=0, max=99, forceForRooms="armysurplus;bank;bar;breakroom;church;classroom;daycare;empty;factory;fitness;firestorage;grocery;gym;meetingroom;metalshop;motelroom;policestorage;spiffoskitchen;restaurant;restaurantkitchen"},
						{name="BathroomCounterNoMeds", min=0, max=99, forceForItems="fixtures_bathroom_01_28;fixtures_bathroom_01_29;fixtures_bathroom_01_37;fixtures_bathroom_01_38"},
					}
				},
				locker = {
					procedural = true,
					procList = {
						{name="FactoryLockers", min=0, max=99, forceForRooms="batteryfactory;brewery;cabinetfactory;dogfoodfactory;factory;fryshipping;metalshop;radiofactory;warehouse;wirefactory;whiskeybottling"},
						{name="FireDeptLockers", min=0, max=99, forceForRooms="firestorage"},
						{name="GymLockers", min=0, max=99, forceForRooms="fitness;gym"},
						{name="HospitalLockers", min=0, max=99, forceForRooms="hospitalroom"},
						{name="PoliceLockers", min=0, max=99, forceForRooms="policestorage"},
						{name="PrisonGuardLockers", min=0, max=99, forceForRooms="cells"},
						{name="LockerTandilPD", min=0, max=99, forceForZones="PoliceTandilL"},
						{name="LockerGreenportPD", min=0, max=99, forceForZones="PoliceGreenportL"},
					}
				}
			},

			breakroom = {
				counter = {
					procedural = true,
					procList = {
						{name="BreakRoomCounter", min=0, max=99},
					}
				},
				freezer = {
					rolls = 1,
					items = {
						
					}
				},
				fridge = {
					procedural = true,
					procList = {
						{name="FridgeBreakRoom", min=0, max=99},
					}
				},
				overhead = {
					procedural = true,
					procList = {
						{name="BreakRoomShelves", min=0, max=99},
					}
				},
				shelves = {
					procedural = true,
					procList = {
						{name="BreakRoomShelves", min=0, max=99},
					}
				},
				locker = {
					procedural = true,
					procList = {
						{name="Locker", min=0, max=99, weightChance=100},
						{name="LockerArmyBedroom", min=0, max=99, forceForZones="Army"},
						{name="LockerArmyBedroom", min=0, max=99, forceForItems="furniture_bedding_01_56;furniture_bedding_01_57;furniture_bedding_01_58;furniture_bedding_01_59"},
						{name="LockerClassy", min=0, max=99, forceForZones="Rich"},
						{name="LockersUSPSHQ", min=0, max=99, forceForZones="USPSL"},
					}
				}
			},
		}

		table.insert(Distributions, 2, STRdistributionTable);

		SuburbsDistributions.all.Outfit_PoliceGreenport = SuburbsDistributions.all.Outfit_PoliceGreenport or {rolls = 1,items = {},junk= {rolls =1, items={}}} 
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceGreenport"].items, "STR.GreenportPoliceBadge")
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceGreenport"].items, 50)
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceGreenport"].items, "Base.HandTorch")
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceGreenport"].items, 35)

	elseif getActivatedMods():contains("Greenport") and not getActivatedMods():contains("Tandil") then

		-- Check if the custom loot zones are enabled in sandbox options
		--if SandboxVars.STR.LootZones and not SandboxVars.STR.TrunkOverrides then

		local STRdistributionTable = {

			bathroom = {
				counter = {
					procedural = true,
					procList = {
						{name="BathroomCounter", min=0, max=99},
						{name="BathroomCounterEmpty", min=0, max=99, forceForRooms="armysurplus;bank;bar;breakroom;church;classroom;daycare;empty;factory;fitness;firestorage;grocery;gym;meetingroom;metalshop;motelroom;policestorage;spiffoskitchen;restaurant;restaurantkitchen"},
						{name="BathroomCounterNoMeds", min=0, max=99, forceForItems="fixtures_bathroom_01_28;fixtures_bathroom_01_29;fixtures_bathroom_01_37;fixtures_bathroom_01_38"},
					}
				},
				locker = {
					procedural = true,
					procList = {
						{name="FactoryLockers", min=0, max=99, forceForRooms="batteryfactory;brewery;cabinetfactory;dogfoodfactory;factory;fryshipping;metalshop;radiofactory;warehouse;wirefactory;whiskeybottling"},
						{name="FireDeptLockers", min=0, max=99, forceForRooms="firestorage"},
						{name="GymLockers", min=0, max=99, forceForRooms="fitness;gym"},
						{name="HospitalLockers", min=0, max=99, forceForRooms="hospitalroom"},
						{name="PoliceLockers", min=0, max=99, forceForRooms="policestorage"},
						{name="PrisonGuardLockers", min=0, max=99, forceForRooms="cells"},
						{name="LockerGreenportPD", min=0, max=99, forceForZones="PoliceGreenportL"},
					}
				}
			},

			breakroom = {
				counter = {
					procedural = true,
					procList = {
						{name="BreakRoomCounter", min=0, max=99},
					}
				},
				freezer = {
					rolls = 1,
					items = {
						
					}
				},
				fridge = {
					procedural = true,
					procList = {
						{name="FridgeBreakRoom", min=0, max=99},
					}
				},
				overhead = {
					procedural = true,
					procList = {
						{name="BreakRoomShelves", min=0, max=99},
					}
				},
				shelves = {
					procedural = true,
					procList = {
						{name="BreakRoomShelves", min=0, max=99},
					}
				},
				locker = {
					procedural = true,
					procList = {
						{name="Locker", min=0, max=99, weightChance=100},
						{name="LockerArmyBedroom", min=0, max=99, forceForZones="Army"},
						{name="LockerArmyBedroom", min=0, max=99, forceForItems="furniture_bedding_01_56;furniture_bedding_01_57;furniture_bedding_01_58;furniture_bedding_01_59"},
						{name="LockerClassy", min=0, max=99, forceForZones="Rich"},
						{name="LockersUSPSHQ", min=0, max=99, forceForZones="USPSL"},
					}
				}
			},
		}

		table.insert(Distributions, 2, STRdistributionTable);

		SuburbsDistributions.all.Outfit_PoliceGreenport = SuburbsDistributions.all.Outfit_PoliceGreenport or {rolls = 1,items = {},junk= {rolls =1, items={}}} 
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceGreenport"].items, "STR.GreenportPoliceBadge")
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceGreenport"].items, 50)
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceGreenport"].items, "Base.HandTorch")
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceGreenport"].items, 35)

	end
end

Events.OnPreDistributionMerge.Add(STRDistributionsGreenport);
