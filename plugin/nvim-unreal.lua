local utilities = require("nvim-unreal.utilities")
local commands = require("nvim-unreal.commands")

local function setup_nvim_unreal()
  utilities.log("Setting up nvim-unreal")
  commands.register()
end

setup_nvim_unreal()
