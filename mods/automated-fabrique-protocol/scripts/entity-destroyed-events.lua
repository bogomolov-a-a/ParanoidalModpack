function on_destroy_entity_station_parts(event)
    local block_id_number = event.unit_number
    local registry_instance = TrainStopStopBlockInfoHolder.get_registry_instance()
    local head_block = registry_instance:get_new_head_block(block_id_number)
    if head_block then

    end
end
