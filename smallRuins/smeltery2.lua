return function(center, surface) --smeltery
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "fast-inserter", position = {center.x + (-3.5), center.y + (-2.5)}, force=fN}
    local e = ce{name = "wooden-chest", position = {center.x + (-3.5), center.y + (-3.5)}, force=fN}
    if e then
      e.insert{name = "iron-plate", count = math.random(1, 50)}
    end
    ce{name = "fast-inserter", position = {center.x + (-0.5), center.y + (-2.5)}, force=fN}
    ce{name = "fast-inserter", position = {center.x + (2.5), center.y + (-2.5)}, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (-2.5), center.y + (-0.5)}, direction = direct.west, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (-0.5), center.y + (-1.5)}, direction = direct.south, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (-1.5), center.y + (-0.5)}, direction = direct.west, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (-0.5), center.y + (-0.5)}, direction = direct.west, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (0.5), center.y + (-0.5)}, direction = direct.west, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (1.5), center.y + (-0.5)}, direction = direct.west, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (2.5), center.y + (-1.5)}, direction = direct.south, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (2.5), center.y + (-0.5)}, direction = direct.west, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (3.5), center.y + (-0.5)}, direction = direct.west, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (-0.5), center.y + (0.5)}, force=fN}
    ce{name = "fast-inserter", position = {center.x + (-0.5), center.y + (1.5)}, direction = direct.south, force=fN}
    ce{name = "fast-transport-belt", position = {center.x + (2.5), center.y + (0.5)}, force=fN}
    ce{name = "fast-inserter", position = {center.x + (2.5), center.y + (1.5)}, direction = direct.south, force=fN}
    ce{name = "small-electric-pole", position = {center.x + (-2.5), center.y + (2.5)}, force=fN}
    ce{name = "steel-furnace", position = {center.x + (-1), center.y + (3)}, force=fN}
    ce{name = "steel-furnace", position = {center.x + (2), center.y + (3)}, force=fN}
    ce{name = "small-electric-pole", position = {center.x + (3.5), center.y + (2.5)}, force=fN}
end
