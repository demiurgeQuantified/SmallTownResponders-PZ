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
    {name = "Rosewood", x1=8048,x2=8052,y1=11724,y2=11729},
    {name = "Rosewood", x1=8056,x2=8059,y1=11724,y2=11724},
    {name = "RosewoodPrison", x1=7613,x2=7762,y1=11806,y2=11960},
    {name = "Riverside", x1=6087,x2=6087,y1=5265,y2=5266},
    {name = "Muldraugh", x1=10639,x2=10639,y1=10400,y2=10401},
    {name = "WestPoint", x1=11894,x2=11897,y1=6935,y2=6935},
    {name = "JeffersonSD", x1=13778,x2=13779,y1=2558,y2=2558},
    {name = "JeffersonPD", x1=13217,x2=13217,y1=3073,y2=3078},
    {name = "JeffersonPD", x1=13221,x2=13221,y1=3073,y2=3078},
    {name = "LouisvillePD", x1=12472,x2=12472,y1=1599,y2=1602},
    {name = "LouisvillePD", x1=12476,x2=12477,y1=1601,y2=1605},
    {name = "LouisvillePD", x1=12481,x2=12481,y1=1600,y2=1606},
    {name = "KSP", x1=12970,x2=12970,y1=1393,y2=1398},
    {name = "KSP", x1=12984,x2=12987,y1=1396,y2=1396},
    {name = "KSP", x1=12975,x2=12975,y1=1365,y2=1372},
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