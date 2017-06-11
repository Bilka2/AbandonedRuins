--[[
	This is a table of functions, that when called with an area and center position, will spawn different ruins.
	If you want to add more ruins, simply observe the format, and create it accordingly.
	Remember that the server must also share this config, exactly, to prevent desyncs.
	Format:

	function(center)
	--code to spawn entities relative to the center
	end,

--]]

local fN = game.forces.neutral
local direct = defines.direction


--checks for spawning validity and if valid, clears space for the spawn
function m_clearArea(center)
	for y = center.y-8, center.y+8 do --fail if any water in area
		for x = center.x-8, center.x+8 do
			if game.surfaces[1].get_tile(x, y).name == "water" or game.surfaces[1].get_tile(x, y).name == "deepwater" then
				return false
			end
		end
	end

	for index, entity in pairs(game.surfaces[1].find_entities({{center.x-8,center.y-8},{center.x+8,center.y+8}})) do
		if not string.find(entity.name, "-ore") then --don't destroy ores
			entity.destroy()
		end
	end

	return true
end

local m_ruins = {
	function(center) --power setup
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "medium-electric-pole", position = {center.x+(3.0),center.y+(-6.0)}, force = fN}
		ce{name = "steam-engine", position = {center.x+(-4.0),center.y+(0.0)}, force = fN}
		ce{name = "medium-electric-pole", position = {center.x+(-1.0),center.y+(-3.0)}, force = fN}
		ce{name = "steam-engine", position = {center.x+(-1.0),center.y+(0.0)}, force = fN}
		ce{name = "steam-engine", position = {center.x+(2.0),center.y+(0.0)}, force = fN}
		ce{name = "boiler", position = {center.x+(-4.0),center.y+(3.5)}, force = fN}
		ce{name = "boiler", position = {center.x+(-1.0),center.y+(3.5)}, force = fN}
		ce{name = "boiler", position = {center.x+(2.0),center.y+(3.5)}, force = fN}
		ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(6.0)}, direction = direct.east, force = fN}
		ce{name = "burner-inserter", position = {center.x+(-4.0),center.y+(5.0)}, direction = direct.south, force = fN}
		ce{name = "transport-belt", position = {center.x+(-3.0),center.y+(6.0)}, direction = direct.east, force = fN}
		ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(6.0)}, direction = direct.east, force = fN}
		ce{name = "burner-inserter", position = {center.x+(-1.0),center.y+(5.0)}, direction = direct.south, force = fN}
		ce{name = "transport-belt", position = {center.x+(-1.0),center.y+(6.0)}, direction = direct.east, force = fN}
		ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(6.0)}, direction = direct.east, force = fN}
		ce{name = "transport-belt", position = {center.x+(1.0),center.y+(6.0)}, direction = direct.east, force = fN}
		ce{name = "transport-belt", position = {center.x+(0.0),center.y+(6.0)}, direction = direct.east, force = fN}
		ce{name = "burner-inserter", position = {center.x+(2.0),center.y+(5.0)}, direction = direct.south, force = fN}
		ce{name = "transport-belt", position = {center.x+(2.0),center.y+(6.0)}, direction = direct.east, force = fN}
	end,
	function(center) --biter defense setup
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(-5.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-4.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-2.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-0.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(1.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(3.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(5.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(-3.5)}, force = fN}
		ce{name = "biter-spawner", position = {center.x+(2.0),center.y+(-3.0)}, force = game.forces.enemy}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(-4.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(-1.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(-2.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(0.5)}, force = fN}
		ce{name = "biter-spawner", position = {center.x+(2.0),center.y+(1.0)}, force = game.forces.enemy}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(-0.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(2.5)}, force = fN}
		ce{name = "biter-spawner", position = {center.x+(-2.0),center.y+(2.0)}, force = game.forces.enemy}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(1.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(4.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(3.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-5.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-3.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-1.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(0.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(2.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(4.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(6.5)}, force = fN}

	end,
	function(center) -- mountain range
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "stone-rock", position = {center.x+(-7.5),center.y+(-0.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-3.5),center.y+(-0.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(0.5),center.y+(-0.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(4.5),center.y+(-0.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-5.5),center.y+(1.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-1.5),center.y+(1.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(2.5),center.y+(1.5)}, force = fN}
	end,
	function(center) --small oil setup
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-1.0),center.y+(-5.0)}, force = fN}
		ce{name = "storage-tank", position = {center.x+(1.0),center.y+(-3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(3.0),center.y+(-4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(2.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(3.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(-4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-3.0)}, force = fN}
		ce{name = "storage-tank", position = {center.x+(-2.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(3.0),center.y+(-3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(-3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-1.0)}, force = fN}
		ce{name = "pipe-to-ground", position = {center.x+(1.0),center.y+(0.0)}, force = fN}
		ce{name = "pipe", position = {center.x+(0.0),center.y+(-1.0)}, force = fN}
		ce{name = "pipe", position = {center.x+(1.0),center.y+(-1.0)}, force = fN}
		ce{name = "pipe", position = {center.x+(2.0),center.y+(-1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(3.0)}, force = fN}
		ce{name = "pipe-to-ground", position = {center.x+(1.0),center.y+(4.0)}, direction = direct.south, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(3.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(2.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(3.0)}, force = fN}
	end,
	function(center) -- assembling line
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "assembling-machine-1", position = {center.x+(-3.0),center.y+(-2.0)}, force = fN}
		ce{name = "inserter", position = {center.x+(-1.0),center.y+(-2.0)}, direction = direct.west, force = fN}
		ce{name = "assembling-machine-1", position = {center.x+(1.0),center.y+(-2.0)}, force = fN}
		ce{name = "inserter", position = {center.x+(3.0),center.y+(-2.0)}, direction = direct.west, force = fN}
		ce{name = "assembling-machine-1", position = {center.x+(5.0),center.y+(-2.0)}, force = fN}
		ce{name = "inserter", position = {center.x+(-3.0),center.y+(0.0)}, direction = direct.south, force = fN}
		ce{name = "small-electric-pole", position = {center.x+(-1.0),center.y+(-1.0)}, force = fN}
		ce{name = "small-electric-pole", position = {center.x+(3.0),center.y+(0.0)}, force = fN}
		ce{name = "inserter", position = {center.x+(5.0),center.y+(0.0)}, force = fN}
		ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(1.0)}, direction = direct.east, force = fN}
		ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(1.0)}, direction = direct.east, force = fN}
		ce{name = "transport-belt", position = {center.x+(-3.0),center.y+(1.0)}, direction = direct.east, force = fN}
		ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(1.0)}, direction = direct.east, force = fN}
		ce{name = "iron-chest", position = {center.x+(2.0),center.y+(2.0)}, force = fN}
		ce{name = "inserter", position = {center.x+(3.0),center.y+(2.0)}, direction = direct.east, force = fN}
		ce{name = "assembling-machine-1", position = {center.x+(5.0),center.y+(2.0)}, force = fN}
	end,
	function(center) --queen nest
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-4.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-2.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(2.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(4.5),center.y+(-6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(-5.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(-4.5)}, force = fN}
		ce{name = "medium-worm-turret", position = {center.x+(-3.5),center.y+(-3.5)}, force = game.forces.enemy}
		ce{name = "medium-worm-turret", position = {center.x+(3.5),center.y+(-3.5)}, force = game.forces.enemy}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(-3.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(-2.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(-1.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(-0.5)}, force = fN}
		ce{name = "biter-spawner", position = {center.x+(0.0),center.y+(0.0)}, force = game.forces.enemy}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(0.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(1.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(2.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(3.5)}, force = fN}
		ce{name = "medium-worm-turret", position = {center.x+(-3.5),center.y+(3.5)}, force = game.forces.enemy}
		ce{name = "medium-worm-turret", position = {center.x+(3.5),center.y+(3.5)}, force = game.forces.enemy}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(4.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-6.5),center.y+(5.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-4.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-2.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-0.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(1.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(3.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(5.5),center.y+(6.5)}, force = fN}
	end,
	function(center)
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "stone-rock", position = {center.x+(-5.5),center.y+(-5.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(5.5),center.y+(-5.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-1.5),center.y+(-4.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(2.5),center.y+(-4.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-4.0)}, force = fN}
		ce{name = "gate", position = {center.x+(-5.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-3.0)}, force = fN}
		ce{name = "gate", position = {center.x+(-5.0),center.y+(-1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(-0.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(1.0)}, force = fN}
		ce{name = "gate", position = {center.x+(6.0),center.y+(2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(1.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-5.5),center.y+(3.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(3.5),center.y+(4.5)}, force = fN}
		ce{name = "gate", position = {center.x+(6.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-0.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(2.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(5.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(5.0)}, force = fN}
	end,
	function(center) --long chain of pipes
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "pipe-to-ground", position = {center.x+(-1.0),center.y+(-7.0)}, force = fN}
		ce{name = "pipe-to-ground", position = {center.x+(-1.0),center.y+(-2.0)}, direction = direct.south, force = fN}
		ce{name = "pipe-to-ground", position = {center.x+(-7.0),center.y+(0.0)}, direction = direct.west, force = fN}
		ce{name = "pipe-to-ground", position = {center.x+(-1.0),center.y+(-1.0)}, force = fN}
		ce{name = "pipe-to-ground", position = {center.x+(4.0),center.y+(0.0)}, direction = direct.west, force = fN}
		ce{name = "pipe-to-ground", position = {center.x+(3.0),center.y+(0.0)}, direction = direct.east, force = fN}
		ce{name = "pipe-to-ground", position = {center.x+(-1.0),center.y+(6.0)}, direction = direct.south, force = fN}
	end,
	function(center) --encampment
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-1.0),center.y+(-6.0)}, force = fN}
		ce{name = "land-mine", position = {center.x+(1.26953125),center.y+(-4.28515625)}, force = game.forces.enemy}
		ce{name = "gate", position = {center.x+(1.0),center.y+(-6.0)}, direction = direct.east, force = fN}
		ce{name = "stone-wall", position = {center.x+(2.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(3.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(5.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(-4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(-3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(-1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(2.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(3.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-7.0),center.y+(1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-7.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(0.0)}, force = fN}
		ce{name = "wooden-chest", position = {center.x+(-1.0),center.y+(1.0)}, force = fN}.insert{name = "raw-fish", count=30}
		ce{name = "stone-wall", position = {center.x+(-1.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(2.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(3.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(5.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-7.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-7.0),center.y+(2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-7.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-7.0),center.y+(4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-1.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(2.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(3.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(5.0),center.y+(5.0)}, force = fN}
	end,
	function(center) --rough perimeter
		local ce = game.surfaces[1].create_entity --save typing
		if m_clearArea(center) == false then return end
		ce{name = "stone-rock", position = {center.x+(-5.5),center.y+(-5.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(5.5),center.y+(-5.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-1.5),center.y+(-4.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(2.5),center.y+(-4.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(4.0),center.y+(-5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-4.0)}, force = fN}
		ce{name = "gate", position = {center.x+(-5.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-3.0)}, force = fN}
		ce{name = "gate", position = {center.x+(-5.0),center.y+(-1.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(0.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(6.5),center.y+(-0.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(1.0)}, force = fN}
		ce{name = "gate", position = {center.x+(6.0),center.y+(2.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(1.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-5.5),center.y+(3.5)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(3.5),center.y+(4.5)}, force = fN}
		ce{name = "gate", position = {center.x+(6.0),center.y+(3.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(4.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-rock", position = {center.x+(-0.5),center.y+(6.5)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(6.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(1.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(2.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(5.0),center.y+(5.0)}, force = fN}
		ce{name = "stone-wall", position = {center.x+(6.0),center.y+(5.0)}, force = fN}

	end,
}

function spawnMediumRuins(center)
	m_ruins[math.random(#m_ruins)](center) --call a random function
	game.surfaces[1].set_tiles({{name = "concrete", position = center}})
end
