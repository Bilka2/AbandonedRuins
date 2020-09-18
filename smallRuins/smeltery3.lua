return function(center, surface) --smeltery
  local ce = function(params)
      params.raise_built = true
      return surface.create_entity(params)
  end
  local fN = game.forces.neutral
  local direct = defines.direction
  ce{name = "inserter", position = {center.x + (-2.5), center.y + (-2.5)}, force=fN}
  ce{name = "stone-furnace", position = {center.x + (-1), center.y + (-3)}, force=fN}
  ce{name = "small-electric-pole", position = {center.x + (3.5), center.y + (-2.5)}, force=fN}
  ce{name = "small-lamp", position = {center.x + (-2.5), center.y + (-0.5)}, force=fN}
  ce{name = "transport-belt", position = {center.x + (-0.5), center.y + (-0.5)}, direction = direct.south, force=fN}
  ce{name = "inserter", position = {center.x + (-0.5), center.y + (-1.5)}, force=fN}
  ce{name = "transport-belt", position = {center.x + (2.5), center.y + (-0.5)}, direction = direct.south, force=fN}
  ce{name = "inserter", position = {center.x + (2.5), center.y + (-1.5)}, force=fN}
  ce{name = "transport-belt", position = {center.x + (-2.5), center.y + (0.5)}, direction = direct.west, force=fN}
  ce{name = "transport-belt", position = {center.x + (-0.5), center.y + (1.5)}, force=fN}
  ce{name = "transport-belt", position = {center.x + (-0.5), center.y + (0.5)}, direction = direct.west, force=fN}
  ce{name = "transport-belt", position = {center.x + (-1.5), center.y + (0.5)}, direction = direct.west, force=fN}
  ce{name = "transport-belt", position = {center.x + (1.5), center.y + (0.5)}, direction = direct.west, force=fN}
  local e = ce{name = "transport-belt", position = {center.x + (0.5), center.y + (0.5)}, direction = direct.west, force=fN}
  if e then
    e.damage(14,"neutral","physical")
  end
  local e = ce{name = "transport-belt", position = {center.x + (2.5), center.y + (1.5)}, force=fN}
  if e then
    e.damage(84,"neutral","physical")
  end
  ce{name = "transport-belt", position = {center.x + (3.5), center.y + (0.5)}, direction = direct.west, force=fN}
  local e = ce{name = "transport-belt", position = {center.x + (2.5), center.y + (0.5)}, direction = direct.west, force=fN}
  if e then
    e.damage(35,"neutral","physical")
  end
  local e = ce{name = "inserter", position = {center.x + (-0.5), center.y + (2.5)}, direction = direct.south, force=fN}
  if e then
    e.damage(49,"neutral","physical")
  end
  ce{name = "stone-furnace", position = {center.x + (1), center.y + (3)}, force=fN}
  local e = ce{name = "small-electric-pole", position = {center.x + (3.5), center.y + (3.5)}, force=fN}
  if e then
    e.damage(7,"neutral","physical")
  end
  ce{name = "inserter", position = {center.x + (2.5), center.y + (2.5)}, direction = direct.south, force=fN}
end
