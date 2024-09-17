require("entities.train-stop-stop-blocks")
function on_built_entity_station_parts(event)
    if not event.created_entity or not event.created_entity.valid then return end
    if event.created_entity.name == "train-stop-stop-dispatcher-block-1" then
        on_built_train_stop_stop_dispatcher_block_1(event.player_index, event.created_entity)
        return
    end
end
