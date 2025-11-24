data:extend({
  {
    type = "fluid",
    name = "polluted-air",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "0.1kJ",
    base_color = {r=0.2, g=0.2, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    icon = "__base__/graphics/icons/fluid/steam.png", -- Placeholder
    icon_size = 64,
    order = "a[fluid]-a[polluted-air]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false
  },
  {
    type = "fluid",
    name = "clean-air",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "0.1kJ",
    base_color = {r=0.8, g=1, b=1},
    flow_color = {r=0.9, g=1, b=1},
    icon = "__base__/graphics/icons/fluid/steam.png", -- Placeholder
    icon_size = 64,
    order = "a[fluid]-b[clean-air]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false
  }
})
