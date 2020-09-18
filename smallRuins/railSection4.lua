return function(center, surface) --section of rails
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "straight-rail", position = {center.x + (1), center.y + (-1)}, direction = direct.northwest, force=fN}
    ce{name = "straight-rail", position = {center.x + (1), center.y + (-3)}, direction = direct.southeast, force=fN}
    ce{name = "curved-rail", position = {center.x + (0), center.y + (2)}, direction = direct.east, force=fN}
    ce{name = "straight-rail", position = {center.x + (-1), center.y + (-1)}, direction = direct.southeast, force=fN}
    ce{name = "straight-rail", position = {center.x + (3), center.y + (-1)}, direction = direct.southeast, force=fN}
end
