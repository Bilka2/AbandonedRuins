return function(center, surface) --section of wall with gate
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "stone-wall", position = {center.x + 0.5, center.y-1.5}, force = fN}

    ce{name = "gate", position = {center.x + 0.5, center.y-0.5}, force = fN}
    ce{name = "gate", position = {center.x + 0.5, center.y + 0.5}, force = fN}.damage(115,"neutral","physical")

    ce{name = "stone-wall", position = {center.x + 0.5, center.y + 2.5}, force = fN}
end
