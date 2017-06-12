
return function(center) --harmless turret
    local ce = game.surfaces[1].create_entity --save typing
    ce{name = "gun-turret", position = {center.x + 1, center.y}, force = game.forces.enemy}.damage(323,"neutral","physical")
end
