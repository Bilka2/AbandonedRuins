
--checks for spawning validity and if valid, clears space for the spawn
function s_clearArea(center)
    for y = center.y-4, center.y+4 do --fail if any water in area
        for x = center.x-4, center.x+4 do
            if game.surfaces[1].get_tile(x, y).name == "water" or game.surfaces[1].get_tile(x, y).name == "deepwater" then
                return false
            end
        end
    end

    for index, entity in pairs(game.surfaces[1].find_entities({{center.x-4,center.y-4},{center.x+4,center.y+4}})) do
        if not entity.type == "resource" then --don't destroy ores
            entity.destroy()
        end
    end

    return true
end

local s_ruins = {}


table.insert(s_ruins, require("smallRuins.crossOfPipes"))
table.insert(s_ruins, require("smallRuins.diagonalWall"))
table.insert(s_ruins, require("smallRuins.gateWall"))
table.insert(s_ruins, require("smallRuins.gears"))
table.insert(s_ruins, require("smallRuins.harmlessTurret"))
table.insert(s_ruins, require("smallRuins.landMineBunker"))
table.insert(s_ruins, require("smallRuins.miningSetup"))
table.insert(s_ruins, require("smallRuins.railSection"))
table.insert(s_ruins, require("smallRuins.randomWalls"))
table.insert(s_ruins, require("smallRuins.researchStation"))
table.insert(s_ruins, require("smallRuins.rockStash"))
table.insert(s_ruins, require("smallRuins.smallDestroyedSetup"))
table.insert(s_ruins, require("smallRuins.smallDualSplitter"))
table.insert(s_ruins, require("smallRuins.smallMining"))
table.insert(s_ruins, require("smallRuins.smallMountain"))
table.insert(s_ruins, require("smallRuins.smallSmelting"))
table.insert(s_ruins, require("smallRuins.smeltery"))
table.insert(s_ruins, require("smallRuins.splitterI"))
table.insert(s_ruins, require("smallRuins.victoryPoles"))


function spawnSmallRuins(center)
    if s_clearArea(center) then
        s_ruins[math.random(#s_ruins)](center) --call a random function
    end
end
