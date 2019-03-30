
return function(center, surface) --research station
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "wooden-chest", position = {center.x-1.5, center.y + 0.5}, force = fN}.insert{name = "logistic-science-pack", count = math.random(40, 100)}
end
