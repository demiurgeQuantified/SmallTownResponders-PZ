-- by albion #0123
-- seriously, thanks Albion!
local Overrides = require 'overrides/overrides'
local ClothingOverrides = {}

ClothingOverrides.outfitsToSwap = {
    Police = 'Police',
    PoliceState = 'Police',
    PoliceRiot = 'Police',
    Fireman = 'Fireman',
    FiremanFullSuit = 'Fireman',
    Ranger = 'Ranger',
    Postal = 'Postal',
    AmbulanceDriver = 'EMS',
    PrisonGuard = 'PrisonGuard',
    Inmate = 'Inmate',
    InmateEscaped = 'InmateEscaped',
    -- susceptible
    SusceptiblePoliceGasmask = 'PoliceSusceptible',
    SusceptibleFirefighter = 'FiremanSusceptible',
}

ClothingOverrides.zonesToOutfit = {
    Rosewood = {
        --Police = 'PoliceRosewood',
        Fireman = {'Fireman_Rosewood_Black', 'FiremanFullSuit_Rosewood_Black', 'Fireman_Rosewood_Khaki', 'FiremanFullSuit_Rosewood_Khaki'},
		PoliceSusceptible = 'SusceptiblePoliceRosewood',
		FiremanSusceptible = {'SusceptibleFireman_Rosewood_Black', 'SusceptibleFiremanFullSuit_Rosewood_Black', 'SusceptibleFireman_Rosewood_Khaki', 'SusceptibleFiremanFullSuit_Rosewood_Khaki'},},
    Louisville = {
        Fireman = {'Fireman_Louisville_Black', 'FiremanFullSuit_Louisville_Black', 'Fireman_Louisville_Khaki', 'FiremanFullSuit_Louisville_Khaki'},
        EMS = 'EMSLouisville',
        PrisonGuard = 'DOC_Jefferson',
        Inmate = 'InmateJefferson',
        InmateEscaped = 'InmateEscapedJefferson',
		FiremanSusceptible = {'SusceptibleFireman_Louisville_Black', 'SusceptibleFiremanFullSuit_Louisville_Black', 'SusceptibleFireman_Louisville_Khaki', 'SusceptibleFiremanFullSuit_Louisville_Khaki'},},
    Jefferson = {
        Fireman = {'Fireman_Louisville_Black', 'FiremanFullSuit_Louisville_Black', 'Fireman_Louisville_Khaki', 'FiremanFullSuit_Louisville_Khaki'},
        EMS = 'EMSJefferson',
		FiremanSusceptible = {'SusceptibleFireman_Louisville_Black', 'SusceptibleFiremanFullSuit_Louisville_Black', 'SusceptibleFireman_Louisville_Khaki', 'SusceptibleFiremanFullSuit_Louisville_Khaki'},},
    RavenCreek = {
        --Police = 'PoliceRavenCreek',
        Fireman = {'Fireman_RavenCreek_Black', 'FiremanFullSuit_RavenCreek_Black', 'Fireman_RavenCreek_Khaki', 'FiremanFullSuit_RavenCreek_Khaki'},
        EMS = 'EMSRavenCreek',
        PrisonGuard = 'DOC_RavenCreek',
        Inmate = {'InmateRavenCreek'},
        InmateEscaped = 'InmateEscapedRavenCreek',
		PoliceSusceptible = 'SusceptiblePoliceRavenCreek',
		FiremanSusceptible = {'SusceptibleFireman_RavenCreek_Black', 'SusceptibleFiremanFullSuit_RavenCreek_Black', 'SusceptibleFireman_RavenCreek_Khaki', 'SusceptibleFiremanFullSuit_RavenCreek_Khaki'},},
    -- police only zones
    Riverside = {
        --Police = 'PoliceRiverside',
		PoliceSusceptible = 'SusceptiblePoliceRiverside',},
    Muldraugh = {
        --Police = 'PoliceMuldraugh',
		PoliceSusceptible = 'SusceptiblePoliceMuldraugh',},
    WestPoint = {
        --Police = 'PoliceWestPoint',
		PoliceSusceptible = 'SusceptiblePoliceWestPoint',},
    JeffersonSD = {
        --Police = 'PoliceJeffersonSD',
		PoliceSusceptible = 'SusceptiblePoliceJeffersonSD',},
    JeffersonPD = {
        --Police = 'PoliceJeffersonPD',
		PoliceSusceptible = 'SusceptiblePoliceJeffersonPD',},
    LouisvillePD = {
        --Police = 'PoliceLouisville',
		PoliceSusceptible = 'SusceptiblePoliceLouisville',},
    KSP = {
        Police = 'KSP_Trooper',
		PoliceSusceptible = 'SusceptibleKSP_Trooper',},
    -- default
    Meade = {
        Ranger = {'FederalRanger', 'State_LawRanger', 'StateRanger'},
        --Police = 'PoliceMeade',
        Fireman = {'Fireman_Meade_Black', 'FiremanFullSuit_Meade_Black', 'Fireman_Meade_Khaki', 'FiremanFullSuit_Meade_Khaki'},
        EMS = 'EMSMeade',
        PrisonGuard = 'DOC_Meade',
        Inmate = {'InmateMeadeOrange', 'InmateMeadeYellow', 'InmateMeadeRed'},
        InmateEscaped = 'InmateEscapedMeade',
		PoliceSusceptible = 'SusceptiblePoliceMeade',
		FiremanSusceptible = {'SusceptibleFireman_Meade_Black', 'SusceptibleFiremanFullSuit_Meade_Black', 'SusceptibleFireman_Meade_Khaki', 'SusceptibleFiremanFullSuit_Meade_Khaki'},
		Postal = 'USPS_Mail',},
}

ClothingOverrides.overrideOutfit = function(zombie)
    local outfitType = ClothingOverrides.outfitsToSwap[zombie:getOutfitName()]
    if not outfitType then return end

    local x = zombie:getX()
    local y = zombie:getY()
    local zone
    if luautils.stringStarts(outfitType, 'Police') then
        zone = Overrides.getZone(x,y,Overrides.zonesPolice)
    else
        zone = Overrides.getZone(x,y)
    end
    
    local outfit = ClothingOverrides.zonesToOutfit[zone][outfitType] or ClothingOverrides.zonesToOutfit.Meade[outfitType]

    if type(outfit) == 'table' then
        outfit = outfit[ZombRand(1, #outfit+1)]
    end

    zombie:dressInNamedOutfit(outfit)
    zombie:resetModel()
end

ClothingOverrides.zeroTick = 0
local zombieList

function ClothingOverrides.OnTick(tick)
    local zombieIndex = tick - ClothingOverrides.zeroTick
    if zombieList:size() > zombieIndex then
        ClothingOverrides.overrideOutfit(zombieList:get(zombieIndex))
    else
        ClothingOverrides.zeroTick = tick + 1
    end
end

Events.OnGameStart.Add(function(check)
    zombieList = getCell():getZombieList()
	if SandboxVars.STR.ZombieOverrides and getWorld():getMap():contains("Muldraugh, KY") then
		Events.OnTick.Add(ClothingOverrides.OnTick)
	else
		Events.OnTick.Remove(ClothingOverrides.OnTick)
	end
end)

Events.OnInitGlobalModData.Add(function()
    if SandboxVars.STR.VestRosewood then
        ClothingOverrides.zonesToOutfit.Rosewood.Police = "PoliceRosewood"
    elseif not SandboxVars.STR.VestRosewood then
        ClothingOverrides.zonesToOutfit.Rosewood.Police = "PoliceRosewoodNoVest"
    end
    if SandboxVars.STR.VestRavenCreek then
        ClothingOverrides.zonesToOutfit.RavenCreek.Police = "PoliceRavenCreek"
    elseif not SandboxVars.STR.VestRavenCreek then
        ClothingOverrides.zonesToOutfit.RavenCreek.Police = "PoliceRavenCreekNoVest"
    end
    if SandboxVars.STR.VestRiverside then
        ClothingOverrides.zonesToOutfit.Riverside.Police = "PoliceRiverside"
    elseif not SandboxVars.STR.VestRiverside then
        ClothingOverrides.zonesToOutfit.Riverside.Police = "PoliceRiversideNoVest"
    end
    if SandboxVars.STR.VestMuldraugh then
        ClothingOverrides.zonesToOutfit.Muldraugh.Police = "PoliceMuldraugh"
    elseif not SandboxVars.STR.VestMuldraugh then
        ClothingOverrides.zonesToOutfit.Muldraugh.Police = "PoliceMuldraughNoVest"
    end
    if SandboxVars.STR.VestWestPoint then
        ClothingOverrides.zonesToOutfit.WestPoint.Police = "PoliceWestPoint"
    elseif not SandboxVars.STR.VestWestPoint then
        ClothingOverrides.zonesToOutfit.WestPoint.Police = "PoliceWestPointNoVest"
    end
    if SandboxVars.STR.VestJeffersonSD then
        ClothingOverrides.zonesToOutfit.JeffersonSD.Police = "PoliceJeffersonSD"
    elseif not SandboxVars.STR.VestJeffersonSD then
        ClothingOverrides.zonesToOutfit.JeffersonSD.Police = "PoliceJeffersonSDNoVest"
    end
    if SandboxVars.STR.VestJeffersonPD then
        ClothingOverrides.zonesToOutfit.JeffersonPD.Police = "PoliceJeffersonPD"
    elseif not SandboxVars.STR.VestJeffersonPD then
        ClothingOverrides.zonesToOutfit.JeffersonPD.Police = "PoliceJeffersonPDNoVest"
    end
    if SandboxVars.STR.VestLouisville then
        ClothingOverrides.zonesToOutfit.LouisvillePD.Police = "PoliceLouisville"
    elseif not SandboxVars.STR.VestLouisville then
        ClothingOverrides.zonesToOutfit.LouisvillePD.Police = "PoliceLouisvilleNoVest"
    end
    if SandboxVars.STR.VestMeade then
        ClothingOverrides.zonesToOutfit.Meade.Police = "PoliceMeade"
    elseif not SandboxVars.STR.VestMeade then
        ClothingOverrides.zonesToOutfit.Meade.Police = "PoliceMeadeNoVest"
    end

    if not SandboxVars.STR.WantSusceptibleOutfits then
        ClothingOverrides.outfitsToSwap.SusceptiblePoliceGasmask = "Police"
        ClothingOverrides.outfitsToSwap.SusceptibleFirefighter = "Fireman"
    end
end)

return ClothingOverrides