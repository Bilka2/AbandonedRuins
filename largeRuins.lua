local util = require("utilities")

local l_ruins = {}

table.insert(l_ruins, require("largeRuins.destroyedEnemyFort"))
table.insert(l_ruins, require("largeRuins.destroyedFort"))
table.insert(l_ruins, require("largeRuins.earlyGame"))
table.insert(l_ruins, require("largeRuins.mainBus"))
table.insert(l_ruins, require("largeRuins.orchard"))
table.insert(l_ruins, require("largeRuins.walledOrchard"))
table.insert(l_ruins, require("largeRuins.walledGrotto"))


function spawnLargeRuins(center, surface)
    if util.clear_area(util.LARGE_RUIN_RADIUS, center, surface) then
        l_ruins[math.random(#l_ruins)](center, surface) --call a random function
    end
end
