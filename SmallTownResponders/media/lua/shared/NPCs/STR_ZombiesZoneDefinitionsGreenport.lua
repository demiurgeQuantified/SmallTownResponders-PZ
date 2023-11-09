require 'NPCs/ZombiesZoneDefinition'

local function STRSpawnsGreenport()

	if getActivatedMods():contains("Greenport") then

		local Dress = SandboxVars.STRS.Dress
		local Riot = SandboxVars.STRS.Riot
		local FireFormal = SandboxVars.STRS.FireFormal
		local Fireman = SandboxVars.STRS.Fireman
		local FiremanFull = SandboxVars.STRS.FiremanFull
		local Duffel = SandboxVars.STRS.Duffel
		local GreenportPD = SandboxVars.STRS.GreenportPD

		ZombiesZoneDefinition = ZombiesZoneDefinition or {};

		-- Check if the custom zones are enabled in sandbox options
		if SandboxVars.STR.CustomZones then

			if SandboxVars.STR.VestGreenport then

				ZombiesZoneDefinition.PoliceGreenport = {
					PoliceGreenport = {
						name="PoliceGreenport",
						chance=GreenportPD,
					},
					PoliceGreenportRiot = {
						name="PoliceGreenportRiot",
						chance=Riot,
					},
					PoliceGreenportDress = {
						name="PoliceGreenportDress",
						chance=Dress,
					},
					OfficeWorkerSkirt = {
						name="OfficeWorkerSkirt",
						chance=20,
						gender="female",
					},
					OfficeWorker = {
						name="OfficeWorker",
						chance=20,
						gender="male",
						beardStyles="null:80",
					},
				}

			elseif not SandboxVars.STR.VestGreenport then

				ZombiesZoneDefinition.PoliceGreenport = {
					PoliceRavenCreekNoVest = {
						name="PoliceGreenportNoVest",
						chance=GreenportPD,
					},
					PoliceGreenportRiotNoVest = {
						name="PoliceGreenportRiotNoVest",
						chance=Riot,
					},
					PoliceGreenportDress = {
						name="PoliceGreenportDress",
						chance=Dress,
					},
					OfficeWorkerSkirt = {
						name="OfficeWorkerSkirt",
						chance=20,
						gender="female",
					},
					OfficeWorker = {
						name="OfficeWorker",
						chance=20,
						gender="male",
						beardStyles="null:80",
					},
				}

			end

			if SandboxVars.STR.DuffelLoot then
				if SandboxVars.STR.VestGreenport then
					table.insert(ZombiesZoneDefinition.PoliceGreenport,{name = "PoliceGreenport_Bag", chance=Duffel});
				elseif not SandboxVars.STR.VestGreenport then
					table.insert(ZombiesZoneDefinition.PoliceGreenport,{name = "PoliceGreenportNoVest_Bag", chance=Duffel});
				end
			end
			if getActivatedMods():contains("Susceptible") then
				table.insert(ZombiesZoneDefinition.PoliceGreenport,{name = "SusceptiblePoliceGreenport", chance=5});
			end
		end
	end
end

Events.OnInitGlobalModData.Add(STRSpawnsGreenport);
