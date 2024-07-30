-- by albion #0123
-- seriously, thanks Albion!
local Overrides = require 'overrides/STFR_overrides'
local ClothingOverrides = {}

ClothingOverrides.outfitsToSwap = {
    Police = 'Police',
    PoliceState = 'Police',
    PoliceRiot = 'PoliceRiot',
    Fireman = 'Fireman',
    FiremanFullSuit = 'Fireman',
    Ranger = 'Ranger',
    Postal = 'Postal',
    AmbulanceDriver = 'EMS',
    PrisonGuard = 'PrisonGuard',
    Inmate = 'Inmate',
    InmateEscaped = 'InmateEscaped',
}

ClothingOverrides.zonesToOutfit = {
    Rosewood = {
        Police = {'SheriffRosewoodOfficer', 'SheriffRosewoodSGT', 'SheriffRosewoodCPT', 'SheriffRosewoodOfficerTraffic'},
		PoliceRiot = 'SheriffRosewoodOfficerRiot',
        Fireman = {'FiremanRosewoodBlack', 'FiremanFullSuitRosewoodBlack', 'FiremanRosewoodKhaki', 'FiremanFullSuitRosewoodKhaki'},},
    Louisville = {
        Fireman = {'FiremanLouisvilleBlack', 'FiremanFullSuitLouisvilleBlack', 'FiremanLouisvilleKhaki', 'FiremanFullSuitLouisvilleKhaki'},
        EMS = 'EMSLouisville',
        PrisonGuard = 'DOCJefferson',
        Inmate = 'InmateJefferson',
        InmateEscaped = 'InmateEscapedJefferson'},
    Jefferson = {
        Fireman = {'Fireman_Louisville_Black', 'FiremanFullSuit_Louisville_Black', 'Fireman_Louisville_Khaki', 'FiremanFullSuit_Louisville_Khaki'},
        EMS = 'EMSJefferson'},
     Riverside = {
        Police = {'PoliceRiversideOfficer', 'PoliceRiversideSGT', 'PoliceRiversideCPT', 'PoliceRiversideOfficerTraffic'},
		PoliceRiot = 'PoliceRiversideOfficerRiot'},
    Muldraugh = {
        Police = {'PoliceMuldraughOfficer', 'PoliceMuldraughSGT', 'PoliceMuldraughCPT', 'PoliceMuldraughOfficerTraffic'},
		PoliceRiot = 'PoliceMuldraughOfficerRiot'},
    WestPoint = {
        Police = {'PoliceWestPointOfficer', 'PoliceWestPointSGT', 'PoliceWestPointCPT', 'PoliceWestPointOfficerTraffic'},
		PoliceRiot = 'PoliceWestPointOfficerRiot'},
    JeffersonSD = {
        Police = {'SheriffJeffersonOfficer', 'SheriffJeffersonSGT', 'SheriffJeffersonCPT', 'SheriffJeffersonOfficerTraffic'},
		PoliceRiot = 'SheriffJeffersonOfficerRiot'},
    JeffersonPD = {
        Police = {'PoliceJeffersonOfficer', 'PoliceJeffersonSGT', 'PoliceJeffersonCPT', 'PoliceJeffersonOfficerTraffic'},
		PoliceRiot = 'PoliceJeffersonOfficerRiot'},
    LouisvillePD = {
        Police = {'PoliceLouisvilleOfficer', 'PoliceLouisvilleSGT', 'PoliceLouisvilleCPT', 'PoliceLouisvilleOfficerTraffic'},
		PoliceRiot = 'PoliceLouisvilleOfficerRiot'},
    KSP = {
        Police = {'PoliceKSPOfficer', 'PoliceKSPSGT', 'PoliceKSPCPT'},
		PoliceRiot = 'PoliceKSPOfficerRiot'},
    RosewoodPrison = {},
    -- default
    Meade = {
        Ranger = {'FederalRanger', 'StateParkRanger', 'ConservationRanger'},
        Police = {'SheriffMeadeOfficer', 'SheriffMeadeSGT', 'SheriffMeadeCPT', 'SheriffMeadeOfficerTraffic'},
		PoliceRiot = 'SheriffMeadeOfficerRiot',
        Fireman = {'FiremanMeadeBlack', 'FiremanFullSuitMeadeBlack', 'FiremanMeadeKhaki', 'FiremanFullSuitMeadeKhaki'},
        EMS = 'EMSMeade',
        PrisonGuard = 'DOCMeade',
        Inmate = {'InmateMeadeOrange', 'InmateMeadeYellow', 'InmateMeadeRed'},
        InmateEscaped = 'InmateEscapedMeade',
		Postal = {'USPSMail'},},
}

ClothingOverrides.fixOutfit = function(zombie)
	if zombie and zombie:isSceneCulled() and not zombie:getModData().isLoaded then
		zombie:setSceneCulled(false)
		zombie:setSceneCulled(true)
		zombie:getModData().isLoaded = true
	end
end

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

    --zombie:dressInNamedOutfit(outfit)
    zombie:dressInPersistentOutfit(outfit)
    zombie:resetModel()
end

ClothingOverrides.zeroTick = 0
local zombieList

function ClothingOverrides.OnTick(tick)
    local zombieIndex = tick - ClothingOverrides.zeroTick
    if zombieList:size() > zombieIndex then
        ClothingOverrides.overrideOutfit(zombieList:get(zombieIndex))
		ClothingOverrides.fixOutfit(zombieList:get(zombieIndex))
    else
        ClothingOverrides.zeroTick = tick + 1
    end
end

Events.OnGameStart.Add(function(check)
    zombieList = getCell():getZombieList()
	if SandboxVars.STFR.ZombieOverrides and getWorld():getMap():contains("Muldraugh, KY") then
		Events.OnTick.Add(ClothingOverrides.OnTick)
	else
		Events.OnTick.Remove(ClothingOverrides.OnTick)
	end
end)

return ClothingOverrides