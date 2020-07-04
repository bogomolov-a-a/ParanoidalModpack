local data = {}
data.energy = {}
data.energy["burner-reactor"] = {
    energy_type_input="burner",
    energy_usage_min=0,
    energy_usage_max=5400000,
    energy_usage_priority="none",
    energy_consumption=5400000,
    energy_type_output="heat",
    energy_production=0,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=15,
    speed=0,
    recipe={type="recipe"}
}
data.energy["burner-reactor-3"] = {
    energy_type_input="burner",
    energy_usage_min=0,
    energy_usage_max=9000000,
    energy_usage_priority="none",
    energy_consumption=9000000,
    energy_type_output="heat",
    energy_production=0,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=15,
    speed=0,
    recipe={type="recipe"}
}
data.energy["fluid-reactor"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=5400000,
    energy_usage_priority="none",
    energy_consumption=5400000,
    energy_type_output="heat",
    energy_production=0,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns=true,
    fluid_fuel = {name="deuterium", capacity=1000},
    fluid_consumption=1.52,
    fluid_production={name="none", amount=0},
    pollution=10,
    speed=0,
    recipe={type="recipe"}
}
data.energy["fluid-reactor-3"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=9000000,
    energy_usage_priority="none",
    energy_consumption=9000000,
    energy_type_output="heat",
    energy_production=0,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns=true,
    fluid_fuel = {name="deuterium", capacity=1000},
    fluid_consumption=2.53,
    fluid_production={name="none", amount=0},
    pollution=10,
    speed=0,
    recipe={type="recipe"}
}
data.energy["nuclear-reactor"] = {
    energy_type_input="burner",
    energy_usage_min=0,
    energy_usage_max=54000000,
    energy_usage_priority="none",
    energy_consumption=54000000,
    energy_type_output="heat",
    energy_production=0,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["nuclear-reactor-3"] = {
    energy_type_input="burner",
    energy_usage_min=0,
    energy_usage_max=90000000,
    energy_usage_priority="none",
    energy_consumption=90000000,
    energy_type_output="heat",
    energy_production=0,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["boiler"] = {
    energy_type_input="burner",
    energy_usage_min=0,
    energy_usage_max=1800000,
    energy_usage_priority="none",
    energy_consumption=1800000,
    energy_type_output="none",
    energy_production=0,
    effectivity=1,
    target_temperature=165,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="steam", amount=60},
    pollution=30,
    speed=0,
    recipe={type="recipe"}
}
data.energy["boiler-5"] = {
    energy_type_input="burner",
    energy_usage_min=0,
    energy_usage_max=9000000,
    energy_usage_priority="none",
    energy_consumption=9000000,
    energy_type_output="none",
    energy_production=0,
    effectivity=1,
    target_temperature=765,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="steam", amount=60},
    pollution=9.37,
    speed=0,
    recipe={type="recipe"}
}
data.energy["oil-boiler"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=5400000,
    energy_usage_priority="none",
    energy_consumption=5400000,
    energy_type_output="none",
    energy_production=0,
    effectivity=1,
    target_temperature=315,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns=true,
    fluid_fuel = {name="deuterium", capacity=1000},
    fluid_consumption=1.52,
    fluid_production={name="steam", amount=90},
    pollution=22.5,
    speed=0,
    recipe={type="recipe"}
}
data.energy["oil-boiler-4"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=13500000,
    energy_usage_priority="none",
    energy_consumption=13500000,
    energy_type_output="none",
    energy_production=0,
    effectivity=1,
    target_temperature=765,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns=true,
    fluid_fuel = {name="deuterium", capacity=1000},
    fluid_consumption=3.8,
    fluid_production={name="steam", amount=90},
    pollution=7.03,
    speed=0,
    recipe={type="recipe"}
}
data.energy["heat-exchanger"] = {
    energy_type_input="heat",
    energy_usage_min=0,
    energy_usage_max=10800000,
    energy_usage_priority="none",
    energy_consumption=10800000,
    energy_type_output="none",
    energy_production=0,
    effectivity=1,
    target_temperature=465,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="steam", amount=120},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["heat-exchanger-3"] = {
    energy_type_input="heat",
    energy_usage_min=0,
    energy_usage_max=18000000,
    energy_usage_priority="none",
    energy_consumption=18000000,
    energy_type_output="none",
    energy_production=0,
    effectivity=1,
    target_temperature=765,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="steam", amount=120},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["steam-engine"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=0,
    energy_usage_priority="secondary-output",
    energy_consumption=900000,
    energy_type_output="electric",
    energy_production=900000,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=165,
    fluid_usage=30,
    fluid_burns="none",
    fluid_fuel = {name="steam", capacity=200},
    fluid_consumption=30,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["steam-engine-5"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=0,
    energy_usage_priority="secondary-output",
    energy_consumption=4500000,
    energy_type_output="electric",
    energy_production=4500000,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=765,
    fluid_usage=30,
    fluid_burns="none",
    fluid_fuel = {name="steam", capacity=200},
    fluid_consumption=30,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["steam-turbine"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=0,
    energy_usage_priority="secondary-output",
    energy_consumption=5400000,
    energy_type_output="electric",
    energy_production=5400000,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=465,
    fluid_usage=60,
    fluid_burns="none",
    fluid_fuel = {name="steam", capacity=200},
    fluid_consumption=60,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["steam-turbine-3"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=0,
    energy_usage_priority="secondary-output",
    energy_consumption=9000000,
    energy_type_output="electric",
    energy_production=9000000,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=765,
    fluid_usage=60,
    fluid_burns="none",
    fluid_fuel = {name="steam", capacity=200},
    fluid_consumption=60,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["bob-burner-generator"] = {
    energy_type_input="burner",
    energy_usage_min=0,
    energy_usage_max=400000,
    energy_usage_priority="none",
    energy_consumption=400000,
    energy_type_output="none",
    energy_production=0,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=14.99,
    speed=0,
    recipe={type="recipe"}
}
data.energy["fluid-generator"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=0,
    energy_usage_priority="secondary-output",
    energy_consumption=1800000,
    energy_type_output="electric",
    energy_production=1800000,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=165,
    fluid_usage=60,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=60,
    fluid_production={name="none", amount=0},
    pollution=20,
    speed=0,
    recipe={type="recipe"}
}
data.energy["fluid-generator-3"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=0,
    energy_usage_priority="secondary-output",
    energy_consumption=3600000,
    energy_type_output="electric",
    energy_production=3600000,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=165,
    fluid_usage=120,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=120,
    fluid_production={name="none", amount=0},
    pollution=10,
    speed=0,
    recipe={type="recipe"}
}
data.energy["solar-panel-small"] = {
    energy_type_input="none",
    energy_usage_min=0,
    energy_usage_max=0,
    energy_usage_priority="solar",
    energy_consumption=0,
    energy_type_output="electric",
    energy_production=26670,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["solar-panel-large-3"] = {
    energy_type_input="none",
    energy_usage_min=0,
    energy_usage_max=0,
    energy_usage_priority="solar",
    energy_consumption=0,
    energy_type_output="electric",
    energy_production=240000,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["fast-accumulator"] = {
    energy_type_input="electric",
    energy_usage_min=0,
    energy_usage_max=240000,
    energy_usage_priority="managed-accumulator",
    energy_consumption=240000,
    energy_type_output="electric",
    energy_production=960000,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["slow-accumulator-2"] = {
    energy_type_input="electric",
    energy_usage_min=0,
    energy_usage_max=360000,
    energy_usage_priority="managed-accumulator",
    energy_consumption=360000,
    energy_type_output="electric",
    energy_production=45000,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=0,
    speed=0,
    recipe={type="recipe"}
}
data.energy["burner-assembling-machine"] = {
    energy_type_input="burner",
    energy_usage_min=0,
    energy_usage_max=60000,
    energy_usage_priority="none",
    energy_consumption=60000,
    energy_type_output="none",
    energy_production=0,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns="none",
    fluid_fuel = {name="none", capacity=0},
    fluid_consumption=0,
    fluid_production={name="none", amount=0},
    pollution=4,
    speed=0.25,
    recipe={type="recipe"}
}
data.energy["steam-assembling-machine"] = {
    energy_type_input="fluid",
    energy_usage_min=0,
    energy_usage_max=300000,
    energy_usage_priority="none",
    energy_consumption=300000,
    energy_type_output="none",
    energy_production=0,
    effectivity=1,
    target_temperature=0,
    maximum_temperature=0,
    fluid_usage=0,
    fluid_burns=false,
    fluid_fuel = {name="steam", capacity=200},
    fluid_consumption=2,
    fluid_production={name="none", amount=0},
    pollution=10,
    speed=2,
    recipe={type="recipe"}
}

return data