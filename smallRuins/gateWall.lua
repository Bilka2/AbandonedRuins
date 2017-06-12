return function(center) --section of wall with gate
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "stone-wall", position = {center.x + 0.5, center.y-2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 0.5, center.y-1.5}, force = fN}

    ce{name = "gate", position = {center.x + 0.5, center.y-0.5}, force = fN}
    ce{name = "gate", position = {center.x + 0.5, center.y + 0.5}, force = fN}
    ce{name = "gate", position = {center.x + 0.5, center.y + 1.5}, force = fN}

    ce{name = "stone-wall", position = {center.x + 0.5, center.y + 2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 0.5, center.y + 3.5}, force = fN}
end
