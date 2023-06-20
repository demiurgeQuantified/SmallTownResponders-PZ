if getActivatedMods():contains("Tandil") then

	objects = {

		-- Vehicle Zones
		-- Huge Bank
		  { name = "banksecurity", type = "ParkingStall", x = 10497, y = 14460, z = 0, width = 3, height = 8 },

		-- Behind The Large Bank
		  { name = "banksecurity", type = "ParkingStall", x = 10932, y = 14058, z = 0, width = 8, height = 3 },

		-- Main PD
		  { name = "policetandil", type = "ParkingStall", x = 10651, y = 13955, z = 0, width = 4, height = 18 },
		  { name = "policetandil", type = "ParkingStall", x = 10665, y = 13958, z = 0, width = 4, height = 15 },

		-- Behind The Large Bank
		  { name = "policetandil", type = "ParkingStall", x = 10916, y = 14058, z = 0, width = 15, height = 4 },

		-- Small PD
		  { name = "policetandil", type = "ParkingStall", x = 10425, y = 14470, z = 0, width = 4, height = 18 },
		  { name = "policetandil", type = "ParkingStall", x = 10448, y = 14470, z = 0, width = 4, height = 18 },
		  { name = "policetandil", type = "ParkingStall", x = 10448, y = 14446, z = 0, width = 4, height = 24 },
		  { name = "policetandil", type = "ParkingStall", x = 10415, y = 14459, z = 0, width = 18, height = 4 },
		  { name = "policetandil", type = "ParkingStall", x = 10415, y = 14446, z = 0, width = 18, height = 4 },

		-- Huge FD
		  { name = "firetandil", type = "ParkingStall", x = 10314, y = 14366, z = 0, width = 4, height = 24 },
		  { name = "firetandil", type = "ParkingStall", x = 10334, y = 14373, z = 0, width = 9, height = 4 },
		  { name = "firetandil", type = "ParkingStall", x = 10334, y = 14385, z = 0, width = 9, height = 4 },

		-- Behind The Huge FD
		  { name = "firetandil", type = "ParkingStall", x = 10333, y = 14317, z = 0, width = 18, height = 4 },

		-- North West Dirt Road Dead End
		  { name = "rangermeade", type = "ParkingStall", x = 10004, y = 13536, z = 0, width = 4, height = 3 },

		-- North West Dirt Road Ranger Compound
		  { name = "rangermeade", type = "ParkingStall", x = 10232, y = 13601, z = 0, width = 4, height = 21 },

		-- North East Dirt Road Dead Ends
		  { name = "rangermeade", type = "ParkingStall", x = 11346, y = 13642, z = 0, width = 4, height = 3 },
		  { name = "rangermeade", type = "ParkingStall", x = 11290, y = 13516, z = 0, width = 3, height = 4 },

		-- East Dirt Road Dead End
		  { name = "rangermeade", type = "ParkingStall", x = 11388, y = 13945, z = 0, width = 4, height = 3 },

		-- South West Dirt Road Dead Ends
		  { name = "rangermeade", type = "ParkingStall", x = 9937, y = 14761, z = 0, width = 3, height = 4 },
		  { name = "rangermeade", type = "ParkingStall", x = 10290, y = 14979, z = 0, width = 6, height = 4 },

		-- Post Office
		  { name = "usps", type = "ParkingStall", x = 10277, y = 13938, z = 0, width = 3, height = 4 },
		  { name = "usps", type = "ParkingStall", x = 10283, y = 13938, z = 0, width = 3, height = 4 },

		-- Zombie Zones
		-- Stadium Security Office
		  { name = "PoliceTandil", type = "ZombiesType", x = 10448, y = 13724, z = 1, width = 7, height = 6 },

		-- Gas Station Security Office
		  { name = "PoliceTandil", type = "ZombiesType", x = 10841, y = 13740, z = 1, width = 4, height = 6 },

		-- Main PD
		  { name = "PoliceTandil", type = "ZombiesType", x = 10648, y = 13951, z = 0, width = 47, height = 47 },

		-- Small PD
		  { name = "PoliceTandil", type = "ZombiesType", x = 10407, y = 14467, z = 0, width = 30, height = 28 },
		  { name = "PoliceTandil", type = "ZombiesType", x = 10406, y = 14466, z = 1, width = 18, height = 23 },

		-- Mansion Security Office
		  { name = "HotelFancy", type = "ZombiesType", x = 10031, y = 14470, z = 1, width = 21, height = 6 },

		-- Huge FD
		  { name = "FireDeptTandil", type = "ZombiesType", x = 10312, y = 14323, z = 0, width = 74, height = 46 },
		  { name = "FireDeptTandil", type = "ZombiesType", x = 10305, y = 14313, z = 1, width = 84, height = 60 },

		-- Large Bank
		  { name = "BankSecurity", type = "ZombiesType", x = 10913, y = 14010, z = 0, width = 51, height = 47 },
		  { name = "BankSecurity", type = "ZombiesType", x = 10912, y = 14009, z = 1, width = 52, height = 48 },

		-- Huge Bank
		  { name = "BankSecurity", type = "ZombiesType", x = 10458, y = 14447, z = 0, width = 34, height = 42 },
		  { name = "BankSecurity", type = "ZombiesType", x = 10456, y = 14445, z = 1, width = 37, height = 45 },
		  { name = "BankSecurity", type = "ZombiesType", x = 10456, y = 14443, z = 2, width = 37, height = 49 },
		  { name = "BankSecurity", type = "ZombiesType", x = 10454, y = 14443, z = 3, width = 42, height = 51 },

		-- Loot Zones
		-- Small PD
		  { name = "PoliceTandilL", type = "LootZone", x = 10414, y = 14472, z = 0, width = 2, height = 3 },
		  { name = "PoliceTandilL", type = "LootZone", x = 10409, y = 14482, z = 0, width = 4, height = 4 },

		-- Main PD
		  { name = "PoliceTandilL", type = "LootZone", x = 10668, y = 13976, z = 0, width = 3, height = 3 },
		  { name = "PoliceTandilL", type = "LootZone", x = 10675, y = 13976, z = 0, width = 3, height = 3 },

		-- Huge FD
		  { name = "FireDeptTandilL", type = "LootZone", x = 10337, y = 14326, z = 0, width = 9, height = 5 },
		  { name = "FireDeptTandilL", type = "LootZone", x = 10340, y = 14331, z = 0, width = 6, height = 6 },

	}

end