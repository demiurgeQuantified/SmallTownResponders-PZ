require 'NPCs/ZombiesZoneDefinition'

local function STRSpawnsTandil()

	if getActivatedMods():contains("Tandil") then

		local DOC = SandboxVars.STRS.DOC
		local EMS = SandboxVars.STRS.EMS
		local Dress = SandboxVars.STRS.Dress
		local Riot = SandboxVars.STRS.Riot
		local Ranger = SandboxVars.STRS.Ranger
		local FireFormal = SandboxVars.STRS.FireFormal
		local Fireman = SandboxVars.STRS.Fireman
		local FiremanFull = SandboxVars.STRS.FiremanFull
		local Duffel = SandboxVars.STRS.Duffel
		local TandilPD = SandboxVars.STRS.TandilPD

		ZombiesZoneDefinition = ZombiesZoneDefinition or {};

		-- Check if the custom zones are enabled in sandbox options
		if SandboxVars.STR.CustomZones then

			if SandboxVars.STR.VestTandil then

				ZombiesZoneDefinition.PoliceTandil = {
					PoliceTandil = {
						name="PoliceTandil",
						chance=TandilPD,
					},
					PoliceTandilRiot = {
						name="PoliceTandilRiot",
						chance=Riot,
					},
					PoliceTandilDress = {
						name="PoliceTandilDress",
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

			elseif not SandboxVars.STR.VestTandil then

				ZombiesZoneDefinition.PoliceTandil = {
					PoliceRavenCreekNoVest = {
						name="PoliceTandilNoVest",
						chance=TandilPD,
					},
					PoliceTandilRiotNoVest = {
						name="PoliceTandilRiotNoVest",
						chance=Riot,
					},
					PoliceTandilDress = {
						name="PoliceTandilDress",
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

			ZombiesZoneDefinition.FireDeptTandil = {
				EMSTandil = {
					name="EMSTandil",
					chance=EMS,
				},
				Fireman_Tandil_Formal = {
					name="Fireman_Tandil_Formal",
					chance=FireFormal,
				},
				Fireman_Tandil_Black = {
					name="Fireman_Tandil_Black",
					chance=Fireman,
				},
				FiremanFullSuit_Tandil_Black = {
					name="FiremanFullSuit_Tandil_Black",
					chance=FiremanFull,
				},
				Fireman_Tandil_Khaki = {
					name="Fireman_Tandil_Khaki",
					chance=Fireman,
				},
				FiremanFullSuit_Tandil_Khaki = {
					name="FiremanFullSuit_Tandil_Khaki",
					chance=FiremanFull,
				},
			}

			if SandboxVars.STR.DuffelLoot then
				if SandboxVars.STR.VestTandil then
					table.insert(ZombiesZoneDefinition.PoliceTandil,{name = "PoliceTandil_Bag", chance=Duffel});
				elseif not SandboxVars.STR.VestTandil then
					table.insert(ZombiesZoneDefinition.PoliceTandil,{name = "PoliceTandilNoVest_Bag", chance=Duffel});
				end
			end
			if getActivatedMods():contains("Susceptible") then
				table.insert(ZombiesZoneDefinition.PoliceTandil,{name = "SusceptiblePoliceTandil", chance=5});
			end
		end
	end
end

Events.OnInitGlobalModData.Add(STRSpawnsTandil);
