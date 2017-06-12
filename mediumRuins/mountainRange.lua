
return function(center) -- mountain range
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction

    ce{name = "stone-rock", position = {center.x + (-7.5), center.y + (-0.5)}, force = fN}
    ce{name = "stone-rock", position = {center.x + (-3.5), center.y + (-0.5)}, force = fN}
    ce{name = "stone-rock", position = {center.x + (0.5), center.y + (-0.5)}, force = fN}
    ce{name = "stone-rock", position = {center.x + (4.5), center.y + (-0.5)}, force = fN}
    ce{name = "stone-rock", position = {center.x + (-5.5), center.y + (1.5)}, force = fN}
    ce{name = "stone-rock", position = {center.x + (-1.5), center.y + (1.5)}, force = fN}
    ce{name = "stone-rock", position = {center.x + (2.5), center.y + (1.5)}, force = fN}
end
