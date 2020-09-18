return function(center, surface) --small mountain
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    ce{name = "rock-big", position = {center.x + (-1.76), center.y + (-1.15)}}
    ce{name = "rock-big", position = {center.x + (0.4), center.y + (-0.64)}}
    ce{name = "rock-big", position = {center.x + (-1.69), center.y + (1.17)}}
    ce{name = "rock-big", position = {center.x + (1.68), center.y + (1.43)}}
end
