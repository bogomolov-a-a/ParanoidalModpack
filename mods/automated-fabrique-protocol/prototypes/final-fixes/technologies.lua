require("__automated-utility-protocol__.util.main")
require("__automated-utility-protocol__.util.technology-tree-util")

local tech_util                                                                     = require(
    "__automated-utility-protocol__.util.technology-util")
local ATTP_TECHNOLOGY_NAMES                                                         = { ATTP_1_TECHNOLOGY_NAME,
    ATTP_2_TECHNOLOGY_NAME,
    ATTP_3_TECHNOLOGY_NAME,
    ATTP_4_TECHNOLOGY_NAME }
local attp_technology_descendants                                                   = {}
attp_technology_descendants[ATTP_1_TECHNOLOGY_NAME]                                 = {}
attp_technology_descendants[ATTP_1_TECHNOLOGY_NAME]["normal"]                       = {}
attp_technology_descendants[ATTP_1_TECHNOLOGY_NAME]["expensive"]                    = {}
attp_technology_descendants[ATTP_2_TECHNOLOGY_NAME]                                 = {}
attp_technology_descendants[ATTP_2_TECHNOLOGY_NAME]["normal"]                       = { ATTP_1_TECHNOLOGY_NAME }
attp_technology_descendants[ATTP_2_TECHNOLOGY_NAME]["expensive"]                    = { ATTP_1_TECHNOLOGY_NAME }
attp_technology_descendants[ATTP_3_TECHNOLOGY_NAME]                                 = {}
attp_technology_descendants[ATTP_3_TECHNOLOGY_NAME]["normal"]                       = { ATTP_1_TECHNOLOGY_NAME,
    ATTP_2_TECHNOLOGY_NAME }
attp_technology_descendants[ATTP_3_TECHNOLOGY_NAME]["expensive"]                    = { ATTP_1_TECHNOLOGY_NAME,
    ATTP_2_TECHNOLOGY_NAME }
attp_technology_descendants[ATTP_4_TECHNOLOGY_NAME]                                 = {}
attp_technology_descendants[ATTP_4_TECHNOLOGY_NAME]["normal"]                       = { ATTP_1_TECHNOLOGY_NAME,
    ATTP_2_TECHNOLOGY_NAME,
    ATTP_3_TECHNOLOGY_NAME }
attp_technology_descendants[ATTP_4_TECHNOLOGY_NAME]["expensive"]                    = { ATTP_1_TECHNOLOGY_NAME,
    ATTP_2_TECHNOLOGY_NAME,
    ATTP_3_TECHNOLOGY_NAME }
local attp_technology_descendants_to_add_descendants                                = {}
attp_technology_descendants_to_add_descendants[ATTP_1_TECHNOLOGY_NAME]              = {}
attp_technology_descendants_to_add_descendants[ATTP_1_TECHNOLOGY_NAME]["normal"]    = {}
attp_technology_descendants_to_add_descendants[ATTP_1_TECHNOLOGY_NAME]["expensive"] = {}
attp_technology_descendants_to_add_descendants[ATTP_2_TECHNOLOGY_NAME]              = {}
attp_technology_descendants_to_add_descendants[ATTP_2_TECHNOLOGY_NAME]["normal"]    = {}
attp_technology_descendants_to_add_descendants[ATTP_2_TECHNOLOGY_NAME]["expensive"] = {}
attp_technology_descendants_to_add_descendants[ATTP_3_TECHNOLOGY_NAME]              = {}
attp_technology_descendants_to_add_descendants[ATTP_3_TECHNOLOGY_NAME]["normal"]    = {}
attp_technology_descendants_to_add_descendants[ATTP_3_TECHNOLOGY_NAME]["expensive"] = {}
attp_technology_descendants_to_add_descendants[ATTP_4_TECHNOLOGY_NAME]              = {}
attp_technology_descendants_to_add_descendants[ATTP_4_TECHNOLOGY_NAME]["normal"]    = {}
attp_technology_descendants_to_add_descendants[ATTP_4_TECHNOLOGY_NAME]["expensive"] = {}
local function handle_prerequisite_technology_for_current_attp_technology(prerequisite_name, mode, excludes)
    local all_technology_names_with_prerequisite_name = tech_util
        .find_all_active_technology_names_with_specified_prerequisite_name(prerequisite_name, mode, excludes)
    local result = {}
    --log('prerequisite_name ' .. prerequisite_name)
    --[[log('all_technology_names_with_prerequisite_name ' ..
        Utils.dump_to_console(all_technology_names_with_prerequisite_name))]]
    _table.insert_all_if_not_exists(result,
        all_technology_names_with_prerequisite_name)
    return result
end
local function get_real_descendants_for_attp_technology(attp_technology_name,
                                                        flat_tree, to_add_attp_technology_name_descendants, mode)
    local result = {}
    local removing_attp_technology_name_descendants = {}
    _table.each(attp_technology_descendants[attp_technology_name][mode],
        function(attp_technology_descendants_for_technology_and_mode)
            --[[            log('attp_technology_descendants_for_technology_and_mode ' ..
                attp_technology_descendants_for_technology_and_mode)]]
            _table.insert_all_if_not_exists(removing_attp_technology_name_descendants,
                attp_technology_descendants_to_add_descendants[attp_technology_descendants_for_technology_and_mode]
                [mode])
        end)
    --[[log("removing_attp_technology_name_descendants " ..
        Utils.dump_to_console(removing_attp_technology_name_descendants))]]
    _table.insert_all_if_not_exists(result, to_add_attp_technology_name_descendants)
    _table.each(flat_tree, function(tree_element_name)
        _table.remove_item(result, tree_element_name, nil, true)
    end)
    _table.each(removing_attp_technology_name_descendants, function(removing_attp_technology_name_descendant)
        _table.remove_item(result, removing_attp_technology_name_descendant, nil, true)
    end)
    _table.insert_all_if_not_exists(attp_technology_descendants_to_add_descendants[attp_technology_name][mode], result)
    return result
end

local function handle_one_attp_technology_for_mode(attp_technology_name, mode)
    local flat_tree = TechnologyTreeUtil.find_prerequisites_for_technology_for_all_levels(attp_technology_name, mode)
    log('attp_technology_name ' .. attp_technology_name .. ', mode ' .. mode)
    local excludes = {}
    log('flat_tree ' .. Utils.dump_to_console(flat_tree))
    _table.insert_all_if_not_exists(excludes, flat_tree)
    table.insert(excludes, attp_technology_name)
    local to_add_attp_technology_name_descendants = {}
    _table.each(flat_tree, function(prerequisite_name)
        local real_excludes = {}
        _table.insert_all_if_not_exists(real_excludes, excludes)
        _table.insert_all_if_not_exists(to_add_attp_technology_name_descendants,
            handle_prerequisite_technology_for_current_attp_technology(prerequisite_name, mode, excludes))
    end)
    local real_to_add_attp_technology_name_descendants = get_real_descendants_for_attp_technology(attp_technology_name,
        flat_tree, to_add_attp_technology_name_descendants, mode)
    log('real_to_add_attp_technology_name_descendants ' ..
        Utils.dump_to_console(real_to_add_attp_technology_name_descendants))
    _table.each(real_to_add_attp_technology_name_descendants,
        function(to_add_attp_technology_name_descendant_name)
            if not  TechnologyTreeUtil.have_technology_in_tree(to_add_attp_technology_name_descendant_name, attp_technology_name, mode) then
                tech_util.add_prerequisites_to_technology(to_add_attp_technology_name_descendant_name,
                    { attp_technology_name }, mode)
                log('to technology ' .. to_add_attp_technology_name_descendant_name .. ' technology ' ..
                    attp_technology_name .. ' as prerequisite added')
            end
        end)
end
local function handle_technology_mode(mode)
    _table.each(ATTP_TECHNOLOGY_NAMES, function(attp_technology_name)
        handle_one_attp_technology_for_mode(attp_technology_name, mode)
    end)
end
_table.each(GAME_MODES, handle_technology_mode)
