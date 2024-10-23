require "parameters"
global.infinite_research_units={}
local function tech_cost(tech)
  local sum = 0
  if tech.research_unit_ingredients then
    for _, item in pairs(tech.research_unit_ingredients) do
      local name, amount
      if item.type then
        if item.type=="item" then
          name = item.name
          amount = item.amount
        end
      else
        name = item[1]
        amount = item[2]
      end
      if name then 
        --log(name..'----'..amount) 
        sum  = sum + amount * (science_packet_cost[name] or 1)
      end
    end
  end
  local unit_count = tech.research_unit_count
  if tech.research_unit_count_formula then
    if tech.name then
      unit_count = global.infinite_research_units[tech.name]
      global.infinite_research_units[tech.name] = nil       --erasing unusial record
    end   
    --local level = tech.level
    --if formula and level ~= nil then
    --  level = math.max(0, (tech.level or 1)-1)
    --  unit_count = game.evaluate_expression(formula, {L=level, l=level})
    --end
    --log("calculate unit count by formula "..formula.." with level "..(level or "NAN").." and result value "..unit_count)
  end    
  --log("new tech "..tech.name.." researched for "..(unit_count or 0).." in force "..tech.force.name.." "..(tech.prototype.hidden and 'true' or 'false'))
  --if 
  sum = sum * (unit_count or 0)
  return sum*0.00001*linear_factor+constant_factor*0.01
end

local ignore_qol=settings.startup["research-evolution-factor-ignore-qol"].value
local ignore_infinite=settings.startup["research-evolution-factor-ignore-inf"].value

local function ignored_tech(tech)
  return tech.force.name ~= "player" or tech.prototype.hidden or (ignore_qol and string.sub(tech.name,1,4)=="qol-") or (ignore_infinite and tech.research_unit_count_formula)
end

script.on_event(defines.events.on_research_finished, function(event, by_script)
  local tech = event.research
  if ignored_tech(tech) then return end
  local inc = tech_cost(tech)
  --log("adding "..inc.." to evolution factor "..(by_script or false))
  if by_script==true then return end
  for _,force in pairs(game.forces) do
    if force.ai_controllable or force == game.forces.enemy then
      force.evolution_factor = 1-(1-force.evolution_factor)*math.exp(-inc)
    end
  end
end)

script.on_event(defines.events.on_research_started, function(event)
  local tech = event.research
  if ignored_tech(tech) then return end
  if tech.research_unit_count_formula  then  --is infinite tech?
    if not tech.name then return end
    if global.infinite_research_units == nil then global.infinite_research_units = {} end
    global.infinite_research_units[tech.name] = tech.research_unit_count -- save researched technology units count for later use
    --slog("saving "..tech.name.." units count "..tech.research_unit_count)
  end
end)
