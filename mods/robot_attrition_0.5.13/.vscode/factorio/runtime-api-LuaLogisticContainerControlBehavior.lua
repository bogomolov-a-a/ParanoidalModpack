---@meta
---@diagnostic disable

--$Factorio 1.1.67
--$Overlay 5
--$Section LuaLogisticContainerControlBehavior
-- This file is automatically generated. Edits will be overwritten.

---Control behavior for logistic chests.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLogisticContainerControlBehavior.html)
---@class LuaLogisticContainerControlBehavior:LuaControlBehavior
---[RW]  
---The circuit mode of operations for the logistic container.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLogisticContainerControlBehavior.html#LuaLogisticContainerControlBehavior.circuit_mode_of_operation)
---@field circuit_mode_of_operation defines.control_behavior.logistic_container.circuit_mode_of_operation 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLogisticContainerControlBehavior.html#LuaLogisticContainerControlBehavior.object_name)
---@field object_name string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLogisticContainerControlBehavior.html#LuaLogisticContainerControlBehavior.valid)
---@field valid boolean 
local LuaLogisticContainerControlBehavior={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaLogisticContainerControlBehavior.html#LuaLogisticContainerControlBehavior.help)
---@return string
help=function()end,
}


