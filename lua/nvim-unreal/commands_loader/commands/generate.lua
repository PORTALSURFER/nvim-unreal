local utilities = require("nvim-unreal.utilities")

local noice = require("noice")
local Module = {}

-- execute this command
-- must be implemented by each command to work with the command loader
function Module.execute()
  utilities.log("Generating nvim-unreal code, UNIMPLEMENTED")
-- noice.message("Generating nvim-unreal code, UNIMPLEMENTED", 'info')
  
end

return Module

