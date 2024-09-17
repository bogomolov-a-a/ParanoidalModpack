TrainStopStopBlockInfoHolder = Class()

function TrainStopStopBlockInfoHolder:init()
    self.stop_block_entities = {
        head_block = {},
        cargo_block = {},
        fluid_block = {},
        tail_block = {}
    }
end

function TrainStopStopBlockInfoHolder:create_new_head_block(block_entity, block_entity_id)
    self.stop_block_entities.head_block[block_entity_id] = block_entity
end

function TrainStopStopBlockInfoHolder:create_new_cargo_block(block_entity, block_entity_id)
    self.stop_block_entities.cargo_block[block_entity_id] = block_entity
end

function TrainStopStopBlockInfoHolder:create_new_fluid_block(block_entity, block_entity_id)
    self.stop_block_entities.fluid_block[block_entity_id] = block_entity
end

function TrainStopStopBlockInfoHolder:create_new_tail_block(block_entity, block_entity_id)
    self.stop_block_entities.tail_block[block_entity_id] = block_entity
end

function TrainStopStopBlockInfoHolder:get_new_head_block(block_entity_id)
    return self.stop_block_entities.head_block[block_entity_id]
end

function TrainStopStopBlockInfoHolder:get_new_cargo_block(block_entity_id)
    return self.stop_block_entities.cargo_block[block_entity_id]
end

function TrainStopStopBlockInfoHolder:get_new_fluid_block(block_entity_id)
    return self.stop_block_entities.fluid_block[block_entity_id]
end

function TrainStopStopBlockInfoHolder:get_new_tail_block(block_entity_id)
    return self.stop_block_entities.tail_block[block_entity_id]
end

function TrainStopStopBlockInfoHolder:remove_new_head_block(block_entity_id)
    self.stop_block_entities.head_block[block_entity_id] = nil
end

function TrainStopStopBlockInfoHolder:remove_new_cargo_block(block_entity_id)
    self.stop_block_entities.cargo_block[block_entity_id] = nil
end

function TrainStopStopBlockInfoHolder:remove_new_fluid_block(block_entity_id)
    self.stop_block_entities.fluid_block[block_entity_id] = nil
end

function TrainStopStopBlockInfoHolder:remove_new_tail_block(block_entity_id)
    self.stop_block_entities.tail_block[block_entity_id] = nil
end

local train_stop_stop_block_instance = nil
function TrainStopStopBlockInfoHolder.get_registry_instance()
    if not train_stop_stop_block_instance then
        train_stop_stop_block_instance = TrainStopStopBlockInfoHolder()
    end
    return train_stop_stop_block_instance
end
