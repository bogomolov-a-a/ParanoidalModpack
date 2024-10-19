local GameModeUtil = require("prototypes.game-mode-util")
local mod_version_checked_value=settings.startup["check-technology-tree-mods-protocol-use-validating-mod-versions-table"].value        
local actual_mods=Utils.dump_mods_list_to_stringz_without_base_mod(mods)
log('Список актуальных модов игры '..actual_mods)
log('Список проверенных модов игры '..mod_version_checked_value)
if mod_version_checked_value~=actual_mods  then
    log("Выполняется проверка модов! ожидайте")
    --GameModeUtil.handle_game_mode_datas()
    log("Проверка модов завершена успешно! Приятной игры!")
else
    log('Проверка модов не требуется! Приятной игры!')
end
GameModeUtil = nil