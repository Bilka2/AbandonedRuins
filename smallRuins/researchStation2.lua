
return function(center, surface) --research station
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "lab", position = {center.x + 1.5, center.y-0.5}, force = fN}.damage(61,"neutral","physical")
    ce{name = "wooden-chest", position = {center.x-1.5, center.y + 0.5}, force = fN}.insert{name = "automation-science-pack", count = math.random(10, 40)}
end
