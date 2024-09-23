local function print_tiles_removed_warning()
  if #game.tile_prototypes == 255 then -- I guess you could end up with exactly 255 without us removing anything but that's pretty unlikely

    if not global.warned_last_time then
      game.print({"alien-biomes.tiles-removed-warning"})
      if settings.startup["alien-biomes-remove-obsolete-tiles"].value ~= "Enabled" then
        game.print({"alien-biomes.tiles-removed-warning-try-remove-obsolete"})
      end
    end
    global.warned_last_time = true

  else
    global.warned_last_time = false
  end
end

script.on_configuration_changed(print_tiles_removed_warning)
script.on_event(defines.events.on_player_created, print_tiles_removed_warning)
