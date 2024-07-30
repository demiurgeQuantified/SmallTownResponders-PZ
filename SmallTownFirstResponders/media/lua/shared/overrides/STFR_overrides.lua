-- by albion#0123
-- seriously, thanks Albion!
local Overrides = {}
Overrides.defaultZone = "Meade"

---@class OverrideZone
---@field name string Name of the zone. Does not need to be unique
---@field x1 number Lowest X coordinate of the zone
---@field x2 number Highest X coordinate of the zone
---@field y1 number Lowest Y coordinate of the zone
---@field y2 number Highest Y coordinate of the zone

---@type table<integer, OverrideZone>
Overrides.zonesGeneric = {
    {name = "Rosewood", x1=7900,x2=8550,y1=11220,y2=12300},
    {name = "RosewoodPrison", x1=7613,x2=7762,y1=11806,y2=11960},
    {name = "Louisville", x1=11900,x2=14800,y1=900,y2=2300},
    {name = "Jefferson", x1=11900,x2=14800,y1=2301,y2=6500},
}

---@type table<integer, OverrideZone>
Overrides.zonesPolice = { -- separate zones so that we don't have unnecessary loops, since police use a lot more
    {name = "Rosewood", x1=7900,x2=8550,y1=11220,y2=12300},
    {name = "RosewoodPrison", x1=7613,x2=7762,y1=11806,y2=11960},
    {name = "Riverside", x1=5620,x2=6900,y1=5150,y2=5615},
    {name = "Muldraugh", x1=10250,x2=11100,y1=9100,y2=10850},
    {name = "WestPoint", x1=10850,x2=12315,y1=6500,y2=7175},
    {name = "JeffersonSD", x1=12891,x2=14800,y1=2200,y2=2690},
    {name = "JeffersonSD", x1=13771,x2=14800,y1=2691,y2=3440},
    {name = "JeffersonSD", x1=13041,x2=14800,y1=3441,y2=6300},
    {name = "JeffersonPD", x1=12901,x2=13770,y1=2691,y2=3440},
    {name = "JeffersonPD", x1=12901,x2=13040,y1=2691,y2=3865},
    {name = "LouisvillePD", x1=11900,x2=12900,y1=900,y2=3890},
    {name = "KSP", x1=12901,x2=14800,y1=900,y2=2199},
    {name = "KSP", x1=12200,x2=13040,y1=3891,y2=6700},
    {name = "KSP", x1=3500,x2=4800,y1=7100,y2=10900},
}

---@type table<integer, OverrideZone>
Overrides.zonesLoot = {
    {name = "Rosewood", 1, x1=7900,x2=8550,y1=11220,y2=12300},
    {name = "RosewoodPrison", x1=7613,x2=7762,y1=11806,y2=11960},
    {name = "Riverside", x1=5620,x2=6900,y1=5150,y2=5615},
    {name = "Muldraugh", x1=10250,x2=11100,y1=9100,y2=10850},
    {name = "WestPoint", x1=10850,x2=12315,y1=6500,y2=7175},
    {name = "JeffersonSD", x1=12891,x2=14800,y1=2200,y2=2690},
    {name = "JeffersonSD", x1=13771,x2=14800,y1=2691,y2=3440},
    {name = "JeffersonSD", x1=13041,x2=14800,y1=3441,y2=6300},
    {name = "JeffersonPD", x1=12901,x2=13770,y1=2691,y2=3440},
    {name = "JeffersonPD", x1=12901,x2=13040,y1=2691,y2=3865},
    {name = "LouisvillePD", x1=11900,x2=12900,y1=900,y2=3890},
    {name = "KSP", x1=12901,x2=14800,y1=900,y2=2199},
    {name = "KSP", x1=12200,x2=13040,y1=3891,y2=6700},
    {name = "KSP", x1=3500,x2=4800,y1=7100,y2=10900},
}

---Returns the name of the zone in which the point at x,y lies. If the point does not lie in any zone, returns Overrides.defaultZone
---@param x number X coordinate to check
---@param y number Y coordinate to check
---@param zones table<integer, OverrideZone> Zones to search. Defaults to Overrides.zonesGeneric
---@return string zone
function Overrides.getZone(x,y,zones)
    zones = zones or Overrides.zonesGeneric
    for i = 1, #zones do
        local zone = zones[i]
        if x >= zone.x1 and x <= zone.x2 and y >= zone.y1 and y <= zone.y2 then
            return zone.name
        end
    end
    return Overrides.defaultZone
end

return Overrides