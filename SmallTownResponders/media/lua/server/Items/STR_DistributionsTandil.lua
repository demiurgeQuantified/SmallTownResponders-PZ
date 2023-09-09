require 'Items/Distributions'
require 'Items/STR_Distributions'

Distributions = Distributions or {};

local function STRDistributionsTandil()

	if getActivatedMods():contains("Tandil") then

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
					}
				}
			},

			changeroom = {
				locker = {
					procedural = true,
					procList = {
						{name="BowlingAlleyLockers", min=0, max=99, forceForRooms="bowlingalley"},
						{name="FactoryLockers", min=0, max=99, forceForRooms="batteryfactory;brewery;dogfoodfactory;factory;fryshipping;metalshop;radiofactory;warehouse;wirefactory;whiskeybottling"},
						{name="FireDeptLockers", min=0, max=99, forceForRooms="firestorage"},
						{name="GymLockers", min=0, max=99, forceForRooms="fitness"},
						{name="HospitalLockers", min=0, max=99, forceForRooms="hospitalroom"},
						{name="HuntingLockers", min=0, max=99, forceForRooms="hunting"},
						{name="PoliceLockers", min=0, max=99, forceForRooms="policestorage"},
						{name="PrisonGuardLockers", min=0, max=99, forceForRooms="cells"},
						{name="LockerRosewoodSD", min=0, max=99, forceForRooms="policestorage", forceForZones="RosewoodSDL"},
						{name="LockerMuldraughPD", min=0, max=99, forceForRooms="policestorage", forceForZones="MuldraughPDL"},
						{name="LockerWestPointPD", min=0, max=99, forceForRooms="policestorage", forceForZones="WestPointPDL"},
						{name="LockerLouisvillePD", min=0, max=99, forceForZones="LouisvillePDL"},
						{name="LockerJeffersonPD", min=0, max=99, forceForZones="JeffersonPDL"},
						{name="LockerJeffersonSD", min=0, max=99, forceForZones="JeffersonSDL"},
						{name="LockerKSP", min=0, max=99, forceForRooms="lockerroom", forceForZones="LouisvilleKSPL"},
						{name="LockerMeadeDOC", min=0, max=99, forceForRooms="policestorage", forceForZones="RosewoodPrisonL"},
						{name="FireDeptLockersRW", min=0, max=99, forceForZones="FireDeptRWL"},
						{name="FireDeptLockersLV", min=0, max=99, forceForZones="FireDeptLVL"},
						{name="LockersUSPSHQ", min=0, max=99, forceForZones="USPSL"},
						{name="LockerTandilFD", min=0, max=99, forceForZones="FireDeptTandilL"},
					}
				}
			},
		}

		table.insert(ProceduralDistributions.list["PoliceLockers"].items, "STR.Hat_Police_Tandil_Dress");
		table.insert(ProceduralDistributions.list["PoliceLockers"].items, 1.5);


		table.insert(Distributions, 2, STRdistributionTable);

		SuburbsDistributions.all.Outfit_PoliceTandil = SuburbsDistributions.all.Outfit_PoliceTandil or {rolls = 1,items = {},junk= {rolls =1, items={}}} 
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceTandil"].items, "STR.TandilPoliceBadge")
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceTandil"].items, 50)
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceTandil"].items, "Base.HandTorch")
		table.insert(SuburbsDistributions["all"]["Outfit_PoliceTandil"].items, 35)

	end
end

Events.OnPreDistributionMerge.Add(STRDistributionsTandil);
