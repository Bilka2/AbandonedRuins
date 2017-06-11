
return function(center) --small destroyed setup
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "assembling-machine-1", position = {center.x+0.5,center.y+2.5}, force = fN}.damage(150,"neutral","physical")
    ce{name = "inserter", position = {center.x+2.5,center.y+1.5}, force = fN}.damage(25,"neutral","physical")
    ce{name = "inserter", position = {center.x+0.5,center.y-1.5}, force = fN}.damage(17,"neutral","physical")

    ce{name = "transport-belt", position = {center.x-1.5,center.y+1}, force = fN}.damage(25,"neutral","physical")
    ce{name = "transport-belt", position = {center.x-1.5,center.y}, force = fN}
    ce{name = "transport-belt", position = {center.x-1.5,center.y-1}, force = fN}.damage(15,"neutral","physical")
end
