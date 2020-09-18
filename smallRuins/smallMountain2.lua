return function(center, surface) --small mountain
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    ce{name = "rock-huge", position = {center.x + (-2.09), center.y + (-2.74)}}
    ce{name = "rock-huge", position = {center.x + (1), center.y + (-1)}}
    ce{name = "rock-huge", position = {center.x + (-2.01), center.y + (1.87)}}
    ce{name = "rock-huge", position = {center.x + (1.14), center.y + (1.56)}}
end
