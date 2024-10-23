data:extend({
    {
      type = "recipe-category",
      name = "auto-fabricator"
    },
    {
      type = "recipe",
      name = "iron-delivery",
      enabled = false,
      ingredients = {},
      result = "iron-plate",
      result_count = 100,
      energy_required = 2,
      category = "auto-fabricator",
      subgroup = "building-recipies",
    },
    {
        type = "recipe",
        name = "copper-delivery",
        enabled = false,
        ingredients = {},
        result = "copper-plate",
        result_count = 100,
        energy_required = 2,
        category = "auto-fabricator",
        subgroup = "building-recipies",
      },
      {
        type = "recipe",
        name = "steel-delivery",
        enabled = false,
        ingredients = {},
        result = "steel-plate",
        result_count = 100,
        energy_required = 4,
        category = "auto-fabricator",
        subgroup = "building-recipies",
      },
      {
        type = "recipe",
        name = "stone-delivery",
        enabled = false,
        ingredients = {},
        result = "stone-brick",
        result_count = 100,
        energy_required = 2,
        category = "auto-fabricator",
        subgroup = "building-recipies",
      },
      {
        type = "recipe",
        name = "uranium-delivery",
        enabled = false,
        ingredients = {},
        result = "uranium-ore",
        result_count = 50,
        energy_required = 2,
        category = "auto-fabricator",
        subgroup = "building-recipies",
      },
      {
        type = "recipe",
        name = "ground-auto-fabricator",
        enabled = false,
        energy_required = 1000,
        ingredients =
        {
          {"ground-fabricator-component", 4},
        },
        result = "ground-auto-fabricator",
        icon = "__expanded-rocket-payloads__/graphic/auto-fabricator-32.png",
        icon_size = 32,
        subgroup = "buildings",
        category = "satellite-crafting",
        order = "a"
      },
      {
        type = "recipe",
        name = "orbital-fabricator-component",
        energy_required = 1500,
        enabled = false,
        ingredients = 
        {
            {"advanced-assembler", 100},
            {"autonomous-space-mining-drone", 10},
            {"centrifuge", 250},
            {"chemical-plant", 100},   
            {"electric-furnace", 500},
            {"oil-refinery", 50},
            {"satellite-bus", 200},
            {"satellite-communications", 500},
            {"satellite-flight-computer", 250},
            {"stack-filter-inserter", 500},
          },
        result = "orbital-fabricator-component",
        category = "satellite-crafting",
        subgroup = "space-mining",
    },
    {
        type = "recipe",
        name = "fabricator-shuttle",
        category = "satellite-crafting",
        energy_required = 800,
        enabled = false,
        subgroup = "Space-Shuttles",
        ingredients = 
        {
          {"orbital-fabricator-component", 1},
          {"satellite-thruster", 50},
          {"shuttle-hull", 1},
        },
        result = "fabricator-shuttle",
    },
    {
        type = "recipe",
        name = "refurbish-fabricator-shuttle",
        energy_required = 800,
        enabled = false,
        ingredients =
        {
          {type="fluid", name="water", amount=20000},
          {"landed-fabricator-shuttle",1},
          {"orbital-fabricator-component", 1},
          {"rocket-fuel", 2000},
          {"stone-brick", 5000},
        },
        results=
        {
          {"fabricator-shuttle", 1},
          {"ground-fabricator-component", 1},
        },
        icon = "__expanded-rocket-payloads__/graphic/landed-fabricator-shuttle-32.png",
        icon_size = 32,
        subgroup = "shuttle-processies",
        order = "b",
        category = "satellite-crafting",
    },
})