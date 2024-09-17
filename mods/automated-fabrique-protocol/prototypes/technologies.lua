local ATTP_PREREQUISITES = {
    "circuit-network",
    "fluid-handling",
    "fluid-wagon",
    "gate",
    "logistics",
    "railway",
    "rail-signals",
    "electric-mining",
    "bi-tech-wooden-pole-1",
    "factory-architecture-t1",
    "factory-connection-type-chest",
    "factory-connection-type-fluid",
    "factory-connection-type-circuit",
    "factory-interior-upgrade-lights",
    "factory-interior-upgrade-display",
    "cathodes",
    "gun-turret",
    "electric-lab",
    "angels-solder-smelting-1"
}
if mods["hardcore-mode-for-playing"] then
    table.insert(ATTP_PREREQUISITES, "repair-pack")
end
local ATTP_2_PREREUISITES =
{ ATTP_1_TECHNOLOGY_NAME, "logistics-2", "logistic-science-pack", "automation-2", "factory-architecture-t2" }
local ATTP_3_PREREQUISITES =
{ ATTP_2_TECHNOLOGY_NAME, "warehouse-research", "utility-science-pack", "logistics-3", "automation-3",
    "factory-recursion-t1" }
local ATTP_4_PREREQUISITES = { ATTP_3_TECHNOLOGY_NAME, "utility-science-pack", "production-science-pack",
    "factory-recursion-t2" }
local attp_1_effects = {
    {
        type = "unlock-recipe",
        recipe = "gate-wall-concrete-train-stop-block-universal-part"
    },
    {
        type = "unlock-recipe",
        recipe = "train-stop-stop-block-logical-part"
    },
    {
        type = "unlock-recipe",
        recipe = "train-stop-stop-block-light-ui-part"
    },
    {
        type = "unlock-recipe",
        recipe = "train-stop-stop-block-electric-part"
    },
    {
        type = "unlock-recipe",
        recipe = "train-stop-stop-block-railway-part"
    },
    {
        type = "unlock-recipe",
        recipe = "train-stop-stop-dispatcher-block-1"
    },
}
data:extend({
    {
        type = "technology",
        name = ATTP_1_TECHNOLOGY_NAME,
        icon = "__base__/graphics/technology/circuit-network.png",
        icon_size = 256,
        icon_mipmaps = 4,
        normal = {
            prerequisites = ATTP_PREREQUISITES,
            unit = {
                count = 100,
                ingredients = {
                    { "automation-science-pack", 3 },
                },
                time = 60,
            },
            effects = attp_1_effects
        },
        expensive = {
            prerequisites = ATTP_PREREQUISITES,
            unit = {
                count = 150,
                ingredients = {
                    { "automation-science-pack", 5 },
                },
                time = 120,
            },
            effects = attp_1_effects
        }
    },
    {
        type = "technology",
        name = ATTP_2_TECHNOLOGY_NAME,
        icon = "__base__/graphics/technology/circuit-network.png",
        icon_size = 256,
        icon_mipmaps = 4,
        normal = {
            prerequisites = ATTP_2_PREREUISITES,
            unit = {
                count = 200,
                ingredients = {
                    { "automation-science-pack", 3 },
                    { "logistic-science-pack",   1 },
                },
                time = 60,
            }
        },
        expensive = {
            prerequisites = ATTP_2_PREREUISITES,
            unit = {
                count = 250,
                ingredients = {
                    { "automation-science-pack", 2 },
                    { "logistic-science-pack",   1 },
                },
                time = 60,
            }
        }
    },
    {
        type = "technology",
        name = ATTP_3_TECHNOLOGY_NAME,
        icon = "__base__/graphics/technology/circuit-network.png",
        icon_size = 256,
        icon_mipmaps = 4,
        normal = {
            prerequisites = ATTP_3_PREREQUISITES,
            unit = {
                count = 150,
                ingredients = {
                    { "automation-science-pack", 5 },
                    { "logistic-science-pack",   2 },
                    { "utility-science-pack",    1 },
                },
                time = 120,
            }
        },
        expensive = {
            prerequisites = ATTP_3_PREREQUISITES,
            unit = {
                count = 200,
                ingredients = {
                    { "automation-science-pack", 5 },
                    { "logistic-science-pack",   2 },
                    { "utility-science-pack",    1 },
                },
                time = 120,
            },
        }
    },
    {
        type = "technology",
        name = ATTP_4_TECHNOLOGY_NAME,
        icon = "__base__/graphics/technology/circuit-network.png",
        icon_size = 256,
        icon_mipmaps = 4,
        normal = {
            prerequisites = ATTP_4_PREREQUISITES,
            unit = {
                count = 200,
                ingredients = {
                    { "automation-science-pack", 10 },
                    { "logistic-science-pack",   6 },
                    { "utility-science-pack",    3 },
                    { "production-science-pack", 1 },
                },
                time = 120,
            }
        },
        expensive = {
            prerequisites = ATTP_4_PREREQUISITES,
            unit = {
                count = 400,
                ingredients = {
                    { "automation-science-pack", 10 },
                    { "logistic-science-pack",   6 },
                    { "utility-science-pack",    3 },
                    { "production-science-pack", 1 },
                },
                time = 120,
            }
        }
    },
})
