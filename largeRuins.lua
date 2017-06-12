--checks for spawning validity and if valid, clears space for the spawn
function l_clearArea(center)
    for y = center.y-16, center.y+16 do --fail if any water in area
        for x = center.x-16, center.x+16 do
            if game.surfaces[1].get_tile(x, y).name == "water" or game.surfaces[1].get_tile(x, y).name == "deepwater" then
                return false
            end
        end
    end

    for index, entity in pairs(game.surfaces[1].find_entities({{center.x-16,center.y-16},{center.x+16,center.y+16}})) do
        if entity.type ~= "resource" then --don't destroy ores
            entity.destroy()
        end
    end

    return true
end

local l_ruins = {}

table.insert(l_ruins, require("largeRuins.destroyedEnemyFort"))
table.insert(l_ruins, require("largeRuins.destroyedFort"))
table.insert(l_ruins, require("largeRuins.earlyGame"))
table.insert(l_ruins, require("largeRuins.mainBus"))
table.insert(l_ruins, require("largeRuins.orchard"))
table.insert(l_ruins, require("largeRuins.walledOrchard"))
table.insert(l_ruins, require("largeRuins.walledGrotto"))


function spawnLargeRuins(center)
    if l_clearArea(center) then
        l_ruins[math.random(#l_ruins)](center) --call a random function
    end
end
