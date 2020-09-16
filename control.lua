local util = require("utilities")
local small_ruins = require("smallRuins")
local medium_ruins = require("mediumRuins")
local large_ruins = require("largeRuins")

local function spawn_chances()
  local smallChance = settings.global["ruins-small-ruin-chance"].value
  local mediumChance = settings.global["ruins-medium-ruin-chance"].value
  local largeChance = settings.global["ruins-large-ruin-chance"].value
  local sumChance = smallChance + mediumChance + largeChance
  local totalChance = math.min(sumChance, 1)
  -- now compute cumulative distribution of conditional probabilities for
  -- spawn_type given a spawn occurs.
  local smallThreshold = smallChance / sumChance * totalChance
  local mediumThreshold = mediumChance / sumChance * totalChance + smallThreshold
  local largeThreshold = largeChance / sumChance * totalChance + mediumThreshold

  global.spawn_table = {small = smallThreshold, medium = mediumThreshold, large = largeThreshold}
end

local function init_globals()
  spawn_chances()
  if global.spawn_ruins == nil then
    global.spawn_ruins = true
  end
end

script.on_init(init_globals)
script.on_configuration_changed(init_globals)
script.on_event(defines.events.on_runtime_mod_setting_changed, spawn_chances)

script.on_event(defines.events.on_chunk_generated,
  function (e)
    if global.spawn_ruins == false then return end -- ruin spawning is disabled

    local center = util.get_center_of_chunk(e.position)
    if math.abs(center.x) < settings.global["ruins-min-distance-from-spawn"].value and math.abs(center.y) < settings.global["ruins-min-distance-from-spawn"].value then return end --too close to spawn

    local spawn_type = math.random()
    if spawn_type <= global.spawn_table.small then --spawn small ruin
      --random variance so they aren't always chunk aligned
      center.x = center.x + math.random(-10,10)
      center.y = center.y + math.random(-10,10)

      util.spawn_random_ruin(small_ruins, util.SMALL_RUIN_HALF_SIZE, center, e.surface)
    elseif spawn_type <= global.spawn_table.medium then --spawn medium ruin
      --random variance so they aren't always chunk aligned
      center.x = center.x + math.random(-5,5)
      center.y = center.y + math.random(-5,5)

      util.spawn_random_ruin(medium_ruins, util.MEDIUM_RUIN_HALF_SIZE, center, e.surface)
    elseif spawn_type <= global.spawn_table.large then --spawn large ruin
      util.spawn_random_ruin(large_ruins, util.LARGE_RUIN_HALF_SIZE, center, e.surface)
    end
  end
)

remote.add_interface("AbandonedRuins",
{
  set_spawn_ruins = function(spawn_ruins) global.spawn_ruins = spawn_ruins end,
  get_spawn_ruins = function() return global.spawn_ruins end
})
