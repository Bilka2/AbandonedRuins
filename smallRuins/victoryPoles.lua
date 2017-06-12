
return function(center) --victory poles
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "small-electric-pole", position = {center.x + (0.0), center.y + (-2.0)}, force = fN}
    ce{name = "small-electric-pole", position = {center.x + (-2.0), center.y + (0.0)}, force = fN}
    ce{name = "medium-electric-pole", position = {center.x + (0.0), center.y + (-1.0)}, force = fN}
    ce{name = "small-electric-pole", position = {center.x + (2.0), center.y + (0.0)}, force = fN}
    ce{name = "small-electric-pole", position = {center.x + (0.0), center.y + (1.0)}, force = fN}
end
