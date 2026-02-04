data:extend({
  -- Pollution Sucker (1x1)
  {
    type = "assembling-machine",
    name = "pollution-sucker",
    icon = "__PollutionSucker__/graphics/icons/pollution-sucker-icon.png",
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
        layers = {
          {
            filename = "__PollutionSucker__/graphics/entity/pollution-sucker.png",
            priority = "high",
            width = 64,
            height = 64,
            frame_count = 1,
            line_length = 1,
            shift = {0, 0},
            scale = 1
          },
          {
            filename = "__PollutionSucker__/graphics/entity/pollution-sucker-shadow.png",
            priority = "high",
            width = 96,
            height = 64,
            frame_count = 1,
            line_length = 1,
            shift = {0.5, 0},
            scale = 1,
            draw_as_shadow = true
          }
        }
      }
    },
    fixed_recipe = "suck-pollution"
  },

  -- Air Cleaner Factory (12x4)
  {
    type = "assembling-machine",
    name = "air-cleaner-factory",
    icon = "__PollutionSucker__/graphics/icons/air-cleaner-factory-icon.png",
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
        layers = {
          {
            filename = "__PollutionSucker__/graphics/entity/air-cleaner-factory.png",
            priority = "high",
            width = 768,
            height = 384,
            frame_count = 1,
            line_length = 1,
            shift = {0, 0},
            scale = 0.5
          },
          {
            filename = "__PollutionSucker__/graphics/entity/air-cleaner-factory-shadow.png",
            priority = "high",
            width = 1024,
            height = 512,
            frame_count = 1,
            line_length = 1,
            shift = {2, 1},
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    }
  },

  -- Fresh Air Outlet (4x4)
  {
    type = "furnace", -- Using furnace to consume fluid and void it easily, or assembling machine with fixed recipe.
    -- Furnace is good because it shows flame/working state easily, but assembling machine is more flexible.
    -- Let's use assembling-machine with fixed recipe.
    name = "fresh-air-outlet",
    icon = "__PollutionSucker__/graphics/icons/fresh-air-outlet-icon.png",
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
        layers = {
          {
            filename = "__PollutionSucker__/graphics/entity/fresh-air-outlet.png",
            priority = "high",
            width = 256,
            height = 256,
            frame_count = 1,
            line_length = 1,
            shift = {0, 0},
            scale = 0.5
          },
          {
            filename = "__PollutionSucker__/graphics/entity/fresh-air-outlet-shadow.png",
            priority = "high",
            width = 384,
            height = 320,
            frame_count = 1,
            line_length = 1,
            shift = {1, 0.5},
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    fixed_recipe = "release-clean-air"
  }
})
