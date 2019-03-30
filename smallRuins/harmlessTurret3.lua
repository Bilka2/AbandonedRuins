
return function(center, surface) --harmless turret
    local ce = surface.create_entity --save typing
    ce{name = "gun-turret", position = {center.x, center.y}, force = game.forces.enemy}.damage(math.random(50, 200),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-2.5, center.y-2.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-1.5, center.y-2.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-0.5, center.y-2.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x + 0.5, center.y-2.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x + 1.5, center.y-2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 2.5, center.y-2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x-2.5, center.y-1.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x + 2.5, center.y-1.5}, force = fN}
    ce{name = "stone-wall", position = {center.x-2.5, center.y-0.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x + 2.5, center.y-0.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-2.5, center.y + 0.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 2.5, center.y + 0.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-2.5, center.y + 1.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x + 2.5, center.y + 1.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-2.5, center.y + 2.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-1.5, center.y + 2.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-0.5, center.y + 2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 0.5, center.y + 2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 1.5, center.y + 2.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
    ce{name = "stone-wall", position = {center.x + 2.5, center.y + 2.5}, force = fN}.damage(math.random(1, 500),"neutral","physical")
end
