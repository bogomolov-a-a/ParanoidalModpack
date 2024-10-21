local tech_util = require("__automated-utility-protocol__.util.technology-util")
local function detect_target_temperature_for_boiler(boiler)
    local boiler_mode = boiler.mode
    if boiler_mode == "output-to-separate-pipe" then
        return boiler.target_temperature
    end
    if boiler_mode == "heat-water-inside" then
        return data.raw["fluid"][boiler.output_fluid_box.filter].max_temperature
    end
    return nil
end

local function is_steam_boiler(boiler)
    return boiler.output_fluid_box.filter == "steam" and boiler.fluid_box.filter == "water"
end
local function is_fluid_energy_source_boiler(boiler)
    return boiler.energy_source.type == "fluid"
end
local function is_electric_energy_source_boiler(boiler)
    return boiler.energy_source.type == "electric"
end
local function is_heat_energy_source_boiler(boiler)
    return boiler.energy_source.type == "heat"
end
local function is_burner_energy_source_boiler(boiler)
    return boiler.energy_source.type == "burner"
end
local function check_boiler_data(boiler_data)
    return boiler_data.is_fluid_energy_source
        or boiler_data.is_electric_energy_source
        or boiler_data.is_burner_energy_source
        or boiler_data.is_heat_energy_source
end
local function get_boilers_by_target_temperature(technology_names, mode)
    local result = {}
    local boiler_count = 0
    _table.each(technology_names, function(technology_name)
        local results = tech_util.get_all_recipe_results_for_specified_technology(technology_name, mode)
        _table.each(results, function(recipe_result)
            local recipe_result_name = recipe_result.name or recipe_result[1]
            if not data.raw["boiler"][recipe_result_name] then
                return
            end
            local boiler = data.raw["boiler"][recipe_result_name]
            if not is_steam_boiler(boiler) then
                return
            end
            local target_temperature = detect_target_temperature_for_boiler(boiler)
            if not result[target_temperature] and target_temperature then
                result[target_temperature] = {}
            end
            if not result[target_temperature] then
                error(
                    "Для режима игры "
                    .. mode
                    .. " в технологии "
                    .. technology_name
                    .. " для найденого бойлер  "
                    .. recipe_result_name
                    .. "\nОписание:"
                    .. Utils.dump_to_console(boiler)
                    .. " поле target_temperature не указано!"
                )
            end
            local boiler_data = {
                name = boiler.name,
                is_fluid_energy_source = is_fluid_energy_source_boiler(boiler),
                is_electric_energy_source = is_electric_energy_source_boiler(boiler),
                is_burner_energy_source = is_burner_energy_source_boiler(boiler),
                is_heat_energy_source = is_heat_energy_source_boiler(boiler),
                technology_name_occured_boiler_prototype = technology_name,
                mode = mode,
                effectivity = boiler.energy_source.effectivity,
                energy_consumption = boiler.energy_consumption,
                temperature = target_temperature,
            }
            if not check_boiler_data(boiler_data) then
                error(
                 "Для режима игры "
                    .. mode
                    .. " в технологии "
                    .. technology_name
                    .. " для найденого бойлер  "
                    .. recipe_result_name
                    .. "\nОписание:"
                    .. Utils.dump_to_console(boiler)
                    .. " не найден источник питания не равный Void!"
                )
            end
            if not _table.contains_f_deep(result[target_temperature],boiler_data) then             
                table.insert(result[target_temperature], boiler_data)
                boiler_count = boiler_count + 1
            end
        end)
    end)
    log("общее число бойлеров " .. tostring(boiler_count))
    return result
end
function boiler_processing(technology_names, mode)
    local result = get_boilers_by_target_temperature(technology_names, mode)
    _table.each(result, function(boiler_datas, target_temperature)
        _table.each(boiler_datas, function(boiler_data)
            local current_technology_name = boiler_data.technology_name_occured_boiler_prototype
            if not boiler_data.is_burner_energy_source then
                local filtered_boiler_data = _table.filter(boiler_datas, function(data)
                    return data.is_burner_energy_source
                end)[1]
                if not  TechnologyTreeUtil.have_technology_in_tree(current_technology_name, filtered_boiler_data.technology_name_occured_boiler_prototype, mode) then
                
                    tech_util.add_prerequisites_to_technology(
                        current_technology_name,
                        { filtered_boiler_data.technology_name_occured_boiler_prototype },
                        mode
                    )
                end
            end
        end)
    end)
    return result
end

local function set_recipe_result(target_boiler_recipe, target_boiler_name)
    target_boiler_recipe.normal.result = target_boiler_name
    target_boiler_recipe.normal.results = nil
    target_boiler_recipe.expensive.result = target_boiler_name
    target_boiler_recipe.expensive.results = nil
end

local function evaluate_target_boiler_entity_localised_name(boiler_name,fuel_data)
    if fuel_data.type=="fluid"then 
        return {"entity-name.boiler-with-fuel-fluid",boiler_name,fuel_data.name}
    end
    return {"entity-name.boiler-with-fuel-item",boiler_name,fuel_data.name}
end

local function evaluate_target_boiler_entity_localised_description(boiler_name,fuel_data)
    if fuel_data.type=="fluid"then 
        return {"entity-description.boiler-with-fuel-fluid",boiler_name,fuel_data.name}
    end
    return {"entity-description.boiler-with-fuel-item",boiler_name,fuel_data.name}
end

local function evaluate_target_boiler_item_localised_name(boiler_name,fuel_data)
    if fuel_data.type=="fluid"then 
        return {"item-name.boiler-with-fuel-fluid",boiler_name,fuel_data.name}
    end
    return {"item-name.boiler-with-fuel-item",boiler_name,fuel_data.name}
end

local function evaluate_target_boiler_item_localised_description(boiler_name,fuel_data)
    if fuel_data.type=="fluid"then 
        return {"item-description.boiler-with-fuel-fluid",boiler_name,fuel_data.name}
    end
    return {"item-description.boiler-with-fuel-item",boiler_name,fuel_data.name}
end

local function evaluate_target_boiler_recipe_localised_name(boiler_name,fuel_data)
    if fuel_data.type=="fluid"then 
        return {"recipe-name.boiler-with-fuel-fluid",boiler_name,fuel_data.name}
    end
    return {"recipe-name.boiler-with-fuel-item",boiler_name,fuel_data.name}
end

local function evaluate_target_boiler_recipe_localised_description(boiler_name,fuel_data)
    if fuel_data.type=="fluid"then 
        return {"recipe-description.boiler-with-fuel-fluid",boiler_name,fuel_data.name}
    end
    return {"recipe-description.boiler-with-fuel-item",boiler_name,fuel_data.name}
end

local function handle_one_recipe_data_by_temperature(recipe_data_by_temperature)
    local fuel_data_water_amount = recipe_data_by_temperature.fuel_data_water_amount
    local fuel_data = fuel_data_water_amount.fuel_data
    local boiler_data = recipe_data_by_temperature.boiler_data
    local boiler_name = boiler_data.name
    log("Имя сущности бойлера(для замены) " .. boiler_name)
    if string.find(boiler_name, "-with-", 1, true) then
        -- бойлер уже обработан
        return
    end
    local target_boiler_name = boiler_name .. "-" .. recipe_data_by_temperature.recipe_name
    log("Имя сущности бойлера(после замены) " .. target_boiler_name)
    local target_boiler_prototype = flib.copy_prototype(data.raw["boiler"][boiler_name], target_boiler_name)
    target_boiler_prototype.localised_name=evaluate_target_boiler_entity_localised_name(boiler_name,fuel_data)
    target_boiler_prototype.localised_description=evaluate_target_boiler_entity_localised_description(boiler_name,fuel_data)
    local energy_source = target_boiler_prototype.energy_source
    if boiler_data.is_burner_energy_source then
        local fuel_category_name = get_fuel_category_name_for_prototype(fuel_data)
        if not data.raw["fuel-category"][fuel_category_name] then
            data:extend({ { type = "fuel-category", name = fuel_category_name } })
        end
        data.raw[fuel_data.type][fuel_data.name].fuel_category = fuel_category_name
        energy_source.fuel_category = fuel_category_name
    end
    if boiler_data.is_fluid_energy_source then
        energy_source.fluid_box.filter = fuel_data.name
    end
    -- окей, выходом будет просто пар, но будут действительно разные бойлеры под разные виды топлива
    target_boiler_prototype.output_fluid_box.filter = "steam"
    
    local target_boiler_item = flib.copy_prototype(data.raw["item"][boiler_name], target_boiler_name)
    
    target_boiler_item.localised_name=evaluate_target_boiler_item_localised_name(boiler_name,fuel_data)
    target_boiler_item.localised_description=evaluate_target_boiler_item_localised_description(boiler_name,fuel_data)
    local mode = recipe_data_by_temperature.mode
    if tech_util.has_technology_recipe_effects(boiler_data.technology_name_occured_boiler_prototype, boiler_name, mode) then
        tech_util.remove_recipe_effect_from_technology(boiler_data.technology_name_occured_boiler_prototype, boiler_name,
            mode)
    end
    local target_boiler_recipe = flib.copy_prototype(data.raw["recipe"][boiler_name], target_boiler_name)
    target_boiler_recipe.localised_name=evaluate_target_boiler_recipe_localised_name(boiler_name,fuel_data)
    target_boiler_recipe.localised_description=evaluate_target_boiler_recipe_localised_description(boiler_name,fuel_data)
    set_recipe_result(target_boiler_recipe, target_boiler_name)
    data:extend({ target_boiler_prototype, target_boiler_item, target_boiler_recipe })
    tech_util.add_recipe_effect_to_technology(boiler_data.technology_name_occured_boiler_prototype, target_boiler_name,
        mode)
    if not tech_util.has_technology_recipe_effects(boiler_data.technology_name_occured_boiler_prototype, "steam", mode) then
        tech_util.add_recipe_effect_to_technology(boiler_data.technology_name_occured_boiler_prototype, "steam", mode)
    end
    return target_boiler_name
end
function update_boiler_prototype_by_steam_recipe_prototype(steam_recipes_by_temperature_sorted)
    local steam_recipe_mode_data = {
        ingredients = { { type = "fluid", name = "water", amount = 1 } },

        results = {
            {
                type = "fluid",
                name = "steam",
                amount = 1,
            },
        },
        enabled = false,
        hide_from_player_crafting = true,
    }
    data:extend({
        {
            type = "recipe",
            name = "steam",
            icon = "__base__/graphics/icons/fluid/steam.png",
            icon_size = 64,
            category = "crafting-with-fluid",
            normal = _table.deep_copy(steam_recipe_mode_data),
            expensive = _table.deep_copy(steam_recipe_mode_data),
        },
    })
    _table.each(steam_recipes_by_temperature_sorted, function(recipe_datas_by_temperature_level)
        local for_temperature_boiler_recipe_names_result_sorted_by_technology={}
        local mode=nil;
        _table.each(recipe_datas_by_temperature_level, 
            function (recipe_data_by_temperature_level)
            if not mode then  mode=recipe_data_by_temperature_level.mode end
            if not for_temperature_boiler_recipe_names_result_sorted_by_technology[recipe_data_by_temperature_level.boiler_data.technology_name_occured_boiler_prototype] then
                for_temperature_boiler_recipe_names_result_sorted_by_technology[recipe_data_by_temperature_level.boiler_data.technology_name_occured_boiler_prototype]={}
            end
            table.insert(for_temperature_boiler_recipe_names_result_sorted_by_technology[recipe_data_by_temperature_level.boiler_data.technology_name_occured_boiler_prototype],
                handle_one_recipe_data_by_temperature(recipe_data_by_temperature_level))
         end)
        _table.each(for_temperature_boiler_recipe_names_result_sorted_by_technology, function(for_temperature_boiler_recipe_name_result_table,for_temperature_boiler_recipe_name_result_technology_name)
            _table.each(for_temperature_boiler_recipe_name_result_table,function(for_temperature_boiler_recipe_name_result)
                _table.each(for_temperature_boiler_recipe_name_result_table,function(another_for_temperature_boiler_recipe_name_result)
                    if for_temperature_boiler_recipe_name_result==another_for_temperature_boiler_recipe_name_result then return end
                    local recipe_name="from-"..for_temperature_boiler_recipe_name_result..'-to-'..another_for_temperature_boiler_recipe_name_result
                    if not data.raw["recipe"][recipe_name] then 
                        data:extend({{
                            type="recipe",
                            name=recipe_name,
                            icons=_table.deep_copy(data.raw["recipe"][for_temperature_boiler_recipe_name_result].icons),
                            normal={
                                ingredients={{type="item",name=for_temperature_boiler_recipe_name_result,amount=1}},
                                result=another_for_temperature_boiler_recipe_name_result,
                                enabled=false,
                                energy_required=30
                            },
                            expensive={
                                ingredients={{type="item",name=for_temperature_boiler_recipe_name_result,amount=1}},
                                result=another_for_temperature_boiler_recipe_name_result,
                                enabled=false,
                                energy_required=60
                            },  
                        }})
                    end
                    if not tech_util.has_technology_recipe_effects(for_temperature_boiler_recipe_name_result_technology_name,recipe_name,mode)then 
                        tech_util.add_recipe_effect_to_technology(for_temperature_boiler_recipe_name_result_technology_name,recipe_name,mode)
                    end
                end)
            end)
        end) 
    end)
end
