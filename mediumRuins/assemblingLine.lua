
return function(center) -- assembling line
    local ce = game.surfaces[1].create_entity --save typing

    local fN = game.forces.neutral
    local direct = defines.direction

    ce{name = "assembling-machine-1", position = {center.x+(-3.0),center.y+(-2.0)}, force = fN}
    ce{name = "inserter", position = {center.x+(-1.0),center.y+(-2.0)}, direction = direct.west, force = fN}
    ce{name = "assembling-machine-1", position = {center.x+(1.0),center.y+(-2.0)}, force = fN}
    ce{name = "inserter", position = {center.x+(3.0),center.y+(-2.0)}, direction = direct.west, force = fN}
    ce{name = "assembling-machine-1", position = {center.x+(5.0),center.y+(-2.0)}, force = fN}
    ce{name = "inserter", position = {center.x+(-3.0),center.y+(0.0)}, direction = direct.south, force = fN}
    ce{name = "small-electric-pole", position = {center.x+(-1.0),center.y+(-1.0)}, force = fN}
    ce{name = "small-electric-pole", position = {center.x+(3.0),center.y+(0.0)}, force = fN}
    ce{name = "inserter", position = {center.x+(5.0),center.y+(0.0)}, force = fN}
    ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(1.0)}, direction = direct.east, force = fN}
    ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(1.0)}, direction = direct.east, force = fN}
    ce{name = "transport-belt", position = {center.x+(-3.0),center.y+(1.0)}, direction = direct.east, force = fN}
    ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(1.0)}, direction = direct.east, force = fN}
    ce{name = "iron-chest", position = {center.x+(2.0),center.y+(2.0)}, force = fN}
    ce{name = "inserter", position = {center.x+(3.0),center.y+(2.0)}, direction = direct.east, force = fN}
    ce{name = "assembling-machine-1", position = {center.x+(5.0),center.y+(2.0)}, force = fN}
end
