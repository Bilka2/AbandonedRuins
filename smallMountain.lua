
return function(center, surface) --small mountain
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "rock-big", position = {center.x-1, center.y-1}, force = fN}
    ce{name = "rock-big", position = {center.x + 1, center.y-1}, force = fN}
    ce{name = "rock-big", position = {center.x-1, center.y + 1}, force = fN}
    ce{name = "rock-big", position = {center.x + 1, center.y + 1}, force = fN}
end
