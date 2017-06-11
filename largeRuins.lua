--[[
   This is a table of functions, that when called with an area and center position, will spawn different ruins.
   If you want to add more ruins, simply observe the format, and create it accordingly.
   Remember that the server must also share this config, exactly, to prevent desyncs.
   Format:

   function(center)
   --code to spawn entities relative to the center
   end,

--]]

--checks for spawning validity and if valid, clears space for the spawn
function l_clearArea(center)
   for y = center.y-16, center.y+16 do --fail if any water in area
      for x = center.x-16, center.x+16 do
         if game.surfaces[1].get_tile(x,y).name == "water" or game.surfaces[1].get_tile(x,y).name == "deepwater" then
            return false
         end
      end
   end

   for index,entity in pairs(game.surfaces[1].find_entities({{center.x-16,center.y-16},{center.x+16,center.y+16}})) do
      if not string.find(entity.name, "-ore") then --don't destroy ores
         entity.destroy()
      end
   end

   return true
end

local l_ruins = {
   function(center)


   end
}

function spawnLargeRuins(center)
   l_ruins[math.random(#l_ruins)](center) --call a random function
   game.surfaces[1].set_tiles({{name="concrete",position=center}})
end
