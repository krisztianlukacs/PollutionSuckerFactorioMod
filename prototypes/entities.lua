local function make_placeholder_layer(width, height, color)
  return {
    filename = "__base__/graphics/entity/iron-chest/iron-chest.png", -- Placeholder
    priority = "extra-high",
    width = 32,
    height = 32,
    scale = math.min(width, height), -- Scale to fit roughly? No, let's just use a simple sprite.
    -- Better placeholder: just a colored square if possible, or standard entity scaled up.
    -- Using a simple tinted sprite for now.
    tint = color,
    shift = {0, 0}
  }
end

data:extend({
  -- Pollution Sucker (1x1)
  {
    type = "assembling-machine",
    name = "pollution-sucker",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "pollution-sucker"},
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_usage = "10kW",
    crafting_categories = {"pollution-sucking"},
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0 } -- Doesn't pollute, just sucks
    },
    fluid_boxes = {
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        volume = 1000,
        base_level = 1,
        pipe_connections = {{ flow_direction="output", position = {0, 0.4}, direction = defines.direction.south }} -- South
      }
    },
    graphics_set = {
      animation = {
        filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
        priority = "high",
        width = 108,
        height = 114,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(0, 2),
        scale = 0.5, -- 1x1 roughly
        tint = {r=1, g=0.5, b=0.5} -- Reddish
      }
    },
    fixed_recipe = "suck-pollution"
  },

  -- Air Cleaner Factory (12x4)
  {
    type = "assembling-machine",
    name = "air-cleaner-factory",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-cleaner-factory"},
    max_health = 1000,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.9, -1.9}, {5.9, 1.9}}, -- 12x4
    selection_box = {{-6, -2}, {6, 2}},
    energy_usage = "500kW",
    crafting_categories = {"air-cleaning"},
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 0 }
    },
    fluid_boxes = {
      -- Input: Polluted Air
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        volume = 1000,
        base_level = -1,
        pipe_connections = {{ flow_direction="input", position = {-5.5, -1.5}, direction = defines.direction.west }} -- West, Top row
      },
      -- Input: Water
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        volume = 1000,
        base_level = -1,
        pipe_connections = {{ flow_direction="input", position = {-5.5, 1.5}, direction = defines.direction.west }} -- West, Bottom row
      },
      -- Output: Clean Air
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        volume = 1000,
        base_level = 1,
        pipe_connections = {{ flow_direction="output", position = {5.5, -1.5}, direction = defines.direction.east }} -- East, Top row
      },
      -- Output: Water
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        volume = 1000,
        base_level = 1,
        pipe_connections = {{ flow_direction="output", position = {5.5, 1.5}, direction = defines.direction.east }} -- East, Bottom row
      }
    },
    graphics_set = {
      animation = {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
        priority = "high",
        width = 337,
        height = 255,
        frame_count = 1,
        line_length = 1,
        shift = {0, 0},
        scale = 2, -- Scale up to look big
        tint = {r=1, g=0.2, b=0.2} -- Red
      }
    }
  },

  -- Fresh Air Outlet (4x4)
  {
    type = "furnace", -- Using furnace to consume fluid and void it easily, or assembling machine with fixed recipe.
    -- Furnace is good because it shows flame/working state easily, but assembling machine is more flexible.
    -- Let's use assembling-machine with fixed recipe.
    name = "fresh-air-outlet",
    icon = "__base__/graphics/icons/electric-furnace.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "fresh-air-outlet"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}}, -- 4x4
    selection_box = {{-2, -2}, {2, 2}},
    energy_usage = "10kW",
    crafting_categories = {"air-releasing"},
    crafting_speed = 1,
    source_inventory_size = 0,
    result_inventory_size = 0,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -200 } -- Negative emissions to clean pollution!
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        volume = 1000,
        base_level = -1,
        pipe_connections = {{ flow_direction="input", position = {0.5, -1.5}, direction = defines.direction.north }} -- North, slightly offset
      }
    },
    graphics_set = {
      animation = {
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = {0.421875, 0},
        scale = 1.5, -- 4x4 roughly
        tint = {r=0.5, g=1, b=0.5} -- Greenish
      }
    },
    fixed_recipe = "release-clean-air"
  }
})
