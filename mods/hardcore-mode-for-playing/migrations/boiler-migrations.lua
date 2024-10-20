require("__automated-utility-protocol__.util.main")
_table.each(game.surfaces,function(surface)
    local boilers=surface.find_entities_filtered{type="boiler"}
    _table.each(boilers,function(boiler)
        if not string.find(boiler.name,'-with-',1,true) then boiler.destroy() end
    end)
end)