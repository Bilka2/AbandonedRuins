
--checks for spawning validity and if valid, clears space for the spawn
function m_clearArea(center, surface)
    for y = center.y-8, center.y+8 do --fail if any water in area
        for x = center.x-8, center.x+8 do
            if surface.get_tile(x, y).name == "water" or surface.get_tile(x, y).name == "deepwater" then
                return false
            end
        end
    end

    for index, entity in pairs(surface.find_entities({{center.x-8,center.y-8},{center.x+8,center.y+8}})) do
        if entity.valid and entity.type ~= "resource" then --don't destroy ores, cliffs might become invalid after we destroy their neighbours, so check .valid
            entity.destroy()
        end
    end

    return true
end

local m_ruins = {}

table.insert(m_ruins, require("mediumRuins.assemblingLine"))
--table.insert(m_ruins, require("mediumRuins.biterDefense"))
table.insert(m_ruins, require("mediumRuins.encampment"))
table.insert(m_ruins, require("mediumRuins.mountainRange"))
table.insert(m_ruins, require("mediumRuins.pipeChain"))
table.insert(m_ruins, require("mediumRuins.powerSetup"))
--table.insert(m_ruins, require("mediumRuins.queenNest"))
table.insert(m_ruins, require("mediumRuins.roughPerimeter2"))
table.insert(m_ruins, require("mediumRuins.roughPerimeter"))
table.insert(m_ruins, require("mediumRuins.smallOilSetup"))
table.insert(m_ruins, require("mediumRuins.overgrownFort"))
table.insert(m_ruins, require("mediumRuins.radarOutpost"))
--table.insert(m_ruins, require("mediumRuins.railCrossing"))
table.insert(m_ruins, require("mediumRuins.treeFortTrapped"))
table.insert(m_ruins, require("mediumRuins.treeIsland"))
table.insert(m_ruins, require("mediumRuins.treeRing"))
table.insert(m_ruins, require("mediumRuins.roughFort"))
table.insert(m_ruins, require("mediumRuins.storageArea"))
--table.insert(m_ruins, require("mediumRuins.helipad"))
table.insert(m_ruins, require("mediumRuins.militaryField"))


function spawnMediumRuins(center, surface)
    if m_clearArea(center, surface) then
        m_ruins[math.random(#m_ruins)](center, surface) --call a random function
    end
end
