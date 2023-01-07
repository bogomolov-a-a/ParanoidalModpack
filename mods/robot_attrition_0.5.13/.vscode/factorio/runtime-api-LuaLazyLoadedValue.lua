---@meta
---@diagnostic disable

--$Factorio 1.1.67
--$Overlay 5
--$Section LuaLazyLoadedValue
-- This file is automatically generated. Edits will be overwritten.

---A lazily loaded value. For performance reasons, we sometimes return a custom lazily-loaded value type instead of the native Lua value. This custom type lazily constructs the necessary value when [LuaLazyLoadedValue::get](https://lua-api.factorio.com/latest/LuaLazyLoadedValue.html#LuaLazyLoadedValue.get) is called, therefore preventing its unnecessary construction in some cases.
---
---An instance of LuaLazyLoadedValue is only valid during the event it was created from and cannot be saved.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLazyLoadedValue.html)
---@class LuaLazyLoadedValue<T>:{get:fun():T},LuaObject
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLazyLoadedValue.html#LuaLazyLoadedValue.object_name)
---@field object_name string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLazyLoadedValue.html#LuaLazyLoadedValue.valid)
---@field valid boolean 
local LuaLazyLoadedValue={
---Gets the value of this lazy loaded value.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLazyLoadedValue.html#LuaLazyLoadedValue.get)
---@return Any
get=function()end,
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLazyLoadedValue.html#LuaLazyLoadedValue.help)
---@return string
help=function()end,
}


