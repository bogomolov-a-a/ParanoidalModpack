require('__automated-utility-protocol__.util.main')
local loaded=false
script.on_event(defines.events.on_tick,function(e)
    if not Utils.is_freeplay_scenario() then return end
    if loaded then return end    
    result=Utils.dump_mods_list_to_stringz_without_base_mod(game.active_mods)
    game.write_file('actual-mod-list.data',result)
    loaded=true
end)