return function(center) -- small mining
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name="electric-mining-drill", position={center.x + (-2.0), center.y + (-1.0)}, direction=defines.direction.south, force=game.forces.neutral}
    ce{name="electric-mining-drill", position={center.x + (1.0), center.y + (-1.0)}, direction=defines.direction.south, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (-1.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (-2.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (0.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (1.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (2.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
end
