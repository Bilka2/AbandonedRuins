
return function(center) --research station
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "lab", position = {center.x + 1.5, center.y-0.5}, force = fN}
    ce{name = "wooden-chest", position = {center.x-1.5, center.y + 0.5}, force = fN}.insert{name = "science-pack-1", count=20}
end
