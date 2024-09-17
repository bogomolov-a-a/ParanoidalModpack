require("train-stop-block-holder")
require("entity-built-events")
require("entity-destroyed-events")
script.on_event({ defines.events.script_raised_built, defines.events.on_built_entity }, on_built_entity_station_parts)
script.on_event({ defines.events.script_raised_destroy, defines.events.on_entity_destroyed },
    on_destroy_entity_station_parts)
