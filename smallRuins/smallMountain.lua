
return function(center, surface) --small mountain
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "stone-rock", position = {center.x-1, center.y-1}, force = fN}
    ce{name = "stone-rock", position = {center.x + 1, center.y-1}, force = fN}
    ce{name = "stone-rock", position = {center.x-1, center.y + 1}, force = fN}
    ce{name = "stone-rock", position = {center.x + 1, center.y + 1}, force = fN}
end
