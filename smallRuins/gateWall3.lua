return function(center, surface) --section of wall with gate
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "stone-wall", position = {center.x + (-1.5), center.y + (0.5)}, force=fN}
    ce{name = "gate", position = {center.x + (1.5), center.y + (0.5)}, direction = direct.east, force=fN}
    local e = ce{name = "gate", position = {center.x + (0.5), center.y + (0.5)}, direction = direct.east, force=fN}
    if e then
        e.damage(65,"neutral","physical")
    end
    local e = ce{name = "stone-wall", position = {center.x + (2.5), center.y + (0.5)}, force=fN}
    if e then
        e.damage(87,"neutral","physical")
    end
end
