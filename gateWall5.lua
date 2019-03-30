return function(center, surface) --section of wall with gate
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "stone-wall", position = {center.x-2.5, center.y + 0.5}, force = fN}

    ce{name = "gate", position = {center.x-0.5, center.y + 0.5}, direction=defines.direction.west, force = fN}
    ce{name = "gate", position = {center.x + 0.5, center.y + 0.5}, direction=defines.direction.west, force = fN}
    ce{name = "gate", position = {center.x + 1.5, center.y + 0.5}, direction=defines.direction.west, force = fN}

    ce{name = "stone-wall", position = {center.x + 2.5, center.y + 0.5}, force = fN}
end
