return function(center) --rough perimeter
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction

    ce{name = "stone-rock", position = {center.x+(-5.5),center.y+(-5.5)}, force = fN}
    ce{name = "stone-rock", position = {center.x+(5.5),center.y+(-5.5)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-4.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(-5.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(-5.0)}, force = fN}
    ce{name = "stone-rock", position = {center.x+(-1.5),center.y+(-4.5)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(1.0),center.y+(-5.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-5.0)}, force = fN}
    ce{name = "stone-rock", position = {center.x+(2.5),center.y+(-4.5)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(4.0),center.y+(-5.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-4.0)}, force = fN}
    ce{name = "gate", position = {center.x+(-5.0),center.y+(-2.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-3.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-2.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-3.0)}, force = fN}
    ce{name = "gate", position = {center.x+(-5.0),center.y+(-1.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(0.0)}, force = fN}
    ce{name = "stone-rock", position = {center.x+(6.5),center.y+(-0.5)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(2.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(1.0)}, force = fN}
    ce{name = "gate", position = {center.x+(6.0),center.y+(2.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(6.0),center.y+(1.0)}, force = fN}
    ce{name = "stone-rock", position = {center.x+(-5.5),center.y+(3.5)}, force = fN}
    ce{name = "stone-rock", position = {center.x+(3.5),center.y+(4.5)}, force = fN}
    ce{name = "gate", position = {center.x+(6.0),center.y+(3.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(6.0),center.y+(4.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(5.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(6.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(6.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(6.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(6.0)}, force = fN}
    ce{name = "stone-rock", position = {center.x+(-0.5),center.y+(6.5)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(1.0),center.y+(6.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(1.0),center.y+(5.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(2.0),center.y+(5.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(5.0),center.y+(5.0)}, force = fN}
    ce{name = "stone-wall", position = {center.x+(6.0),center.y+(5.0)}, force = fN}

end
