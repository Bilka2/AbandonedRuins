local util = require("utilities")

local spawning = {}

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

local function spawn_entity(entity, relative_position, center, surface, extra_options, prototypes)
  if not prototypes[entity] then
    util.debugprint(entity .. " does not exist") -- TODO Bilka: Maybe log instead
    return
  end

  local e = surface.create_entity
  {
    name = entity,
    position = {center.x + relative_position.x, center.y + relative_position.y},
    direction = defines.direction[extra_options.dir] or defines.direction.north,
    force = extra_options.force or "neutral",
    raise_built = true,
    create_build_effect_smoke = false,
    recipe = extra_options.recipe
  }

  if extra_options.dmg then
    util.safe_damage(e, extra_options.dmg)
  end
  if extra_options.items then
    util.safe_insert(e, extra_options.items)
  end
end

local function spawn_entities(entities, center, surface)
  if not entities then return end

  local prototypes = game.entity_prototypes

  for _, entity_info in pairs(entities) do
    spawn_entity(entity_info[1], entity_info[2], center, surface, entity_info[3], prototypes)
  end
end

local function spawn_tiles(tiles, center, surface)
  if not tiles then return end

  local prototypes = game.tile_prototypes
  local valid = {}
  for _, tile_info in pairs(tiles) do
    local name = tile_info[1]
    local pos = tile_info[2]
    if prototypes[name] then
      valid[#valid+1] = {name = name, position = {center.x + pos.x, center.y + pos.y}}
    end
  end

  surface.set_tiles(
    valid,
    true, -- correct_tiles,                Default: true
    true, -- remove_colliding_entities,    Default: true
    true, -- remove_colliding_decoratives, Default: true
    true) -- raise_event                 , Default: false
end

spawning.spawn_ruin = function(ruin, half_size, center, surface)
  if clear_area(half_size, center, surface) then
    spawn_entities(ruin.entities, center, surface)
    spawn_tiles(ruin.tiles, center, surface)
  end
end

spawning.spawn_random_ruin = function(ruins, half_size, center, surface)
  --spawn a random ruin from the list
  spawning.spawn_ruin(ruins[math.random(#ruins)], half_size, center, surface)
end

return spawning
