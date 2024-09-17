require("stop-block-utils")
function on_built_train_stop_stop_dispatcher_block_1(player_index, created_entity)
    local entity_data = {}
    entity_data.position = created_entity.position

    local borders = create_station_block_border(created_entity.position, STATION_BLOCK_HEAD, created_entity.surface)
    entity_data.borders = borders
end
