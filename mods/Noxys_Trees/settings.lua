data:extend({
	-- Startup
	{
		type = "double-setting",
		name = "Noxys_Trees-tree_dying_factor",
		setting_type = "startup",
		minimum_value = 0,
		default_value = 0.98,
		maximum_value = 1,
		order = "b",
	},
	{
		type = "double-setting",
		name = "Noxys_Trees-tree_fire_spread_speed_factor",
		setting_type = "startup",
		minimum_value = 0.0001,
		default_value = 1.0,
		maximum_value = 10.0,
		order = "b",
	},
	{
		type = "double-setting",
		name = "Noxys_Trees-emission_multiplier",
		setting_type = "startup",
		default_value = 1,
		order = "c",
	},
	-- Global
	{
		type = "bool-setting",
		name = "Noxys_Trees-enabled",
		setting_type = "runtime-global",
		default_value = true,
		order = "a-a"
	},
	{
		type = "bool-setting",
		name = "Noxys_Trees-debug",
		setting_type = "runtime-global",
		default_value = false,
		order = "a-b-a"
	},
	{
		type = "int-setting",
		name = "Noxys_Trees-debug-interval",
		setting_type = "runtime-global",
		minimum_value = 1,
		default_value = 300,
		maximum_value = 3600,
		order = "a-b-b",
	},
	{
		type = "bool-setting",
		name = "Noxys_Trees-degrade-tiles",
		setting_type = "runtime-global",
		default_value = true,
		order = "a-c-a"
	},
	{
		type = "bool-setting",
		name = "Noxys_Trees-do-not-degrade-reinforced-tiles",
		setting_type = "runtime-global",
		default_value = false,
		order = "a-c-a"
	},
	{
		type = "bool-setting",
		name = "Noxys_Trees-overpopulation-kills-trees",
		setting_type = "runtime-global",
		default_value = true,
		order = "a-c-b"
	},
	{
		type = "bool-setting",
		name = "Noxys_Trees-kill-trees-near-unwanted",
		setting_type = "runtime-global",
		default_value = true,
		order = "a-c-d"
	},
	{
		type = "int-setting",
		name = "Noxys_Trees-ticks-between-operations",
		setting_type = "runtime-global",
		minimum_value = 1,
		default_value = 60,
		maximum_value = 3600,
		order = "a-d",
	},
	{
		type = "int-setting",
		name = "Noxys_Trees-chunks-per-operation",
		setting_type = "runtime-global",
		minimum_value = 1,
		default_value = 1,
		maximum_value = 3600,
		order = "a-e",
	},
	{
		type = "bool-setting",
		name = "Noxys_Trees-chunks-per-operation-enable-scaling",
		setting_type = "runtime-global",
		default_value = true,
		order = "a-f-a"
	},
	{
		type = "int-setting",
		name = "Noxys_Trees-chunks-per-operation-scaling-bias",
		setting_type = "runtime-global",
		minimum_value = 1,
		default_value = 2000,
		maximum_value = 1000000,
		order = "a-f-b",
	},
	{
		type = "double-setting",
		name = "Noxys_Trees-minimum-distance-between-tree",
		setting_type = "runtime-global",
		minimum_value = 0.1,
		default_value = 0.8,
		maximum_value = 16,
		order = "a-h-a",
	},
	{
		type = "double-setting",
		name = "Noxys_Trees-minimum-distance-to-enemies",
		setting_type = "runtime-global",
		minimum_value = 0.5,
		default_value = 4.5,
		maximum_value = 16,
		order = "a-h-b",
	},
	{
		type = "double-setting",
		name = "Noxys_Trees-minimum-distance-to-uranium",
		setting_type = "runtime-global",
		minimum_value = 0.5,
		default_value = 8,
		maximum_value = 16,
		order = "a-h-c",
	},
	{
		type = "double-setting",
		name = "Noxys_Trees-minimum-distance-to-player-entities",
		setting_type = "runtime-global",
		minimum_value = 0,
		default_value = 2,
		maximum_value = 16,
		order = "a-h-d",
	},
	{
		type = "double-setting",
		name = "Noxys_Trees-minimum-distance-to-degradeable-tiles",
		setting_type = "runtime-global",
		minimum_value = 0,
		default_value = 0,
		maximum_value = 16,
		order = "a-h-e",
	},
	{
		type = "double-setting",
		name = "Noxys_Trees-deaths-by-lack-of-fertility-minimum",
		setting_type = "runtime-global",
		minimum_value = 0,
		default_value = 0.5,
		maximum_value = 1,
		order = "a-h-f",
	},
	{
		type = "int-setting",
		name = "Noxys_Trees-deaths-by-pollution-bias",
		setting_type = "runtime-global",
		minimum_value = 0,
		default_value = 7000,
		maximum_value = 100000,
		order = "a-h-g",
	},
	{
		type = "double-setting",
		name = "Noxys_Trees-trees-to-grow-per-chunk-percentage",
		setting_type = "runtime-global",
		minimum_value = 0.0001,
		default_value = 0.005,
		maximum_value = 0.1,
		order = "a-i",
	},
	{
		type = "int-setting",
		name = "Noxys_Trees-maximum-trees-per-chunk",
		setting_type = "runtime-global",
		minimum_value = 1,
		default_value = 512,
		maximum_value = 4096,
		order = "a-j",
	},
	{
		type = "int-setting",
		name = "Noxys_Trees-expansion-distance",
		setting_type = "runtime-global",
		minimum_value = 1,
		default_value = 12,
		maximum_value = 64,
		order = "a-k",
	},
	{
		type = "string-setting",
		name = "Noxys_Trees-surfaces",
		setting_type = "runtime-global",
		default_value = "1",
		order = "a-l",
	},
	{
		type = "bool-setting",
		name = "Noxys_Trees-trees-grow-on-landfill",
		setting_type = "runtime-global",
		default_value = false,
		order = "a-m",
	},
	-- Per user
})
