return function(center, surface) --small mountain
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    ce{name = "rock-huge", position = {center.x + (-1.57), center.y + (-1.37)}}
    ce{name = "rock-huge", position = {center.x + (2.43), center.y + (-2.33)}}
    ce{name = "rock-huge", position = {center.x + (-2), center.y + (2)}}
    ce{name = "rock-huge", position = {center.x + (1.12), center.y + (1.97)}}
end
