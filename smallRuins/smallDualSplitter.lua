
return function(center) -- small dual splitter
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction

    ce{name="transport-belt",position={center.x+(1.0),center.y+(-1.0)},force=game.forces.neutral}
    ce{name="splitter",position={center.x+(0.0),center.y+(-0.5)},direction=defines.direction.east,force=game.forces.neutral}
    ce{name="splitter",position={center.x+(-1.0),center.y+(0.5)},direction=defines.direction.east,force=game.forces.neutral}
    ce{name="transport-belt",position={center.x+(-2.0),center.y+(1.0)},direction=defines.direction.east,force=game.forces.neutral}
    ce{name="transport-belt",position={center.x+(-2.0),center.y+(0.0)},direction=defines.direction.east,force=game.forces.neutral}
    ce{name="transport-belt",position={center.x+(1.0),center.y+(0.0)},direction=defines.direction.east,force=game.forces.neutral}
    ce{name="transport-belt",position={center.x+(1.0),center.y+(1.0)},direction=defines.direction.east,force=game.forces.neutral}
    ce{name="transport-belt",position={center.x+(0.0),center.y+(1.0)},direction=defines.direction.east,force=game.forces.neutral}
    ce{name="transport-belt",position={center.x+(2.0),center.y+(0.0)},direction=defines.direction.east,force=game.forces.neutral}
    ce{name="transport-belt",position={center.x+(2.0),center.y+(1.0)},direction=defines.direction.east,force=game.forces.neutral}

end
