
return function(center) -- cross of pipes
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "pipe-to-ground", position = {center.x+(-2.0),center.y+(0.0)}, direction = direct.east, force = fN}
    ce{name = "pipe", position = {center.x+(-1.0),center.y+(0.0)}, force = fN}
    ce{name = "pipe", position = {center.x+(1.0),center.y+(0.0)}, force = fN}
    ce{name = "pipe-to-ground", position = {center.x+(0.0),center.y+(-1.0)}, direction = direct.south, force = fN}
    ce{name = "pipe", position = {center.x+(0.0),center.y+(0.0)}, force = fN}
    ce{name = "pipe-to-ground", position = {center.x+(2.0),center.y+(0.0)}, direction = direct.west, force = fN}
    ce{name = "pipe-to-ground", position = {center.x+(0.0),center.y+(1.0)}, force = fN}
end
