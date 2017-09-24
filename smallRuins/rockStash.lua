
return function(center, surface) --suspicious rock, stash
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    local chest = ce{name = "wooden-chest", position = {center.x, center.y}, force = fN}
    chest.insert{name = "engine-unit", count=8}
    chest.insert{name = "iron-plate", count=20}
    chest.insert{name = "steel-plate", count=5}
    ce{name = "stone-rock", position = {center.x, center.y}, force = fN}
end
