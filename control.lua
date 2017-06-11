require("smallRuins")
require("mediumRuins")
require("largeRuins")

local DEBUG = false --used for debug, users should not enable

-- USER CONFIG VARS
-- These *must* match the server that you are playing on, and must not be changed during runtime, otherwise desyncs will occur.

--Minimum spawn distance - Change to give yourself more breathing room at spawn. Default 200.
local MINIMUM_DISTANCE_FROM_SPAWN = 200
local smallChance = 0.1
local mediumChance = 0.05
local largeChance = 0.02


--- BEGIN SCRIPTING

--function that will return true 'percent' of the time.
function probability(percent)
    return math.random() <= percent
end

script.on_event({defines.events.on_chunk_generated},
    function (e)
        local center = {x=(e.area.left_top.x+e.area.right_bottom.x)/2, y=(e.area.left_top.y+e.area.right_bottom.y)/2}
        if math.abs(center.x) < MINIMUM_DISTANCE_FROM_SPAWN and math.abs(center.y) < MINIMUM_DISTANCE_FROM_SPAWN then return end --too close to spawn

        if probability(smallChance) then
            --spawn small ruin
            if DEBUG then
                game.print("A small ruin was spawned at " .. center.x .. "," .. center.y)
            end

            --random variance so they aren't always chunk aligned
            center.x = center.x + math.random(-10,10)
            center.y = center.y + math.random(-10,10)


            --spawnSmallRuins(center)
        elseif probability(mediumChance) then
            --spawn medium ruin
            if DEBUG then
                game.print("A medium ruin was spawned at " .. center.x .. "," .. center.y)
            end

            --random variance so they aren't always chunk aligned
            center.x = center.x + math.random(-5,5)
            center.y = center.y + math.random(-5,5)

            spawnMediumRuins(center)

        elseif probability(largeChance) then
            --spawn large ruin
            if DEBUG then
                game.print("A large ruin was spawned at " .. center.x .. "," .. center.y)
            end
            spawnLargeRuins(center)
        end
    end
)
