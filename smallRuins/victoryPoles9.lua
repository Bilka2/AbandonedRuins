
return function(center, surface) --victory poles
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "medium-electric-pole", position = {center.x + (0.0), center.y + (-1.0)}, force = fN}
    ce{name="small-lamp", position={center.x + (-1.0), center.y + (-1.0)}, force=game.forces.neutral}
end
