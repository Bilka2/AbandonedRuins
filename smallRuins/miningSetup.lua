
return function(center) --mining setup
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "electric-mining-drill", position = {center.x + (0.0), center.y + (0.0)}, direction = direct.south, force = fN}
    ce{name = "wooden-chest", position = {center.x + (0.0), center.y + (2.0)}, force = fN}
end
