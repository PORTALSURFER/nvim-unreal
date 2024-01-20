local utilities = require("nvim-unreal.utilities")
local commands_loader = require("nvim-unreal.commands_loader")

local function setup_nvim_unreal()
  utilities.log("Setting up nvim-unreal")
  commands_loader.register()
end

setup_nvim_unreal()
