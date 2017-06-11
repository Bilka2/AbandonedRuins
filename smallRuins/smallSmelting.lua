return function(center)  --small smelting station
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "stone-furnace", position = {center.x-2,center.y-2}, force = fN}
    local chest = ce{name = "wooden-chest", position = {center.x, center.y-1}, force = fN}
    chest.insert{name = "coal", count=5}
    chest.insert{name = "iron-ore", count=20}
end
