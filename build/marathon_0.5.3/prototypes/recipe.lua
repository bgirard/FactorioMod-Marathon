-- Iron:
--d 2(1) iron ore -> 5(1) plates (slower, more energy)
--d 5(2) plates -> 1 gear (slower)
--d 10(5) iron -> 1 steel (much slower)
--d 1 copper ore -> 5(1) plates (slower, more energy)
--d 10(1) plates -> 2 wires
--d 10(1) plates, 10(2) wires -> 1 green circuits (much slower)
--d 5(2) green circuits, 5(2) plastics, 10(4) -> red circuits (a lot more expensive)
--d 10(1) iron, 10(1) copper -> battery (a lot more)

-- science
--d 20(1) copper, 5(1) wheels -> red science
--d 5(1) belts, 5(1) inserts -> green science
--d 5(1) smart, 5(1) steel, 5(1) advanced, 5(1) batteries -> blue science
--d 10(4) belts, 25(10) gears, 25(10) circuits -> labs (slower to build)

--d 100(10) plate, 25(5) gears, 25(10) circuits -> 1 drills
--d 25(8), 10 bricks -> stteel furnace (slower)

-- Power production stage delay:
--d 100(5) pipes, 200(5) iron, 50 gears -> 1 steam engine (very costly)
--d 25(1) pipe, 2(1) furnaces -> 1 boiler
--d 30(5) copper, rest same -> 1 solar panel
--d 10(2) iron, 10(5) battery -> accumulator
--d half energy from wood and coal

-- Automation cost increase:
--d 25(9) iron, 25(5) gears, 25(3) eletronics -> level 1
--d 100(9) iron, 50(5) gears, 50(3) eletronics -> level 2

-- Robotics (base components are alreayd a lot more)
--d 5(1) red engine, rest the same -> robot frame

-- Test play 1:
--   Burner drills are too cheap, a bit too fast
--d  Red science needs to require more copper
--d  First lab takes too long to craft without factory
--d  Copper is too slow to craft


data:extend(
{
  {
    type = "recipe",
    name = "copper-plate",
    category = "smelting",
    energy_required = 6.33,
    ingredients = {{ "copper-ore", 1}},
    result = "copper-plate",
    result_count = 5
  },
  {
    type = "recipe",
    name = "iron-plate",
    category = "smelting",
    energy_required = 7,
    ingredients = {{"iron-ore", 2}},
    result = "iron-plate",
    result_count = 5
  },  
  {
    type = "recipe",
    name = "iron-gear-wheel",
    energy_required = 1.5,
    ingredients = {{"iron-plate", 5}},
    result = "iron-gear-wheel"
  },  
  {
    type = "item",
    name = "raw-wood",
    icon = "__base__/graphics/icons/raw-wood.png",
    flags = {"goes-to-main-inventory"},
    fuel_value = "2MJ",
    subgroup = "raw-material",
    order = "a[raw-wood]",
    stack_size = 50
  },  
  {
    type = "item",
    name = "coal",
    icon = "__base__/graphics/icons/coal.png",
    dark_background_icon = "__base__/graphics/icons/coal-dark-background.png",
    flags = {"goes-to-main-inventory"},
    fuel_value = "4MJ",
    subgroup = "raw-material",
    order = "b[coal]",
    stack_size = 50
  },  
  {
    type = "recipe",
    name = "burner-mining-drill",
    energy_required = 2,
    ingredients =
    {   
      {"iron-gear-wheel", 5}, 
      {"stone-furnace", 1}, 
      {"iron-plate", 10}
    },  
    result = "burner-mining-drill"
  }, 
}
)

-- recipe
data:extend(
{
  {
    type = "recipe",
    name = "steel-chest",
    enabled = "false",
    ingredients = {{"steel-plate", 8}},
    result = "steel-chest"
  },  
  {
    type = "recipe",
    name = "steel-plate",
    category = "smelting",
    enabled = "false",
    energy_required = 27.5,
    ingredients = {{"iron-plate", 10}},
    result = "steel-plate"
  },
  {
    type = "recipe",
    name = "copper-cable",
    ingredients = {{"copper-plate", 10}},
    energy_required = 2,
    result = "copper-cable",
    result_count = 2 
  }, 
  {
    type = "recipe",
    name = "electronic-circuit",
    energy_required = 8,
    ingredients =
    {
      {"iron-plate", 10},
      {"copper-cable", 10}
    },
    result = "electronic-circuit"
  },
  {
    type = "recipe",
    name = "advanced-circuit",
    enabled = "false",
    energy_required = 16,
    ingredients =
    {   
      {"electronic-circuit", 5}, 
      {"plastic-bar", 5}, 
      {"copper-cable", 10}
    },  
    result = "advanced-circuit"
  },  
  {
    type = "recipe",
    name = "battery",
    category = "chemistry",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="sulfuric-acid", amount=3},
      {"iron-plate", 10},
      {"copper-plate", 10}
    },
    result= "battery"
  },
  {
    type = "recipe",
    name = "science-pack-1",
    energy_required = 10,
    ingredients =
    {   
      {"copper-plate", 30}, 
      {"iron-gear-wheel", 5}
    },  
    result = "science-pack-1"
  },  
  {
    type = "recipe",
    name = "science-pack-2",
    energy_required = 15,
    ingredients =
    {   
      {"basic-inserter", 5}, 
      {"basic-transport-belt", 5}
    },  
    result = "science-pack-2"
  },  
  {
    type = "recipe",
    name = "science-pack-3",
    enabled = "false",
    energy_required = 30, 
    ingredients =
    {   
      {"battery", 5}, 
      {"advanced-circuit", 5}, 
      {"smart-inserter", 5}, 
      {"steel-plate", 5}, 
    },  
    result = "science-pack-3"
  }, 
  {
    type = "recipe",
    name = "lab",
    energy_required = 20,
    ingredients =
    {   
      {"electronic-circuit", 25},
      {"iron-gear-wheel", 25},
      {"basic-transport-belt", 20}
    },
    result = "lab"
  },
  {
    type = "recipe",
    name = "basic-mining-drill",
    energy_required = 10,
    ingredients =
    {   
      {"electronic-circuit", 25}, 
      {"iron-gear-wheel", 25}, 
      {"iron-plate", 100} 
    },  
    result = "basic-mining-drill"
  },  
  {
    type = "recipe",
    name = "steel-furnace",
    ingredients = {{"steel-plate", 25}, {"stone-brick", 10}},
    result = "steel-furnace",
    energy_required = 10,
    enabled = "false"
  }, 
  {
    type = "recipe",
    name = "steam-engine",
    ingredients =
    {   
      {"iron-gear-wheel", 100}, 
      {"pipe", 100}, 
      {"iron-plate", 100}
    },  
    energy_required = 60,
    result = "steam-engine"
  }, 
  {
    type = "recipe",
    name = "boiler",
    ingredients = {{"stone-furnace", 2}, {"pipe", 25}},
    result = "boiler"
  },  
  {
    type = "recipe",
    name = "solar-panel",
    energy_required = 20, 
    enabled = "false",
    ingredients =
    {   
      {"steel-plate", 5}, 
      {"electronic-circuit", 15},
      {"copper-plate", 30}
    },  
    result = "solar-panel"
  },  
  {
    type = "recipe",
    name = "basic-accumulator",
    energy_required = 20,
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 10},
      {"battery", 10}
    },
    result = "basic-accumulator"
  },
  {
    type = "recipe",
    name = "assembling-machine-1",
    enabled = "false",
    ingredients =
    {   
      {"electronic-circuit", 25}, 
      {"iron-gear-wheel", 25}, 
      {"iron-plate", 25}
    },  
    result = "assembling-machine-1"
  }, 
  {
    type = "recipe",
    name = "assembling-machine-2",
    enabled = "false",
    ingredients =
    {   
      {"iron-plate", 100}, 
      {"electronic-circuit", 25}, 
      {"iron-gear-wheel", 25}, 
      {"assembling-machine-1", 1}
    },  
    result = "assembling-machine-2"
  },  
  {
    type = "recipe",
    name = "flying-robot-frame",
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 5},
      {"battery", 2},
      {"steel-plate", 1},
      {"electronic-circuit", 3}
    },
    result = "flying-robot-frame",
    enabled = "false"
  },
}
)
