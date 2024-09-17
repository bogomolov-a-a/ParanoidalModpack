local function create_border_horizontal(basic_position, surface, shift_y)
    local result = {}
    for i = 1, 8 do
        table.insert(result,
            surface.create_entity { name = "stone-wall", position = { basic_position.x + i, basic_position.y + shift_y } })
    end
    for i = -9, -2 do
        table.insert(result,
            surface.create_entity { name = "stone-wall", position = { basic_position.x + i, basic_position.y + shift_y } })
    end
end
function create_station_block_border(station_block_position, type, surface, orientation)
    local basic_position = evaluate_basic_position(station_block_position, type)
    local shift_y = 0
    borders = create_border_horizontal(basic_position, surface, shift_y)
end

function evaluate_basic_position(station_block_position, type)
    if type == 1 then
        return { x = station_block_position.x - 2, y = station_block_position.y - 2 }
    elseif type == 2 then
        return { x = station_block_position.x - 1, y = station_block_position.y - 2 }
    elseif type == 3 then
        return { x = station_block_position.x - 1, y = station_block_position.y - 1 }
    end
    return nil
end
