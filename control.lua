require("smallRuins")
require("mediumRuins")
require("largeRuins")

local DEBUG = false -- used for debug, users should not enable

local function spawnChances()
    local smallChance = settings.global["ruins-small-ruin-chance"].value
    local mediumChance = settings.global["ruins-medium-ruin-chance"].value
    local largeChance = settings.global["ruins-large-ruin-chance"].value
    local sumChance = smallChance + mediumChance + largeChance
    local totalChance = math.min(sumChance, 1)
    -- now compute cumulative distribution of conditional probabilities for
    -- spawnType given a spawn occurs.
    local smallThreshold = smallChance / sumChance * totalChance
    local mediumThreshold = mediumChance / sumChance * totalChance + smallThreshold
    local largeThreshold = largeChance / sumChance * totalChance + mediumThreshold

    global.spawnTable = {small = smallThreshold, medium = mediumThreshold, large = largeThreshold}
end

script.on_init(spawnChances)
script.on_configuration_changed(spawnChances)
script.on_event(defines.events.on_runtime_mod_setting_changed, spawnChances)

script.on_event(defines.events.on_chunk_generated,
    function (e)
        local center = {x=(e.area.left_top.x+e.area.right_bottom.x)/2, y=(e.area.left_top.y+e.area.right_bottom.y)/2}
        if math.abs(center.x) < settings.global["ruins-min-distance-from-spawn"].value and math.abs(center.y) < settings.global["ruins-min-distance-from-spawn"].value then return end --too close to spawn

        local spawnType = math.random()
        if spawnType <= global.spawnTable.small then
            --spawn small ruin
            if DEBUG then
                game.print("A small ruin was spawned at " .. center.x .. "," .. center.y)
            end

            --random variance so they aren't always chunk aligned
            center.x = center.x + math.random(-10,10)
            center.y = center.y + math.random(-10,10)

            spawnSmallRuins(center, e.surface)
        elseif spawnType <= global.spawnTable.medium then
            --spawn medium ruin
            if DEBUG then
                game.print("A medium ruin was spawned at " .. center.x .. "," .. center.y)
            end

            --random variance so they aren't always chunk aligned
            center.x = center.x + math.random(-5,5)
            center.y = center.y + math.random(-5,5)

            spawnMediumRuins(center, e.surface)
        elseif spawnType <= global.spawnTable.large then
            --spawn large ruin
            if DEBUG then
                game.print("A large ruin was spawned at " .. center.x .. "," .. center.y)
            end
            spawnLargeRuins(center, e.surface)
        end
    end
)
