require("stop-block-utils")
function on_built_train_stop_stop_dispatcher_block_1(player_index, created_entity)
    local entity_data = {}
    entity_data.position = created_entity.position

    local borders = create_station_block_border(created_entity.position, STATION_BLOCK_HEAD, created_entity.surface)
    entity_data.borders = borders
    if _table.size(borders) ~= 46 then
        game.print(
            "Не удалось создать станцию в позиции " ..
            Utils.dump_to_console(created_entity.position) .. " Причина: невозможно поставить: Границы станции ",
            { r = 1, r = 0, b = 0, a = 0 })
        created_entity.destroy()
    end
end
