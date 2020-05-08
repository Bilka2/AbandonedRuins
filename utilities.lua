local util = {}
util.LARGE_RUIN_RADIUS = 16
util.MEDIUM_RUIN_RADIUS = 8
util.SMALL_RUIN_RADIUS = 4

util.clear_area = function(radius, center, surface)
    local area = {{center.x-radius, center.y-radius}, {center.x+radius, center.y+radius}}
    --exclude tiles that we shouldn't spawn on
    if surface.count_tiles_filtered{ area = area, limit = 1, collision_mask = "item-layer" } == 1 then
        return false
    end

    for index, entity in pairs(surface.find_entities_filtered({area = area, type={"resource", "tree"}, invert = true})) do
        entity.destroy({do_cliff_correction=true})
    end

    return true
end

return util
