local util = require("utilities")

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
    if util.clear_area(util.MEDIUM_RUIN_RADIUS, center, surface) then
        m_ruins[math.random(#m_ruins)](center, surface) --call a random function
    end
end
