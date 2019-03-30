return function(center, surface) --land mine bunker
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "stone-wall", position = {center.x-2, center.y-2}, force = fN}
    ce{name = "stone-wall", position = {center.x + 1, center.y-1}, force = fN}
    ce{name = "stone-wall", position = {center.x + 2, center.y + 1}, force = fN}
    ce{name = "stone-wall", position = {center.x + 2, center.y + 3}, force = fN}

    ce{name = "land-mine", position = {center.x-1, center.y-1}, force = game.forces.enemy} --trap

end
