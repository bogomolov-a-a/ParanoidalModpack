_table.each(data.raw["train-stop"],
    function(train_stop_prototype)
        train_stop_prototype.collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } }
        train_stop_prototype.selection_box = { { -0.5, 0.5 }, { 0.5, 1.5 } }
    end)
_table.each(data.raw["locomotive"], function(rolling_stock)
    rolling_stock.connection_distance = 3.9
    rolling_stock.joint_distance = 3
    rolling_stock.collision_box = { { -1, -1.7 }, { 1, 1.7 } }
    rolling_stock.drawing_box = { { -1, -2.1 }, { 1, 2.1 } }
    rolling_stock.vertical_selection_shift = -0.5
    rolling_stock.selection_box = { { -1, -2.5 }, { 1, 2.5 } }
end)
local function handle_cargo_wagon_rolling_stock(rolling_stock)
    rolling_stock.connection_distance = 4
    rolling_stock.joint_distance = 2.92
    rolling_stock.collision_box = { { -1, -1.66 }, { 1, 1.66 } }
    rolling_stock.drawing_box = { { -1, -2.1 }, { 1, 2.1 } }
    rolling_stock.vertical_selection_shift = -0.5
    rolling_stock.selection_box = { { -1, -2.5 }, { 1, 2.5 } }
end
_table.each(data.raw["cargo-wagon"], function(rolling_stock)
    handle_cargo_wagon_rolling_stock(rolling_stock)
end)
_table.each(data.raw["fluid-wagon"], function(rolling_stock)
    handle_cargo_wagon_rolling_stock(rolling_stock)
end)
_table.each(data.raw["artillery-wagon"], function(rolling_stock)
    handle_cargo_wagon_rolling_stock(rolling_stock)
end)
_table.each(data.raw["gate"], function(gate)
    gate.activation_distance = 0.02
end)
_table.each(data.raw["pump"], function(pump)
    pump.fluid_wagon_connector_alignment_tolerance = 17 / 32.0
end)
