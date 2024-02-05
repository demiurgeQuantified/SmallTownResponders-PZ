local VehicleDefinitions = require 'overrides/STFR_vehicledefinitions'
if isClient() then return end

local SkinTable = {}

function SkinTable.setValues()

	SkinTable.STFR_KSP = {}
	SkinTable.STFR_KSP[1] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "KSP") -- vanilla police car
	SkinTable.STFR_KSP[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsPolice", "KSP") -- vanilla police truck

	SkinTable.STFR_MCSO = {}
	SkinTable.STFR_MCSO[1] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "Meade") -- vanilla police car
	SkinTable.STFR_MCSO[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsPolice", "Meade") -- vanilla police truck

	SkinTable.STFR_RWSD = {}
	SkinTable.STFR_RWSD[1] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "Rosewood") -- vanilla police car
	SkinTable.STFR_RWSD[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsPolice", "Rosewood") -- vanilla police truck

	SkinTable.STFR_WPPD = {}
	SkinTable.STFR_WPPD[1] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "WestPoint", 1) -- vanilla police car
	SkinTable.STFR_WPPD[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsPolice", "WestPoint", 1) -- vanilla police truck

	SkinTable.STFR_WPPD[7] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "WestPoint", 2) -- vanilla police car
	SkinTable.STFR_WPPD[8] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "WestPoint", 2) -- vanilla police truck

	SkinTable.STFR_MDPD = {}
	SkinTable.STFR_MDPD[1] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "Muldraugh") -- vanilla police car
	SkinTable.STFR_MDPD[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsPolice", "Muldraugh") -- vanilla police truck

	SkinTable.STFR_RSPD = {}
	SkinTable.STFR_RSPD[1] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "Riverside") -- vanilla police car
	SkinTable.STFR_RSPD[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsPolice", "Riverside") -- vanilla police truck

	SkinTable.STFR_LVPD = {}
	SkinTable.STFR_LVPD[1] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "LouisvillePD") -- vanilla police car
	SkinTable.STFR_LVPD[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsPolice", "LouisvillePD") -- vanilla police truck

	SkinTable.STFR_JCPD = {}
	SkinTable.STFR_JCPD[1] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "JeffersonPD") -- vanilla police car
	SkinTable.STFR_JCPD[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsPolice", "JeffersonPD") -- vanilla police truck

	SkinTable.STFR_JCSD = {}
	SkinTable.STFR_JCSD[1] = VehicleDefinitions.getSkinTable("Base.CarLightsPolice", "JeffersonSD") -- vanilla police car
	SkinTable.STFR_JCSD[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsPolice", "JeffersonSD") -- vanilla police truck

	SkinTable.STFR_RGR = {}
	SkinTable.STFR_RGR[1] = VehicleDefinitions.getSkinTable("Base.CarLights", "Default") -- State Park Rangers
	SkinTable.STFR_RGR[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLights", "Default") -- State Park Rangers
	SkinTable.STFR_RGR[3] = VehicleDefinitions.getSkinTable("Base.PickUpTruckLights", "Default") -- State Park Rangers

	SkinTable.STFR_RGR[6] = VehicleDefinitions.getSkinTable("Base.CarLights", "Default") -- Fish And Wildlife Rangers
	SkinTable.STFR_RGR[7] = VehicleDefinitions.getSkinTable("Base.PickUpVanLights", "Default") -- Fish And Wildlife Rangers
	SkinTable.STFR_RGR[8] = VehicleDefinitions.getSkinTable("Base.PickUpTruckLights", "Default") -- Fish And Wildlife Rangers

	SkinTable.STFR_RGR[11] = VehicleDefinitions.getSkinTable("Base.CarLights", "Default") -- National Park Service
	SkinTable.STFR_RGR[12] = VehicleDefinitions.getSkinTable("Base.PickUpVanLights", "Default") -- National Park Service
	SkinTable.STFR_RGR[13] = VehicleDefinitions.getSkinTable("Base.PickUpTruckLights", "Default") -- National Park Service

	SkinTable.STFR_Fire = {}
	SkinTable.STFR_Fire[1] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsFire", "Rosewood") -- Rosewood
	SkinTable.STFR_Fire[2] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsFire", "Meade") -- Meade
	SkinTable.STFR_Fire[3] = VehicleDefinitions.getSkinTable("Base.PickUpVanLightsFire", "Louisville") -- Louisville

	SkinTable.STFR_Fire[4] = VehicleDefinitions.getSkinTable("Base.PickUpTruckLightsFire", "Rosewood") -- Rosewood
	SkinTable.STFR_Fire[5] = VehicleDefinitions.getSkinTable("Base.PickUpTruckLightsFire", "Meade") -- Meade
	SkinTable.STFR_Fire[6] = VehicleDefinitions.getSkinTable("Base.PickUpTruckLightsFire", "Louisville") -- Louisville

	SkinTable.STFR_EMS = {}
	SkinTable.STFR_EMS[1] = VehicleDefinitions.getSkinTable("Base.VanAmbulance", "Meade") -- Meade
	SkinTable.STFR_EMS[2] = VehicleDefinitions.getSkinTable("Base.VanAmbulance", "Louisville") -- Louisville
	SkinTable.STFR_EMS[3] = VehicleDefinitions.getSkinTable("Base.VanAmbulance", "Jefferson") -- Jefferson

	-- TODO: Fix the cargo van entry.
	SkinTable.STFR_MAIL = {}
	SkinTable.STFR_MAIL[1] = 3 -- CargoVan
	SkinTable.STFR_MAIL[2] = VehicleDefinitions.getSkinTable("Base.StepVanMail", "Default") -- StepVan

	if getActivatedMods():contains("FRUsedCars") then

		SkinTable.STFR_KSP[3] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "KSP") -- 92 vic
		SkinTable.STFR_KSP[4] = VehicleDefinitions.getSkinTable("Base.87capricePD", "KSP") -- 87 caprice
		SkinTable.STFR_KSP[5] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "KSP") -- 85 vic
		SkinTable.STFR_KSP[6] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "KSP") -- 91 blazer

		SkinTable.STFR_MCSO[3] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "Meade") -- 92 vic
		SkinTable.STFR_MCSO[4] = VehicleDefinitions.getSkinTable("Base.87capricePD", "Meade") -- 87 caprice
		SkinTable.STFR_MCSO[5] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "Meade") -- 85 vic
		SkinTable.STFR_MCSO[6] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "Meade") -- 91 blazer

		SkinTable.STFR_RWSD[3] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "Rosewood") -- 92 vic
		SkinTable.STFR_RWSD[4] = VehicleDefinitions.getSkinTable("Base.87capricePD", "Rosewood") -- 87 caprice
		SkinTable.STFR_RWSD[5] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "Rosewood") -- 85 vic
		SkinTable.STFR_RWSD[6] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "Rosewood") -- 91 blazer

		SkinTable.STFR_WPPD[3] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "WestPoint", 1) -- 92 vic
		SkinTable.STFR_WPPD[4] = VehicleDefinitions.getSkinTable("Base.87capricePD", "WestPoint", 1) -- 87 caprice
		SkinTable.STFR_WPPD[5] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "WestPoint", 1) -- 85 vic
		SkinTable.STFR_WPPD[6] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "WestPoint", 1) -- 91 blazer

		SkinTable.STFR_WPPD[9] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "WestPoint", 2) -- 92 vic
		SkinTable.STFR_WPPD[10] = VehicleDefinitions.getSkinTable("Base.87capricePD", "WestPoint", 2) -- 87 caprice
		SkinTable.STFR_WPPD[11] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "WestPoint", 2) -- 85 vic
		SkinTable.STFR_WPPD[12] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "WestPoint", 2) -- 91 blazer

		SkinTable.STFR_MDPD[3] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "Muldraugh") -- 92 vic
		SkinTable.STFR_MDPD[4] = VehicleDefinitions.getSkinTable("Base.87capricePD", "Muldraugh") -- 87 caprice
		SkinTable.STFR_MDPD[5] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "Muldraugh") -- 85 vic
		SkinTable.STFR_MDPD[6] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "Muldraugh") -- 91 blazer

		SkinTable.STFR_RSPD[3] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "Riverside") -- 92 vic
		SkinTable.STFR_RSPD[4] = VehicleDefinitions.getSkinTable("Base.87capricePD", "Riverside") -- 87 caprice
		SkinTable.STFR_RSPD[5] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "Riverside") -- 85 vic
		SkinTable.STFR_RSPD[6] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "Riverside") -- 91 blazer

		SkinTable.STFR_LVPD[3] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "LouisvillePD") -- 92 vic
		SkinTable.STFR_LVPD[4] = VehicleDefinitions.getSkinTable("Base.87capricePD", "LouisvillePD") -- 87 caprice
		SkinTable.STFR_LVPD[5] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "LouisvillePD") -- 85 vic
		SkinTable.STFR_LVPD[6] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "LouisvillePD") -- 91 blazer

		SkinTable.STFR_JCPD[3] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "JeffersonPD") -- 92 vic
		SkinTable.STFR_JCPD[4] = VehicleDefinitions.getSkinTable("Base.87capricePD", "JeffersonPD") -- 87 caprice
		SkinTable.STFR_JCPD[5] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "JeffersonPD") -- 85 vic
		SkinTable.STFR_JCPD[6] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "JeffersonPD") -- 91 blazer

		SkinTable.STFR_JCSD[3] = VehicleDefinitions.getSkinTable("Base.92crownvicPD", "JeffersonSD") -- 92 vic
		SkinTable.STFR_JCSD[4] = VehicleDefinitions.getSkinTable("Base.87capricePD", "JeffersonSD") -- 87 caprice
		SkinTable.STFR_JCSD[5] = VehicleDefinitions.getSkinTable("Base.85vicsheriff", "JeffersonSD") -- 85 vic
		SkinTable.STFR_JCSD[6] = VehicleDefinitions.getSkinTable("Base.91blazerpd", "JeffersonSD") -- 91 blazer

		SkinTable.STFR_RGR[4] = VehicleDefinitions.getSkinTable("Base.92wranglerranger", "Default", 1) -- State Park Rangers
		SkinTable.STFR_RGR[5] = VehicleDefinitions.getSkinTable("Base.85vicranger", "Default", 1) -- State Park Rangers

		SkinTable.STFR_RGR[9] = VehicleDefinitions.getSkinTable("Base.92wranglerranger", "Default", 2) -- Fish And Wildlife Rangers
		SkinTable.STFR_RGR[10] = VehicleDefinitions.getSkinTable("Base.85vicranger", "Default", 2) -- Fish And Wildlife Rangers

		SkinTable.STFR_RGR[14] = VehicleDefinitions.getSkinTable("Base.92wranglerranger", "Default", 3) -- National Park Service
		SkinTable.STFR_RGR[15] = VehicleDefinitions.getSkinTable("Base.85vicranger", "Default", 3) -- National Park Service

		SkinTable.STFR_Fire[7] = VehicleDefinitions.getSkinTable("Base.firepumper", "Rosewood") -- Rosewood
		SkinTable.STFR_Fire[8] = VehicleDefinitions.getSkinTable("Base.firepumper", "Meade") -- Meade
		SkinTable.STFR_Fire[9] = VehicleDefinitions.getSkinTable("Base.firepumper", "Louisville") -- Louisville

		SkinTable.STFR_Fire[10] = VehicleDefinitions.getSkinTable("Base.87c10fire", "Rosewood") -- Rosewood
		SkinTable.STFR_Fire[11] = VehicleDefinitions.getSkinTable("Base.87c10fire", "Meade") -- Meade
		SkinTable.STFR_Fire[12] = VehicleDefinitions.getSkinTable("Base.87c10fire", "Louisville") -- Louisville

		SkinTable.STFR_EMS[4] = VehicleDefinitions.getSkinTable("Base.80f350ambulance", "Meade") -- Meade
		SkinTable.STFR_EMS[5] = VehicleDefinitions.getSkinTable("Base.80f350ambulance", "Louisville") -- Louisville
		SkinTable.STFR_EMS[6] = VehicleDefinitions.getSkinTable("Base.80f350ambulance", "Jefferson") -- Jefferson

		SkinTable.STFR_EMS[7] = VehicleDefinitions.getSkinTable("Base.86econolineambulance", "Meade") -- Meade
		SkinTable.STFR_EMS[8] = VehicleDefinitions.getSkinTable("Base.86econolineambulance", "Louisville") -- Louisville
		SkinTable.STFR_EMS[9] = VehicleDefinitions.getSkinTable("Base.86econolineambulance", "Jefferson") -- Jefferson

	end
end

Events.OnGameBoot.Add(SkinTable.setValues)

return SkinTable