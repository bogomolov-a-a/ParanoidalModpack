local technologyUnitAddBean = require("__automated-utility-protocol__.util.technology-unit-add-bean")
local function updateNotFoundEffectesAndSciencePacksNormal()
	local mode = "normal"
	technologyUnitAddBean.add_automation_science_pack_to_technology_units({
		--[[	"productivity-module",
		"speed-module",
		"speed-module-2",
		"speed-module-3",
		"speed-module-4",
		"speed-module-5",
		"speed-module-6",
		"effectivity-module",
		"effectivity-module-2",
		"effectivity-module-3",
		"effectivity-module-4",
		"effectivity-module-5",
		"effectivity-module-6",
		"raw-speed-module-7",
		"stack-inserter-research-15",
		"stack-inserter-research-5",
		"stack-inserter-research-1",
		"bob-bullets",
		"bob-ap-bullets",
		"bob-electric-bullets",
		"bob-he-bullets",
		"bob-flame-bullets",
		"bob-acid-bullets",
		"bob-poison-bullets",
		"bob-shotgun-ap-shells",
		"bob-shotgun-electric-shells",
		"bob-shotgun-explosive-shells",
		"bob-shotgun-flame-shells",
		"bob-shotgun-acid-shells",
		"bob-shotgun-poison-shells",
		"bob-shotgun-plasma-shells",
		"bob-rocket",
		"bob-plasma-rocket",
		"bob-acid-rocket",
		"bob-flame-rocket",
		"bob-poison-rocket",
		"bob-piercing-rocket",
		"bob-electric-rocket",
		"bob-explosive-rocket",
		"atomic-bomb",
		"bob-power-armor-4",
		"bob-power-armor-5",
		"extremely-advanced-rocket-payloads",
		"module-merging",]]
		"compact-full-fission-weapons"
	}, mode)
	technologyUnitAddBean.add_logistic_science_pack_to_technology_units({
		--[["alloy-processing",
		"productivity-module",
		"bio-farm-1",
		"bio-temperate-farming-1",
		"phosphorus-processing-1",
		"gardens",
		"bio-desert-farming-1",
		"bio-swamp-farming-1",
		"speed-module",
		"speed-module-2",
		"speed-module-3",
		"speed-module-4",
		"speed-module-5",
		"speed-module-6",
		"effectivity-module",
		"effectivity-module-2",
		"effectivity-module-3",
		"effectivity-module-4",
		"effectivity-module-5",
		"effectivity-module-6",
		"raw-speed-module-1",
		"raw-speed-module-2",
		"raw-speed-module-3",
		"raw-speed-module-4",
		"raw-speed-module-5",
		"raw-speed-module-6",
		"raw-speed-module-7",
		"stack-inserter-research-15",
		"stack-inserter-research-5",
		"stack-inserter-research-1",
		"bob-bullets",
		"bob-ap-bullets",
		"bob-electric-bullets",
		"bob-he-bullets",
		"bob-flame-bullets",
		"bob-acid-bullets",
		"bob-poison-bullets",
		"bob-shotgun-ap-shells",
		"bob-shotgun-electric-shells",
		"bob-shotgun-explosive-shells",
		"bob-shotgun-flame-shells",
		"bob-shotgun-acid-shells",
		"bob-shotgun-poison-shells",
		"bob-shotgun-plasma-shells",
		"bob-rocket",
		"bob-plasma-rocket",
		"bob-acid-rocket",
		"bob-flame-rocket",
		"bob-poison-rocket",
		"bob-piercing-rocket",
		"bob-electric-rocket",
		"bob-explosive-rocket",
		"CW-air-filtering-1",
		"atomic-bomb",
		"bob-power-armor-4",
		"bob-power-armor-5",
		"extremely-advanced-rocket-payloads",
		"module-merging",]]
		"compact-full-fission-weapons"
	}, mode)
	technologyUnitAddBean.add_chemical_science_pack_to_technology_units({
		--[["chlorine-processing-2",
		"bio-nutrient-paste",
		"bio-farm-1",
		"bio-fermentation",
		"bio-temperate-farming-1",
		"bio-farm-2",
		"bio-processing-paste",
		"bio-processing-alien-1",
		"angels-nitrogen-processing-2",
		"resin-1",
		"bio-plastic-1",
		"modules",
		"bob-drills-2",
		"bob-area-drills-2",
		"physical-projectile-damage-5",
		"rubbers",
		"angels-ironworks-2",
		"w93-modular-turrets-lcannon",
		"w93-modular-turrets",
		"bio-processing-paste",
		"speed-module",
		"speed-module-2",
		"speed-module-3",
		"speed-module-4",
		"speed-module-5",
		"speed-module-6",
		"effectivity-module",
		"effectivity-module-2",
		"effectivity-module-3",
		"effectivity-module-4",
		"effectivity-module-5",
		"effectivity-module-6",
		"raw-speed-module-1",
		"raw-speed-module-2",
		"raw-speed-module-3",
		"raw-speed-module-4",
		"raw-speed-module-5",
		"raw-speed-module-6",
		"raw-speed-module-7",
		"phosphorus-processing-1",
		"bob-shotgun-shells",
		"stack-inserter-research-15",
		"stack-inserter-research-5",
		"stack-inserter-research-1",
		"bob-bullets",
		"bob-ap-bullets",
		"bob-electric-bullets",
		"bob-he-bullets",
		"bob-flame-bullets",
		"bob-acid-bullets",
		"bob-poison-bullets",
		"bob-shotgun-ap-shells",
		"bob-shotgun-electric-shells",
		"bob-shotgun-explosive-shells",
		"bob-shotgun-flame-shells",
		"bob-shotgun-acid-shells",
		"bob-shotgun-poison-shells",
		"bob-shotgun-plasma-shells",
		"bob-rocket",
		"bob-plasma-rocket",
		"bob-acid-rocket",
		"bob-flame-rocket",
		"bob-poison-rocket",
		"bob-piercing-rocket",
		"bob-electric-rocket",
		"bob-explosive-rocket",
		"atomic-bomb",
		"bob-power-armor-4",
		"bob-power-armor-5",
		"automation-9",
		"angels-steel-smelting-2",
		"extremely-advanced-rocket-payloads",
		"angels-iron-smelting-2",
		"automation-8",
		"electronics-machine-5",]]
		"compact-full-fission-weapons"
	}, mode)
	technologyUnitAddBean.add_production_science_pack_to_technology_units({
		--[["utility-science-pack",
		"bio-processing-paste",
		"bio-processing-alien-1",
		"physical-projectile-damage-6",
		"weapon-shooting-speed-6",
		"bob-boiler-4",
		"raw-speed-module-1",
		"raw-speed-module-2",
		"raw-speed-module-3",
		"raw-speed-module-4",
		"raw-speed-module-5",
		"raw-speed-module-6",
		"raw-speed-module-7",
		"advanced-depleted-uranium-smelting-1",
		"uranium-ammo",
		"nuclear-power",
		--	"tungsten-processing",
		"angels-tungsten-carbide-smelting-1",
		"angels-ironworks-4",
		--"angels-nitinol-smelting-1",
		"angels-ironworks-3",
		"w93-modular-turrets-hcannon",
		"bet-fuel-3",
		"battery-3",
		"nitinol-processing",
		"tungsten-alloy-processing",
		"angels-copper-tungsten-smelting-1",
		"bio-refugium-biter-2",
		"bio-refugium-puffer-3",
		--"bio-refugium-puffer-4",
		"laser-shooting-speed-7",
		"laser-shooting-speed-5",
		"bob-shotgun-shells",
		"braking-force-7",
		"braking-force-6",
		"bet-fuel-4",
		"bet-fuel-recycling",
		"logistics-4",
		"research-efficiency-17",
		"stack-inserter-research-15",
		"stack-inserter-research-5",
		"stack-inserter-research-1",
		"ober-nuclear-processing",
		"steel-axe-6",
		"steel-axe-5",
		"bob-bullets",
		"bob-ap-bullets",
		"bob-electric-bullets",
		"bob-he-bullets",
		"bob-flame-bullets",
		"bob-acid-bullets",
		"bob-poison-bullets",
		"bob-shotgun-ap-shells",
		"bob-shotgun-electric-shells",
		"bob-shotgun-explosive-shells",
		"bob-shotgun-flame-shells",
		"bob-shotgun-acid-shells",
		"bob-shotgun-poison-shells",
		"bob-shotgun-plasma-shells",
		"bob-plasma-rocket",
		"bob-acid-rocket",
		"bob-flame-rocket",
		"bob-poison-rocket",
		"bob-piercing-rocket",
		"bob-electric-rocket",
		"bob-explosive-rocket",
		"armor-absorb-25",
		"armor-absorb-24",
		"armor-absorb-23",
		"armor-absorb-22",
		"armor-absorb-21",
		"armor-absorb-20",
		"afterburner",
		"aircraft-energy-shield",
		"CW-air-filtering-6",
		"CW-air-filtering-5",
		"CW-air-filtering-4",
		"CW-air-filter-cleaning-4",
		"OilBurning-5",
		"OilBurning-4",
		"bi-tech-biomass-reprocessing-2",
		"bi-tech-organic-plastic",
		"bi-tech-cellulose-2",
		"angels-alloys-smelting-3",
		"garden-mutation",
		"centrifuging-2",
		"water-treatment-5",
		"plastic-pc",
		"remelting-alloy-mixer-4",
		"remelting-alloy-mixer-3",
		"nuclear-fuel-3",
		"radiothermal-fuel-3",
		"sodium-processing-2",
		"radiothermal-fuel-2",
		"radiothermal-fuel-1",
		"nuclear-fuel-2",
		"nuclear-fuel-1",
		"angels-advanced-bio-processing",
		"bio-farm-advanced-upgrade",
		"bio-refugium-hatchery-2",
		"advanced-ore-refining-5",
		--"advanced-ore-refining-4",
		"thermobaric-weaponry",
		"angels-steel-smelting-3",
		"angels-iron-smelting-3",
		"advanced-osmium-smelting",
		"fuel-cells",
		"fusion-reactor-equipment",
		"atomic-bomb",
		"californium-weapons",
		"bob-power-armor-4",
		"bob-power-armor-5",
		"extremely-advanced-rocket-payloads",
		"advanced-magnesium-smelting",
		"angels-aluminium-smelting-2",
		"advanced-depleted-uranium-smelting-2",]]
		"compact-full-fission-weapons"
	}, mode)

	technologyUnitAddBean.add_military_science_pack_to_technology_units({
		--[["physical-projectile-damage-5",
		"bet-fuel-4",
		"bet-fuel-recycling",
		"bob-bullets",
		"bob-ap-bullets",
		"bob-electric-bullets",
		"bob-he-bullets",
		"bob-flame-bullets",
		"bob-acid-bullets",
		"bob-poison-bullets",
		"bob-shotgun-ap-shells",
		"bob-shotgun-electric-shells",
		"bob-shotgun-explosive-shells",
		"bob-shotgun-flame-shells",
		"bob-shotgun-acid-shells",
		"bob-shotgun-poison-shells",
		"bob-shotgun-plasma-shells",
		"bob-rocket",
		"bob-plasma-rocket",
		"bob-acid-rocket",
		"bob-flame-rocket",
		"bob-poison-rocket",
		"bob-piercing-rocket",
		"bob-electric-rocket",
		"bob-explosive-rocket",
		"atomic-bomb",
		"personal-roboport-equipment",
		"angels-advanced-chemistry-4",]]
		"compact-full-fission-weapons"
	}, mode)
	technologyUnitAddBean.add_utility_science_pack_to_technology_units({
		--[["bob-shotgun-shells",
		"logistics-4",
		"stack-inserter-research-15",
		"stack-inserter-research-5",
		"stack-inserter-research-1",
		"ober-nuclear-processing",
		"bob-bullets",
		"bob-ap-bullets",
		"bob-electric-bullets",
		"bob-he-bullets",
		"bob-flame-bullets",
		"bob-acid-bullets",
		"bob-poison-bullets",
		"bob-shotgun-ap-shells",
		"bob-shotgun-electric-shells",
		"bob-shotgun-explosive-shells",
		"bob-shotgun-flame-shells",
		"bob-shotgun-acid-shells",
		"bob-shotgun-poison-shells",
		"bob-shotgun-plasma-shells",
		"bob-rocket",
		"bob-plasma-rocket",
		"bob-acid-rocket",
		"bob-flame-rocket",
		"bob-poison-rocket",
		"bob-piercing-rocket",
		"bob-electric-rocket",
		"bob-explosive-rocket",
		"OilBurning-5",
		"OilBurning-4",
		"garden-mutation",
		"water-treatment-5",
		"plastic-pc",
		"bio-farm-advanced-upgrade",
		"bio-refugium-hatchery-2",
		"thermobaric-weaponry",
		"angels-iron-smelting-3",
		"atomic-bomb",
		"bob-power-armor-3",
		"bob-power-armor-4",
		"bob-power-armor-5",
		"extremely-advanced-rocket-payloads",
		"angels-aluminium-smelting-2",]]
		"compact-full-fission-weapons"
	}, mode)
	--technologyUnitAddBean.add_space_science_pack_to_technology_units({
	--[["stack-inserter-research-15",
		"stack-inserter-research-5",
		"stack-inserter-research-1",
		"advanced-osmium-smelting",
		"bob-power-armor-4",
		"bob-power-armor-5",
		"extremely-advanced-rocket-payloads",
		"advanced-magnesium-smelting",
		"automation-8",
		"angels-aluminium-smelting-2",
		"angels-titanium-smelting-3",
		"angels-iron-smelting-3",
		"advanced-depleted-uranium-smelting-2",]]
	--[["compact-full-fission-weapons"
	}, mode)]]
	--[[technologyUnitAddBean.addProductivityProcessorToTechnologyUnits({
		"production-science-pack",
		"utility-science-pack",
		"angels-tungsten-smelting-1",
		"ore-refining",
		"bio-processing-paste",
		"bio-processing-alien-1",
		"physical-projectile-damage-6",
		"rocket-control-unit",
		"weapon-shooting-speed-6",
		"bob-boiler-4",
		"bio-processing-paste",
		"modules-3",
		"advanced-electronics-3",
		"angels-advanced-chemistry-4",
		"effectivity-module-6",
		"ore-refining",
		"angels-gold-smelting-2",
		"angels-metallurgy-4",
		"ore-processing-3",
		"angels-titanium-smelting-2",
		"powder-metallurgy-4",
		"military-4",
		"advanced-depleted-uranium-smelting-1",
		"uranium-ammo",
		"nuclear-power",
		"tungsten-processing",
		"angels-tungsten-carbide-smelting-1",
		"angels-ironworks-4",
		"angels-nitinol-smelting-1",
		"angels-ironworks-3",
		"angels-zinc-smelting-3",
		"w93-modular-turrets-hcannon",
		"bet-fuel-3",
		"battery-3",
		"nitinol-processing",
		"tungsten-alloy-processing",
		"angels-copper-tungsten-smelting-1",
		"advanced-probe",
		"space-science-pack",
		"rocket-fuel",
		"angels-advanced-chemistry-4",
		"angels-stone-smelting-4",
		"angels-advanced-chemistry-5",
		"angels-nitrogen-processing-4",
		"rocket-control-unit",
		"bio-processing-crystal-full",
		"bio-refugium-biter-2",
		"bio-refugium-puffer-3",
		"bio-refugium-puffer-4",
		"bio-refugium-biter-3",
		"laser-shooting-speed-7",
		"laser-shooting-speed-5",
		"bob-shotgun-shells",
		"braking-force-7",
		"braking-force-6",
		"bet-fuel-4",
		"bet-fuel-recycling",
		"logistics-4",
		"research-efficiency-17",
		"research-speed-5",
		"stack-inserter-research-15",
		"stack-inserter-research-5",
		"stack-inserter-research-1",
		"ober-nuclear-processing",
		"steel-axe-6",
		"steel-axe-5",
		"bob-bullets",
		"bob-ap-bullets",
		"bob-electric-bullets",
		"bob-he-bullets",
		"bob-flame-bullets",
		"bob-acid-bullets",
		"bob-poison-bullets",
		"bob-shotgun-ap-shells",
		"bob-shotgun-electric-shells",
		"bob-shotgun-explosive-shells",
		"bob-shotgun-flame-shells",
		"bob-shotgun-acid-shells",
		"bob-shotgun-poison-shells",
		"bob-shotgun-plasma-shells",
		"bob-rocket",
		"bob-plasma-rocket",
		"bob-acid-rocket",
		"bob-flame-rocket",
		"bob-poison-rocket",
		"bob-piercing-rocket",
		"bob-electric-rocket",
		"bob-explosive-rocket",
		"armor-absorb-25",
		"armor-absorb-24",
		"armor-absorb-23",
		"armor-absorb-22",
		"armor-absorb-21",
		"armor-absorb-20",
		"afterburner",
		"aircraft-energy-shield",
		"CW-air-filtering-6",
		"CW-air-filtering-5",
		"CW-air-filtering-4",
		"CW-air-filter-cleaning-4",
		"OilBurning-5",
		"OilBurning-4",
		"bi-tech-biomass-reprocessing-2",
		"bi-tech-organic-plastic",
		"bi-tech-cellulose-2",
		"angels-alloys-smelting-3",
		"garden-mutation",
		"centrifuging-2",
		"water-treatment-5",
		"plastic-pc",
		"remelting-alloy-mixer-4",
		"remelting-alloy-mixer-3",
		"nuclear-fuel-3",
		"radiothermal-fuel-3",
		"sodium-processing-2",
		"radiothermal-fuel-2",
		"radiothermal-fuel-1",
		"nuclear-fuel-2",
		"nuclear-fuel-1",
		"angels-advanced-bio-processing",
		"bio-farm-advanced-upgrade",
		"bio-refugium-hatchery-2",
		"advanced-ore-refining-5",
		"advanced-ore-refining-4",
		"thermobaric-weaponry",
		"angels-steel-smelting-3",
		"angels-iron-smelting-3",
		"angels-metallurgy-5",
		"orbital-autonomous-fabricators",
		"advanced-osmium-smelting",
		"astrometrics",
		"fuel-cells",
		"habitation",
		"life-support-systems",
		"space-casings",
		"space-thrusters",
		"spaceship-command",
		"ftl-propulsion",
		"atomic-bomb",
		"californium-weapons",
		"bob-power-armor-3",
		"bob-power-armor-4",
		"bob-power-armor-5",
		"automation-9",
		"angels-advanced-gas-processing-2",
		"angels-tungsten-smelting-3",
		"extremely-advanced-rocket-payloads",
		"angels-aluminium-smelting-2",
		"advanced-depleted-uranium-smelting-2",
	}, mode)
	technologyUnitAddBean.addEffectivityProcessorToTechnologyUnits({
		"production-science-pack",
		"utility-science-pack",
		"angels-tungsten-smelting-1",
		"ore-refining",
		"bio-processing-paste",
		"bio-processing-alien-1",
		"physical-projectile-damage-6",
		"rocket-control-unit",
		"weapon-shooting-speed-6",
		"bob-boiler-4",
		"bio-processing-paste",
		"modules-3",
		"advanced-electronics-3",
		"angels-advanced-chemistry-4",
		"effectivity-module-6",
		"ore-refining",
		"angels-gold-smelting-2",
		"angels-metallurgy-4",
		"ore-processing-3",
		"angels-titanium-smelting-2",
		"powder-metallurgy-4",
		"military-4",
		"advanced-depleted-uranium-smelting-1",
		"uranium-ammo",
		"nuclear-power",
		"tungsten-processing",
		"angels-tungsten-carbide-smelting-1",
		"angels-ironworks-4",
		"angels-nitinol-smelting-1",
		"angels-ironworks-3",
		"angels-zinc-smelting-3",
		"w93-modular-turrets-hcannon",
		"bet-fuel-3",
		"battery-3",
		"nitinol-processing",
		"tungsten-alloy-processing",
		"angels-copper-tungsten-smelting-1",
		"advanced-probe",
		"space-science-pack",
		"rocket-fuel",
		"angels-advanced-chemistry-4",
		"angels-stone-smelting-4",
		"angels-advanced-chemistry-5",
		"angels-nitrogen-processing-4",
		"rocket-control-unit",
		"bio-processing-crystal-full",
		"bio-refugium-biter-2",
		"bio-refugium-puffer-3",
		"bio-refugium-puffer-4",
		"bio-refugium-biter-3",
		"laser-shooting-speed-7",
		"laser-shooting-speed-5",
		"bob-shotgun-shells",
		"braking-force-7",
		"braking-force-6",
		"bet-fuel-4",
		"bet-fuel-recycling",
		"logistics-4",
		"research-efficiency-17",
		"research-speed-5",
		"stack-inserter-research-15",
		"stack-inserter-research-5",
		"stack-inserter-research-1",
		"ober-nuclear-processing",
		"steel-axe-6",
		"steel-axe-5",
		"bob-bullets",
		"bob-ap-bullets",
		"bob-electric-bullets",
		"bob-he-bullets",
		"bob-flame-bullets",
		"bob-acid-bullets",
		"bob-poison-bullets",
		"bob-shotgun-ap-shells",
		"bob-shotgun-electric-shells",
		"bob-shotgun-explosive-shells",
		"bob-shotgun-flame-shells",
		"bob-shotgun-acid-shells",
		"bob-shotgun-poison-shells",
		"bob-shotgun-plasma-shells",
		"bob-rocket",
		"bob-plasma-rocket",
		"bob-acid-rocket",
		"bob-flame-rocket",
		"bob-poison-rocket",
		"bob-piercing-rocket",
		"bob-electric-rocket",
		"bob-explosive-rocket",
		"armor-absorb-25",
		"armor-absorb-24",
		"armor-absorb-23",
		"armor-absorb-22",
		"armor-absorb-21",
		"armor-absorb-20",
		"afterburner",
		"aircraft-energy-shield",
		"CW-air-filtering-6",
		"CW-air-filtering-5",
		"CW-air-filtering-4",
		"CW-air-filter-cleaning-4",
		"OilBurning-5",
		"OilBurning-4",
		"bi-tech-biomass-reprocessing-2",
		"bi-tech-organic-plastic",
		"bi-tech-cellulose-2",
		"angels-alloys-smelting-3",
		"garden-mutation",
		"centrifuging-2",
		"water-treatment-5",
		"plastic-pc",
		"remelting-alloy-mixer-4",
		"remelting-alloy-mixer-3",
		"nuclear-fuel-3",
		"radiothermal-fuel-3",
		"sodium-processing-2",
		"radiothermal-fuel-2",
		"radiothermal-fuel-1",
		"nuclear-fuel-2",
		"nuclear-fuel-1",
		"angels-advanced-bio-processing",
		"bio-farm-advanced-upgrade",
		"bio-refugium-hatchery-2",
		"advanced-ore-refining-5",
		"advanced-ore-refining-4",
		"thermobaric-weaponry",
		"angels-steel-smelting-3",
		"angels-iron-smelting-3",
		"angels-metallurgy-5",
		"orbital-autonomous-fabricators",
		"advanced-osmium-smelting",
		"astrometrics",
		"fuel-cells",
		"habitation",
		"life-support-systems",
		"space-casings",
		"space-thrusters",
		"spaceship-command",
		"ftl-propulsion",
		"atomic-bomb",
		"californium-weapons",
		"bob-power-armor-3",
		"bob-power-armor-4",
		"bob-power-armor-5",
		"automation-9",
		"angels-advanced-gas-processing-2",
		"angels-tungsten-smelting-3",
		"extremely-advanced-rocket-payloads",
		"angels-aluminium-smelting-2",
		"advanced-depleted-uranium-smelting-2",
	}, mode)
	technologyUnitAddBean.addSpeedProcessorToTechnologyUnits({
		"production-science-pack",
		"utility-science-pack",
		"angels-tungsten-smelting-1",
		"ore-refining",
		"bio-processing-paste",
		"bio-processing-alien-1",
		"physical-projectile-damage-6",
		"rocket-control-unit",
		"weapon-shooting-speed-6",
		"bob-boiler-4",
		"bio-processing-paste",
		"modules-3",
		"advanced-electronics-3",
		"angels-advanced-chemistry-4",
		"effectivity-module-6",
		"ore-refining",
		"angels-gold-smelting-2",
		"angels-metallurgy-4",
		"ore-processing-3",
		"angels-titanium-smelting-2",
		"powder-metallurgy-4",
		"military-4",
		"advanced-depleted-uranium-smelting-1",
		"uranium-ammo",
		"nuclear-power",
		"tungsten-processing",
		"angels-tungsten-carbide-smelting-1",
		"angels-ironworks-4",
		"angels-nitinol-smelting-1",
		"angels-ironworks-3",
		"angels-zinc-smelting-3",
		"w93-modular-turrets-hcannon",
		"bet-fuel-3",
		"battery-3",
		"nitinol-processing",
		"tungsten-alloy-processing",
		"angels-copper-tungsten-smelting-1",
		"advanced-probe",
		"space-science-pack",
		"rocket-fuel",
		"angels-advanced-chemistry-4",
		"angels-stone-smelting-4",
		"angels-advanced-chemistry-5",
		"angels-nitrogen-processing-4",
		"rocket-control-unit",
		"bio-processing-crystal-full",
		"bio-refugium-biter-2",
		"bio-refugium-puffer-3",
		"bio-refugium-puffer-4",
		"bio-refugium-biter-3",
		"laser-shooting-speed-7",
		"laser-shooting-speed-5",
		"bob-shotgun-shells",
		"braking-force-7",
		"braking-force-6",
		"bet-fuel-4",
		"bet-fuel-recycling",
		"logistics-4",
		"research-efficiency-17",
		"research-speed-5",
		"stack-inserter-research-15",
		"stack-inserter-research-5",
		"stack-inserter-research-1",
		"ober-nuclear-processing",
		"steel-axe-6",
		"steel-axe-5",
		"bob-bullets",
		"bob-ap-bullets",
		"bob-electric-bullets",
		"bob-he-bullets",
		"bob-flame-bullets",
		"bob-acid-bullets",
		"bob-poison-bullets",
		"bob-shotgun-ap-shells",
		"bob-shotgun-electric-shells",
		"bob-shotgun-explosive-shells",
		"bob-shotgun-flame-shells",
		"bob-shotgun-acid-shells",
		"bob-shotgun-poison-shells",
		"bob-shotgun-plasma-shells",
		"bob-rocket",
		"bob-plasma-rocket",
		"bob-acid-rocket",
		"bob-flame-rocket",
		"bob-poison-rocket",
		"bob-piercing-rocket",
		"bob-electric-rocket",
		"bob-explosive-rocket",
		"armor-absorb-25",
		"armor-absorb-24",
		"armor-absorb-23",
		"armor-absorb-22",
		"armor-absorb-21",
		"armor-absorb-20",
		"armor-absorb-24",
		"armor-absorb-23",
		"afterburner",
		"aircraft-energy-shield",
		"CW-air-filtering-6",
		"CW-air-filtering-5",
		"CW-air-filtering-4",
		"CW-air-filter-cleaning-4",
		"OilBurning-5",
		"OilBurning-4",
		"bi-tech-biomass-reprocessing-2",
		"bi-tech-organic-plastic",
		"bi-tech-cellulose-2",
		"angels-alloys-smelting-3",
		"garden-mutation",
		"centrifuging-2",
		"water-treatment-5",
		"plastic-pc",
		"remelting-alloy-mixer-4",
		"remelting-alloy-mixer-3",
		"nuclear-fuel-3",
		"radiothermal-fuel-3",
		"sodium-processing-2",
		"radiothermal-fuel-2",
		"radiothermal-fuel-1",
		"nuclear-fuel-2",
		"nuclear-fuel-1",
		"angels-advanced-bio-processing",
		"bio-farm-advanced-upgrade",
		"bio-refugium-hatchery-2",
		"advanced-ore-refining-5",
		"advanced-ore-refining-4",
		"thermobaric-weaponry",
		"angels-steel-smelting-3",
		"angels-iron-smelting-3",
		"angels-metallurgy-5",
		"orbital-autonomous-fabricators",
		"advanced-osmium-smelting",
		"astrometrics",
		"fuel-cells",
		"habitation",
		"life-support-systems",
		"space-casings",
		"space-thrusters",
		"spaceship-command",
		"ftl-propulsion",
		"atomic-bomb",
		"californium-weapons",
		"bob-power-armor-3",
		"bob-power-armor-4",
		"bob-power-armor-5",
		"automation-9",
		"angels-advanced-gas-processing-2",
		"angels-tungsten-smelting-3",
		"extremely-advanced-rocket-payloads",
		"angels-aluminium-smelting-2",
		"advanced-depleted-uranium-smelting-2",
	}, mode)]]
	--[[technologyUnitAddBean.addTokenBioToTechnologyUnits({
		"bio-nutrient-paste",
		"bio-farm-2",
		"angels-nitrogen-processing-2",
		"angels-advanced-chemistry-2",
		"chlorine-processing-2",
		"resin-1",
		"resins",
		"bioplastic-pla",
		"bio-farm-1",
		"rubbers",
		"gardens",
		"gardens-2",
		"bio-farm-alien",
		"modules-3",
		"advanced-electronics-3",
		"angels-advanced-chemistry-4",
		"effectivity-module-6",
		"angels-advanced-chemistry-5",
		"angels-nitrogen-processing-4",
		"rocket-control-unit",
		--"bio-processing-crystal-full",
		--"bio-refugium-biter-2",
		--"bio-refugium-biter-3",
		--"bio-refugium-puffer-4",
		"bet-fuel-4",
		"bet-fuel-recycling",
		"centrifuging-2",
		"water-treatment-5",
		"plastic-pc",
		"angels-advanced-bio-processing",
		"advanced-ore-refining-5",
		"advanced-ore-refining-4",
		"thermobaric-weaponry",
		"angels-metallurgy-5",
		"orbital-autonomous-fabricators",
		"angels-advanced-gas-processing-2",
	}, mode)
	technologyUnitAddBean.addAdvancedLogisticSciencePackToTechnologyUnits(
		{ "advanced-research", "advanced-machining", "extremely-advanced-material-processing", "electronics-machine-3" },
		mode
	)
	technologyUnitAddBean.addModuleCaseToTechnologyUnits({ "life-support-systems", "spaceship-command" }, mode)]]
end
updateNotFoundEffectesAndSciencePacksNormal()
