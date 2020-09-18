return function(center, surface) -- cross of pipes
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "pipe", position = {center.x + (-1.5), center.y + (-3.5)}, force=fN}
    ce{name = "pipe", position = {center.x + (-0.5), center.y + (-3.5)}, force=fN}
    ce{name = "pipe", position = {center.x + (0.5), center.y + (-0.5)}, force=fN}
    ce{name = "pipe", position = {center.x + (0.5), center.y + (-1.5)}, force=fN}
    ce{name = "pipe", position = {center.x + (0.5), center.y + (1.5)}, force=fN}
    ce{name = "pipe", position = {center.x + (0.5), center.y + (0.5)}, force=fN}
    ce{name = "pipe", position = {center.x + (-0.5), center.y + (3.5)}, force=fN}
    ce{name = "pipe", position = {center.x + (0.5), center.y + (3.5)}, force=fN}
    ce{name = "pipe", position = {center.x + (2.5), center.y + (3.5)}, force=fN}
    ce{name = "pipe-to-ground", position = {center.x + (3.5), center.y + (3.5)}, direction = direct.west, force=fN}
end
