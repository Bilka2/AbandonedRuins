
return function(center, surface) --victory poles
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "small-electric-pole", position = {center.x + (0.0), center.y + (-2.0)}, force = fN}
    ce{name = "small-electric-pole", position = {center.x + (2.0), center.y + (0.0)}, force = fN}
    ce{name = "small-electric-pole", position = {center.x + (0.0), center.y + (1.0)}, force = fN}
end
