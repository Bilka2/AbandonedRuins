require("smallRuins")
require("mediumRuins")
require("largeRuins")

-- USER CONFIG VARS
-- These *must* match the server that you are playing on, and must not be changed during runtime, otherwise desyncs will occur.

--Minimum spawn distance - Change to give yourself more breathing room at spawn. Default 200.
local MINIMUM_DISTANCE_FROM_SPAWN = 200

--- BEGIN SCRIPTING
script.on_event({defines.events.on_chunk_generated},
   function (e)
      local center = {x=(e.area.left_top.x+e.area.right_bottom.x)/2, y=(e.area.left_top.y+e.area.right_bottom.y)/2}
      if math.abs(center.x) < MINIMUM_DISTANCE_FROM_SPAWN and math.abs(center.y) < MINIMUM_DISTANCE_FROM_SPAWN then return end --too close to spawn

      local probabilityCounter = math.random(100)

      if probabilityCounter <= 65 then
         --do nothing, don't want these spammed everywhere
      elseif probabilityCounter > 65 and probabilityCounter <= 85 then --20% chance
         --spawn small ruin
         --game.print("A small ruin was spawned at " .. center.x .. "," .. center.y)
         spawnSmallRuins(center)

      elseif probabilityCounter > 85 and probabilityCounter <= 95 then --10% chance
         --spawn medium ruin
         --game.print("A medium ruin was spawned at " .. center.x .. "," .. center.y)

      elseif probabilityCounter > 95 then --5% chance
         --spawn large ruin
         --game.print("A large ruin was spawned at " .. center.x .. "," .. center.y)
      end
   end
)


--Testing code
script.on_event({defines.events.on_tick},
   function (e)
      if e.tick % 120 == 0 and game.players[1].selected then
         game.print(game.players[1].selected.position.x-game.players[1].position.x .. "," .. game.players[1].selected.position.y-game.players[1].position.y)
      end

   end
)

--[[
   /c for i = 1, 32 do
   game.surfaces[1].create_entity{name="stone-wall",position={i,0}, force=game.forces.neutral}
   game.surfaces[1].create_entity{name="stone-wall",position={32,i}, force=game.forces.neutral}
   game.surfaces[1].create_entity{name="stone-wall",position={0,32-i},  force=game.forces.neutral}
   game.surfaces[1].create_entity{name="stone-wall",position={32-i,32},  force=game.forces.neutral}
   end

--]]
