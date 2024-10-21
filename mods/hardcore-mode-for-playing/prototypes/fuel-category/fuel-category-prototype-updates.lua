--require("__automated-utility-protocol__.util.fuel-energy-util")
_table.each(data.raw, function(prototype_table)
	_table.each(prototype_table, function(prototype)
		if not prototype.fuel_value then
			return
		end
		local prototype_type = prototype.type
		local prototype_name = prototype.name
		if prototype_type == "item" then
			local fuel_category_name = get_fuel_category_name_for_prototype(prototype)
			data:extend({ 
				{
					type = "fuel-category",
					name = fuel_category_name,
					localised_name={'item-name.'..prototype_name},
					localised_description={'item-description.'..prototype_name} 
				}
			})
			change_fuel_category_fuel_item(prototype_name, fuel_category_name)
		end
	end)
end)
