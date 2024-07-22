--data.lua

local masslandFill = {}

massLandfill.name = "mass-landfill"
massLandfill.icons = {
  {
    icon = "__base__/graphics/icons/landfill.png"
  },
}

-- create the recipe prototype from scratch
local recipe = {
  type = "recipe",
  name = "mass-landfill",
  enabled = true,
  energy_required = 0, -- time to craft in seconds (at crafting speed 1)
  ingredients = {{"iron-sticks", 5}, {"landfill", 10}},
  result = "mass-landfill"
}

data:extend{massLandfill, recipe}
