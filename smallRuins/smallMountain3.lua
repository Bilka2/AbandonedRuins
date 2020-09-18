return function(center, surface) --small mountain
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    ce{name = "rock-big", position = {center.x + (0.77), center.y + (-1.63)}}
    ce{name = "rock-big", position = {center.x + (-1.52), center.y + (-0.29)}}
    ce{name = "rock-big", position = {center.x + (1.45), center.y + (0.87)}}
    ce{name = "rock-big", position = {center.x + (-2), center.y + (2)}}
end
