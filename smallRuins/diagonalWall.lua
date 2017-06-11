
return function(center) --randomly damaged diagonal wall
    local ce = game.surfaces[1].create_entity --save typing
    local fN = game.forces.neutral
    ce{name = "stone-wall", position = {center.x-2.5,center.y+3.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-2.5,center.y+2.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-1.5,center.y+2.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-1.5,center.y+1.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-0.5,center.y+1.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x-0.5,center.y+0.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x, center.y}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x+0.5,center.y-0.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x+1.5,center.y-0.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x+1.5,center.y-1.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x+2.5,center.y-1.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x+2.5,center.y-2.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
    ce{name = "stone-wall", position = {center.x+3.5,center.y-2.5}, force = fN}.damage(math.random(0,400),"neutral","physical")
end
