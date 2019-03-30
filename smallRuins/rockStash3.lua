
return function(center, surface) --suspicious rock, stash
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    local chest = ce{name = "wooden-chest", position = {center.x+1, center.y+1}, force = fN}
    chest.insert{name = "automation-science-pack", count = math.random(10, 30)}
    ce{name = "rock-big", position = {center.x, center.y}, force = fN}
end
