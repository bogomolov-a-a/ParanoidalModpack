---@meta
---@diagnostic disable

--$Factorio 1.1.67
--$Overlay 5
--$Section LuaModSettingPrototype
-- This file is automatically generated. Edits will be overwritten.

---Prototype of a mod setting.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html)
---@class LuaModSettingPrototype:LuaObject
---[R]  
---Whether this string setting allows blank values. `nil` if not a string setting.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.allow_blank)
---@field allow_blank? boolean 
---[R]  
---The allowed values for this setting. `nil` if this setting doesn't use the a fixed set of values.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.allowed_values)
---@field allowed_values? string[]|int[]|double[] 
---[R]  
---Whether this string setting auto-trims values. `nil` if not a string setting
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.auto_trim)
---@field auto_trim? boolean 
---[R]  
---The default value of this setting.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.default_value)
---@field default_value boolean|double|int|string 
---[R]  
---Whether this setting is hidden from the GUI.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.hidden)
---@field hidden boolean 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.localised_description)
---@field localised_description LocalisedString 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.localised_name)
---@field localised_name LocalisedString 
---[R]  
---The maximum value for this setting. `nil` if this setting type doesn't support a maximum.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.maximum_value)
---@field maximum_value? double|int 
---[R]  
---The minimum value for this setting. `nil` if this setting type doesn't support a minimum.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.minimum_value)
---@field minimum_value? double|int 
---[R]  
---The mod that owns this setting.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.mod)
---@field mod string 
---[R]  
---Name of this prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.name)
---@field name string 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.object_name)
---@field object_name string 
---[R]  
---The string used to alphabetically sort these prototypes. It is a simple string that has no additional semantic meaning.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.order)
---@field order string 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.setting_type)
---@field setting_type string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.valid)
---@field valid boolean 
local LuaModSettingPrototype={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaModSettingPrototype.html#LuaModSettingPrototype.help)
---@return string
help=function()end,
}


