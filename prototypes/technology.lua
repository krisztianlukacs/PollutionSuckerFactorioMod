data:extend({
  {
    type = "technology",
    name = "pollution-sucker-tech",
    icon = "__PollutionSucker__/graphics/technology/pollution-sucker-tech.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "suck-pollution"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-air"
      },
      {
        type = "unlock-recipe",
        recipe = "release-clean-air"
      },
      {
        type = "unlock-recipe",
        recipe = "pollution-sucker"
      },
      {
        type = "unlock-recipe",
        recipe = "air-cleaner-factory"
      },
      {
        type = "unlock-recipe",
        recipe = "fresh-air-outlet"
      }
    },
    prerequisites = {"space-science-pack"}, -- Removed advanced-electronics to avoid mod conflicts
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 20},
        {"logistic-science-pack", 10},
        {"chemical-science-pack", 5},
        {"utility-science-pack", 5},
        {"metallurgic-science-pack", 4}
      },
      time = 60
    },
    order = "c-a"
  }
})
