local recipe_util = require("__automated-utility-protocol__.util.recipe-util")
local function remove_recipe_ingredients(mode)
    if data.raw["item"]["steam-turbine"] then
        if settings.startup["hardcore-mode-for-playing-use-separated-boilers-for-every-fuel"].value then
            recipe_util.remove_recipe_ingredient("nuclear-reactor", mode, { type = "item", name = "boiler-4" })
        end
    end
    if settings.startup["hardcore-mode-for-playing-use-separated-boilers-for-every-fuel"].value then
        recipe_util.remove_recipe_ingredient("heat-exchanger", mode, { type = "item", name = "boiler-2" })
    end

    recipe_util.remove_recipe_ingredients("intelligent-io",mode,{
            { type = "item", name = "speed-processor-3" },{ type = "item", name = "effectivity-processor-3" },{ type = "item", name = "productivity-processor-3" }
        })
    if mods["Warheads"] then
        recipe_util.remove_recipe_ingredients("atomic-bomb", mode, { { type = "item", name = "TN-warhead-20--2" } })
    end
    recipe_util.remove_recipe_ingredients("alloy-mixer",mode,{ { type = "item", name = "steel-plate" }, { type = "item", name = "steel-gear-wheel" } })
    recipe_util.remove_recipe_ingredients("intermediate-structure-components",mode,{{  type = "item",name="brass-gear-wheel"}})
    recipe_util.remove_recipe_ingredients("standart-io",mode,{{  type = "item",name="condensator2"}})
    recipe_util.remove_recipe_ingredients("electronics-machine-2",mode,{{  type = "item",name="advanced-circuit"}})
end
local function add_recipe_ingredients(mode)
    if data.raw["item"]["steam-turbine"] then
        if settings.startup["hardcore-mode-for-playing-use-separated-boilers-for-every-fuel"].value then
            recipe_util.add_recipe_ingredients("nuclear-reactor",mode,{
                    { type = "item", name = "boiler-4-steam-615-with-fuel-item-solid-oil-residual", amount = 2 }--[,{ type = "item", name = "boiler-4-steam-615-with-fuel-item-wood-pellets",       amount = 1 }]]
                })
        end
    end
    if settings.startup["hardcore-mode-for-playing-use-separated-boilers-for-every-fuel"].value then
        recipe_util.add_recipe_ingredients("heat-exchanger",mode,{
                { type = "item", name = "boiler-2-steam-315-with-fuel-item-coal",         amount = 1 },{ type = "item", name = "boiler-2-steam-315-with-fuel-item-solid-carbon", amount = 1 }
            })
    end
    recipe_util.add_recipe_ingredients("intelligent-io",mode,{
            { type = "item", name = "speed-processor-2",        amount = 16 },{ type = "item", name = "effectivity-processor-2",  amount = 16 },{ type = "item", name = "productivity-processor-2", amount = 16 }
        })
    recipe_util.add_recipe_ingredients("intermediate-structure-components",mode,{{type = "item",name="steel-gear-wheel",amount=12}})
    recipe_util.add_recipe_ingredients("standart-io",mode,{{  type = "item",name="condensator",amount=10}})
    recipe_util.add_recipe_ingredients("electronics-machine-2",mode,{{  type = "item",name="electronic-circuit",amount=10}})
end
_table.each(GAME_MODES,function(mode)
        remove_recipe_ingredients(mode)
        add_recipe_ingredients(mode)
    end)
-- для раздельных режимов
recipe_util.add_recipe_ingredients("alloy-mixer","normal",{ { type = "item", name = "iron-plate", amount = 60 }, { type = "item", name = "iron-gear-wheel", amount = 36 } })
recipe_util.add_recipe_ingredients("alloy-mixer","expensive",{ { type = "item", name = "iron-plate", amount = 300 }, { type = "item", name = "iron-gear-wheel", amount = 180 } })
