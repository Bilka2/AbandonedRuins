
return function(center, surface) --research station
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "lab", position = {center.x + 1.5, center.y-0.5}, force = fN}
    ce{name = "wooden-chest", position = {center.x-1.5, center.y + 0.5}, force = fN}.insert{name = "chemical-science-pack", count = math.random(25, 100)}
end
