data:extend({
  -- Pollution Sucker Recipe
  {
    type = "recipe",
    name = "suck-pollution",
    category = "pollution-sucking",
    enabled = false,
    energy_required = 1,
    ingredients = {},
    results = {
      {type = "fluid", name = "polluted-air", amount = 100}
    },
    hidden = true -- Auto-processed by the machine
  },
  -- Air Cleaning Recipe
  {
    type = "recipe",
    name = "clean-air",
    category = "air-cleaning",
    enabled = false,
    energy_required = 0.1,
    ingredients = {
      {type = "fluid", name = "polluted-air", amount = 10},
      {type = "fluid", name = "water", amount = 500}
    },
    results = {
      {type = "fluid", name = "clean-air", amount = 10},
      {type = "fluid", name = "water", amount = 450},
      {type = "item", name = "coal", amount = 1, probability = 0.2},
      {type = "item", name = "iron-ore", amount = 1, probability = 0.2},
      {type = "item", name = "copper-ore", amount = 1, probability = 0.2},
      {type = "item", name = "uranium-ore", amount = 1, probability = 0.2},
      {type = "item", name = "stone", amount = 1, probability = 0.2}
    },
    -- Note: 0.1s crafting time * 10 amount = 100/sec throughput.
    -- Water: 500 * 10 = 5000/sec input. 450 * 10 = 4500/sec output.
    -- Random items: 1 * 10 = 10/sec total expected (sum of probs = 1.0).
    main_product = "clean-air"
  },
  -- Release Clean Air Recipe
  {
    type = "recipe",
    name = "release-clean-air",
    category = "air-releasing",
    enabled = false,
    energy_required = 1,
    ingredients = {
      {type = "fluid", name = "clean-air", amount = 100}
    },
    results = {},
    icon = "__base__/graphics/icons/fluid/steam.png", -- Placeholder icon
    icon_size = 64,
    hidden = true
  },
  -- Entity Crafting Recipes
  {
    type = "recipe",
    name = "pollution-sucker",
    enabled = false,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "steel-plate", amount = 10},
      {type = "item", name = "electronic-circuit", amount = 5},
      {type = "item", name = "pipe", amount = 5}
    },
    results = {{type = "item", name = "pollution-sucker", amount = 1}}
  },
  {
    type = "recipe",
    name = "air-cleaner-factory",
    enabled = false,
    energy_required = 60,
    ingredients = {
      {type = "item", name = "nuclear-reactor", amount = 1},
      {type = "item", name = "steel-plate", amount = 1200},
      {type = "item", name = "copper-plate", amount = 1200},
      {type = "item", name = "copper-cable", amount = 1200},
      {type = "item", name = "iron-plate", amount = 1200}
    },
    results = {{type = "item", name = "air-cleaner-factory", amount = 1}}
  },
  {
    type = "recipe",
    name = "fresh-air-outlet",
    enabled = false,
    energy_required = 10,
    ingredients = {
      {type = "item", name = "steel-plate", amount = 50},
      {type = "item", name = "electric-engine-unit", amount = 10},
      {type = "item", name = "concrete", amount = 20}
    },
    results = {{type = "item", name = "fresh-air-outlet", amount = 1}}
  }
})
