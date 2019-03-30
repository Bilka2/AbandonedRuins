
return function(center, surface) --harmless turret
    local ce = surface.create_entity --save typing
    ce{name = "gun-turret", position = {center.x + 1, center.y}, force = game.forces.enemy}.damage(math.random(250, 390),"neutral","physical")
end
