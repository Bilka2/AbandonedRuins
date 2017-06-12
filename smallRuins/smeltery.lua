
return function(center) --smeltery
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name="small-electric-pole", position={center.x + (-3.0), center.y + (-2.0)}, force=game.forces.neutral}
    ce{name="stone-furnace", position={center.x + (-1.5), center.y + (-2.5)}, force=game.forces.neutral}
    ce{name="stone-furnace", position={center.x + (1.5), center.y + (-2.5)}, force=game.forces.neutral}
    ce{name="small-electric-pole", position={center.x + (3.0), center.y + (-2.0)}, force=game.forces.neutral}
    ce{name="small-lamp", position={center.x + (-3.0), center.y + (0.0)}, force=game.forces.neutral}
    ce{name="inserter", position={center.x + (-1.0), center.y + (-1.0)}, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (-1.0), center.y + (0.0)}, direction=defines.direction.south, force=game.forces.neutral}
    ce{name="inserter", position={center.x + (2.0), center.y + (-1.0)}, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (2.0), center.y + (0.0)}, direction=defines.direction.south, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (-3.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (-2.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (-1.0), center.y + (2.0)}, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (-1.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (0.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (2.0), center.y + (2.0)}, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (1.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (2.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="transport-belt", position={center.x + (3.0), center.y + (1.0)}, direction=defines.direction.west, force=game.forces.neutral}
    ce{name="inserter", position={center.x + (-1.0), center.y + (3.0)}, direction=defines.direction.south, force=game.forces.neutral}
    ce{name="inserter", position={center.x + (2.0), center.y + (3.0)}, direction=defines.direction.south, force=game.forces.neutral}
end
