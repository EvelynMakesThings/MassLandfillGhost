--data.lua

local massLandfill = table.deepcopy(data.raw["selection-tool"])

massLandfill.name = "mass-landfill"
massLandfill.icons = {
  {
    icon = "__base__/graphics/icons/landfill.png",
    icon_size = 64
  },
}

massLandfill.type = "selection-tool"
massLandfill.stack_size = 1
massLandfill.selection_color = {r = 0.5, g = 0.5, b = 0.5, a = 0.5}
massLandfill.alt_selection_color = {r = 0.8, g = 0.8, b = 0.8, a = 0.5}
massLandfill.selection_mode = {"any-tile"}
massLandfill.alt_selection_mode = {"any-tile"}
massLandfill.selection_cursor_box_type = "entity"
massLandfill.alt_selection_cursor_box_type = "entity"
-- create the recipe prototype from scratch
local recipe = {
  type = "recipe",
  name = "mass-landfill",
  enabled = true,
  energy_required = 0.01, -- time to craft in seconds (at crafting speed 1)
  ingredients = {{"iron-stick", 5}, {"landfill", 10}},
  result = "mass-landfill"
}

data:extend{massLandfill, recipe}
