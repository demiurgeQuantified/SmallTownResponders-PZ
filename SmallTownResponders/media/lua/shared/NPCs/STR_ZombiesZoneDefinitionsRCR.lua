require 'NPCs/ZombiesZoneDefinition'

local function STRSpawnsRCR()

	if getActivatedMods():contains("RavenCreek") or getActivatedMods():contains("10YL_RC") then

		local DOC = SandboxVars.STRS.DOC
		local EMS = SandboxVars.STRS.EMS
		local Dress = SandboxVars.STRS.Dress
		local Riot = SandboxVars.STRS.Riot
		local FireFormal = SandboxVars.STRS.FireFormal
		local Fireman = SandboxVars.STRS.Fireman
		local FiremanFull = SandboxVars.STRS.FiremanFull
		local Duffel = SandboxVars.STRS.Duffel
		local RavenCreekPD = SandboxVars.STRS.RavenCreekPD
		local RavenCreekInmate = SandboxVars.STRS.RavenCreekInmate

		ZombiesZoneDefinition = ZombiesZoneDefinition or {};

		-- Check if the custom zones are enabled in sandbox options
		if SandboxVars.STR.CustomZones then

			if SandboxVars.STR.VestRavenCreek then

				ZombiesZoneDefinition.PoliceRavenCreek = {
					PoliceRavenCreek = {
						name="PoliceRavenCreek",
						chance=RavenCreekPD,
					},
					PoliceRavenCreekRiot = {
						name="PoliceRavenCreekRiot",
						chance=Riot,
					},
					PoliceRavenCreekDress = {
						name="PoliceRavenCreekDress",
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

			elseif not SandboxVars.STR.VestRavenCreek then

				ZombiesZoneDefinition.PoliceRavenCreek = {
					PoliceRavenCreekNoVest = {
						name="PoliceRavenCreekNoVest",
						chance=RavenCreekPD,
					},
					PoliceRavenCreekRiotNoVest = {
						name="PoliceRavenCreekRiotNoVest",
						chance=Riot,
					},
					PoliceRavenCreekDress = {
						name="PoliceRavenCreekDress",
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

			ZombiesZoneDefinition.FireDeptRavenCreek = {
				EMSRavenCreek = {
					name="EMSRavenCreek",
					chance=EMS,
				},
				EMSRavenCreekDress = {
					name="EMSRavenCreekDress",
					chance=Dress,
				},
				EMSRavenCreekSupervisor = {
					name="EMSRavenCreekSupervisor",
					chance=EMS,
				},
				EMSRavenCreekDressSupervisor = {
					name="EMSRavenCreekDressSupervisor",
					chance=Dress,
				},
				Fireman_RavenCreek_Formal = {
					name="Fireman_RavenCreek_Formal",
					chance=FireFormal,
				},
				Fireman_RavenCreek_Formal_Supervisor = {
					name="Fireman_RavenCreek_Formal_Supervisor",
					chance=FireFormal,
				},
				Fireman_RavenCreek_Dress = {
					name="Fireman_RavenCreek_Dress",
					chance=Dress,
				},
				Fireman_RavenCreek_Dress_Supervisor = {
					name="Fireman_RavenCreek_Dress_Supervisor",
					chance=Dress,
				},
				Fireman_RavenCreek_Black = {
					name="Fireman_RavenCreek_Black",
					chance=Fireman,
				},
				FiremanFullSuit_RavenCreek_Black = {
					name="FiremanFullSuit_RavenCreek_Black",
					chance=FiremanFull,
				},
				Fireman_RavenCreek_Khaki = {
					name="Fireman_RavenCreek_Khaki",
					chance=Fireman,
				},
				FiremanFullSuit_RavenCreek_Khaki = {
					name="FiremanFullSuit_RavenCreek_Khaki",
					chance=FiremanFull,
				},
			}

			ZombiesZoneDefinition.RavenCreekPrison = {
				-- Gonna force male zombies in prison
				maleChance = 80,
				Doctor = {
					name="Doctor",
					chance=2,
				},
				Priest = {
					name="Priest",
					toSpawn=1,
					gender="male",
					mandatory="true",
				},
				Doctor2 = {
					name="Doctor",
					chance=20,
					room="medicalstorage",
				},
				Nurse = {
					name="Nurse",
					chance=30,
					room="medicalstorage",
				},
				Priest = {
					name="Priest",
					mandatory="true",
					toSpawn=1,
					gender="male",
				},
				Waiter_Diner = {
					name="Waiter_Diner",
					chance=2,
				},
				PrisonGuard = {
					name="DOC_RavenCreek",
					chance=DOC,
					gender="male",
				},
				OfficeWorkerSkirt = {
					name="OfficeWorkerSkirt",
					gender="female",
					chance=30,
					room="office",
				},
				OfficeWorker = {
					name="OfficeWorker",
					gender="male",
					chance=30,
					room="office",
					beardStyles="null:80",
				},
				Security = {
					name="DOC_RavenCreek",
					gender="male",
					chance=DOC,
					room="security",
				},
				Inmate = {
					name="InmateRavenCreek",
					chance=RavenCreekInmate,
					gender="male",
					room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
				},
				-- this one is used for lower chance of inmate in some rooms
				InmateLowerZone = {
					name="InmateRavenCreek",
					chance=RavenCreekInmate,
					gender="male",
					room="bathroom;kitchen;medicalstorage;library",
				},
				Naked = {
					name="Naked",
					chance=50,
					gender="male",
					room="bathroom",
				},
				Cook_Generic = {
					name="Cook_Generic",
					chance=30,
					gender="male",
					room="kitchen",
				},
			}

			if SandboxVars.STR.DuffelLoot then
				if SandboxVars.STR.VestRavenCreek then
					table.insert(ZombiesZoneDefinition.PoliceRavenCreek,{name = "PoliceRavenCreek_Bag", chance=Duffel});
				elseif not SandboxVars.STR.VestRavenCreek then
					table.insert(ZombiesZoneDefinition.PoliceRavenCreek,{name = "PoliceRavenCreekNoVest_Bag", chance=Duffel});
				end
			end
			if getActivatedMods():contains("Susceptible") then
				table.insert(ZombiesZoneDefinition.PoliceRavenCreek,{name = "SusceptiblePoliceRavenCreek", chance=5});
			end
		end
	end
end

Events.OnInitGlobalModData.Add(STRSpawnsRCR);
