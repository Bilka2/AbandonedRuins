local util = {}
util.SMALL_RUIN_HALF_SIZE = 8 / 2
util.MEDIUM_RUIN_HALF_SIZE = 16 / 2
util.LARGE_RUIN_HALF_SIZE = 32 / 2

util.get_center_of_chunk = function(chunk_position)
  return {x = chunk_position.x * 32 + 16, y = chunk_position.y * 32 + 16}
end

local function clear_area(half_size, center, surface)
  local area = {{center.x-half_size, center.y-half_size}, {center.x+half_size, center.y+half_size}}
  --exclude tiles that we shouldn't spawn on
  if surface.count_tiles_filtered{ area = area, limit = 1, collision_mask = "item-layer" } == 1 then
    return false
  end

  for _, entity in pairs(surface.find_entities_filtered({area = area, type={"resource", "tree"}, invert = true})) do
    entity.destroy({do_cliff_correction=true})
  end

  return true
end

util.spawn_ruin = function(ruin, half_size, center, surface)
  if clear_area(half_size, center, surface) then
    ruin(center, surface)
  end
end

util.spawn_random_ruin = function(ruins, half_size, center, surface)
    --spawn a random ruin from the list
    util.spawn_ruin(ruins[math.random(#ruins)], half_size, center, surface)
end

return util
