
return function(center, surface) --victory poles
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "small-electric-pole", position = {center.x + (0.0), center.y + (-1.0)}, force = fN}.damage(26,"neutral","physical")
end
