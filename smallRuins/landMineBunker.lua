return function(center) --land mine bunker
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "stone-wall", position = {center.x-2,center.y}, force = fN}
    ce{name = "stone-wall", position = {center.x-2,center.y-1}, force = fN}
    ce{name = "stone-wall", position = {center.x-2,center.y-2}, force = fN}
    ce{name = "stone-wall", position = {center.x+1,center.y-1}, force = fN}
    ce{name = "stone-wall", position = {center.x+2,center.y-2}, force = fN}
    ce{name = "stone-wall", position = {center.x+2,center.y-1}, force = fN}
    ce{name = "stone-wall", position = {center.x+2,center.y}, force = fN}
    ce{name = "stone-wall", position = {center.x+2,center.y+1}, force = fN}
    ce{name = "stone-wall", position = {center.x+2,center.y+2}, force = fN}
    ce{name = "stone-wall", position = {center.x+2,center.y+3}, force = fN}
    ce{name = "stone-wall", position = {center.x+1,center.y+3}, force = fN}
    ce{name = "stone-wall", position = {center.x, center.y+3}, force = fN}

    ce{name = "land-mine", position = {center.x, center.y}, force = game.forces.enemy} --trap

end
