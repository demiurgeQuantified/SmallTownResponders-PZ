if getActivatedMods():contains("Greenport") then

	objects = {

		-- Vehicle Zones
		-- PD
		  { name = "policegreenport", type = "ParkingStall", x = 8578, y = 7647, z = 0, width = 3, height = 4 },
		  { name = "policegreenport", type = "ParkingStall", x = 8578, y = 7639, z = 0, width = 3, height = 4 },
		  { name = "policegreenport", type = "ParkingStall", x = 8578, y = 7631, z = 0, width = 3, height = 4 },
		  { name = "policegreenport", type = "ParkingStall", x = 8578, y = 7623, z = 0, width = 3, height = 4 },
		  { name = "banksecurity", type = "ParkingStall", x = 8353, y = 7580, z = 0, width = 3, height = 5, properties = { Direction = "S" } },

		-- USPS
		  { name = "usps", type = "ParkingStall", x = 8335, y = 7551, z = 0, width = 3, height = 4, properties = { Direction = "S" } },
		  { name = "usps", type = "ParkingStall", x = 8338, y = 7551, z = 0, width = 3, height = 4, properties = { Direction = "S" } },
		  { name = "usps", type = "ParkingStall", x = 8341, y = 7551, z = 0, width = 3, height = 4, properties = { Direction = "S" } },

		-- Zombie Zones
		-- PD
		  { name = "PoliceGreenport", type = "ZombiesType", x = 8559, y = 7627, z = 0, width = 18, height = 18 },

		-- Bank
		  { name = "BankSecurity", type = "ZombiesType", x = 8333, y = 7577, z = 0, width = 16, height = 17 },

		-- USPS
		  { name = "USPS", type = "ZombiesType", x = 8333, y = 7557, z = 0, width = 14, height = 13 },
		  { name = "USPS", type = "ZombiesType", x = 8333, y = 7557, z = 1, width = 10, height = 13 },

		-- Loot Zones
		-- PD
		  { name = "PoliceGreenportL", type = "LootZone", x = 8556, y = 7637, z = 0, width = 1, height = 1 },
		  { name = "PoliceGreenportL", type = "LootZone", x = 8556, y = 7633, z = 0, width = 1, height = 1 },

		-- USPS
		  { name = "USPSL", type = "LootZone", x = 8333, y = 7569, z = 0, width = 1, height = 2 },

	}

end