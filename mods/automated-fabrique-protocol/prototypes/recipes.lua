local gate_wall_concrete_train_stop_block_universal_part_recipe_mode = {
    ingredients = {
        {
            type = "item",
            name = "stone-wall",
            amount = 42
        },
        {
            type = "item",
            name = "gate",
            amount = 4
        },
        {
            type = "item",
            name = "stone-brick", --"concrete",
            amount = 162
        }
    },
    result = "gate-wall-concrete-train-stop-block-universal-part",
    count = 1,
    energy_required = 30,
    enabled = false
}
local train_stop_stop_block_logical_part_recipe_mode = {
    ingredients = {
        {
            type = "item",
            name = "constant-combinator",
            amount = 9
        },
        {
            type = "item",
            name = "arithmetic-combinator",
            amount = 5
        },
        {
            type = "item",
            name = "decider-combinator",
            amount = 4
        },
        {
            type = "item",
            name = "electronic-circuit",
            amount = 42
        }
    },
    result = "train-stop-stop-block-logical-part",
    count = 1,
    energy_required = 30,
    enabled = false
}

local train_stop_stop_block_light_ui_part_recipe_mode = {
    ingredients = {
        {
            type = "item",
            name = "small-lamp",
            amount = 3
        },
        {
            type = "item",
            name = "nixie-tube-alpha",
            amount = 7
        },
        {
            type = "item",
            name = "nixie-tube-small",
            amount = 6
        }
    },
    result = "train-stop-stop-block-light-ui-part",
    count = 1,
    energy_required = 30,
    enabled = false
}

local train_stop_stop_block_railway_part_recipe_mode = {
    ingredients = {
        {
            type = "item",
            name = "train-stop",
            amount = 1
        },
        {
            type = "item",
            name = "rail-signal",
            amount = 1
        },
        {
            type = "item",
            name = "rail-chain-signal",
            amount = 1
        },
        {
            type = "item",
            name = "train-unlimit",
            amount = 1
        },
        {
            type = "item",
            name = "train-limit",
            amount = 1
        },
    },
    result = "train-stop-stop-block-railway-part",
    count = 1,
    energy_required = 30,
    enabled = false
}

local train_stop_stop_block_electric_part_recipe_mode = {
    ingredients = {
        {
            type = "item",
            name = "bi-wooden-pole-big",
            amount = 3
        },
        {
            type = "item",
            name = "small-electric-pole",
            amount = 4
        },
        {
            type = "item",
            name = "power-switch",
            amount = 1
        },
        {
            type = "item",
            name = "copper-cable",
            amount = 7
        }
    },
    result = "train-stop-stop-block-electric-part",
    count = 1,
    energy_required = 30,
    enabled = false
}

local train_stop_stop_dispatcher_block_1_recipe_mode = {
    ingredients = {
        {
            type = "item",
            name = "train-stop-stop-block-light-ui-part",
            amount = 1
        },
        {
            type = "item",
            name = "train-stop-stop-block-railway-part",
            amount = 1
        },
        {
            type = "item",
            name = "train-stop-stop-block-electric-part",
            amount = 1
        },
        {
            type = "item",
            name = "train-stop-stop-block-logical-part",
            amount = 1
        },
        {
            type = "item",
            name = "gate-wall-concrete-train-stop-block-universal-part",
            amount = 1
        }
    },
    result = "train-stop-stop-dispatcher-block-1",
    count = 1,
    energy_required = 120,
    enabled = false
}

data:extend({
    {
        type = "recipe",
        name = "gate-wall-concrete-train-stop-block-universal-part",
        subgroup = "transport",
        normal = gate_wall_concrete_train_stop_block_universal_part_recipe_mode,
        expensive = gate_wall_concrete_train_stop_block_universal_part_recipe_mode
    },
    {
        type = "recipe",
        name = "train-stop-stop-block-logical-part",
        subgroup = "transport",
        normal = train_stop_stop_block_logical_part_recipe_mode,
        expensive = train_stop_stop_block_logical_part_recipe_mode
    },
    {
        type = "recipe",
        name = "train-stop-stop-block-light-ui-part",
        subgroup = "transport",
        normal = train_stop_stop_block_light_ui_part_recipe_mode,
        expensive = train_stop_stop_block_light_ui_part_recipe_mode
    },
    {
        type = "recipe",
        name = "train-stop-stop-block-railway-part",
        subgroup = "transport",
        normal = train_stop_stop_block_railway_part_recipe_mode,
        expensive = train_stop_stop_block_railway_part_recipe_mode
    },
    {
        type = "recipe",
        name = "train-stop-stop-block-electric-part",
        subgroup = "transport",
        normal = train_stop_stop_block_electric_part_recipe_mode,
        expensive = train_stop_stop_block_electric_part_recipe_mode
    },
    {
        type = "recipe",
        name = "train-stop-stop-dispatcher-block-1",
        subgroup = "transport",
        normal = train_stop_stop_dispatcher_block_1_recipe_mode,
        expensive = train_stop_stop_dispatcher_block_1_recipe_mode
    }
})
