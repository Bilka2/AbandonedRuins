return function(center) --random walls
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "stone-wall", position = {center.x-2.5, center.y-2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 0.5, center.y-2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x-1.5, center.y-1.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 2.5, center.y + 1.5}, force = fN}
    ce{name = "stone-wall", position = {center.x-1.5, center.y-0.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 2.5, center.y-0.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 1.5, center.y + 0.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 1.5, center.y + 1.5}, force = fN}
    ce{name = "stone-wall", position = {center.x-0.5, center.y + 2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 2.5, center.y + 2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x-2.5, center.y + 3.5}, force = fN}
    ce{name = "stone-wall", position = {center.x-1.5, center.y + 3.5}, force = fN}
end
