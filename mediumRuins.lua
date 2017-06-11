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
function m_clearArea(center)
   for y = center.y-8, center.y+8 do --fail if any water in area
      for x = center.x-8, center.x+8 do
         if game.surfaces[1].get_tile(x,y).name == "water" or game.surfaces[1].get_tile(x,y).name == "deepwater" then
            return false
         end
      end
   end

   for index,entity in pairs(game.surfaces[1].find_entities({{center.x-8,center.y-8},{center.x+8,center.y+8}})) do
      if not string.find(entity.name, "-ore") then --don't destroy ores
         entity.destroy()
      end
   end

   return true
end

local m_ruins = {
   function(center) --power setup


   end,
}

function spawnMediumRuins(center)
   m_ruins[math.random(#m_ruins)](center) --call a random function
   game.surfaces[1].set_tiles({{name="concrete",position=center}})
end
