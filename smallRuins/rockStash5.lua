
return function(center, surface) --suspicious rock, stash
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    local chest = ce{name = "iron-chest", position = {center.x+1, center.y+1}, force = fN}
    chest.insert{name = "laser-turret", count = math.random(1, 2)}
    ce{name = "rock-big", position = {center.x, center.y}, force = fN}
end
