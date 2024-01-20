local utilities = require("nvim-unreal.utilities")

local noice = require("noice")
local Module = {}

-- execute this command
-- must be implemented by each command to work with the command loader
function Module.execute()
  utilities.log("Generating nvim-unreal code")
  noice.notify("UNIMPLEMENTED", "warn")

  local unreal_version = "5.3"
  local reg_command = "reg query 'HKEY_LOCAL_MACHINE\\SOFTWARE\\EpicGames\\Unreal Engine\\" .. unreal_version .. "' /v InstalledDirectory"
  noice.notify("Running command: " .. reg_command)

  local handle, error_message = io.popen(reg_command)
  if handle then
    local result = handle:read("*a")
    handle:close()

    local unreal_path = string.match(result, "InstalledDirectory%s+REG_SZ%s+(.+)")

    if unreal_path then
      noice.notify("Unreal Engine is installed at " .. unreal_path)
    else
      noice.notify("Unable to find Unreal Engine install dir", "error")
    end

  else 
    noice.notify("Unable to read windows registry" .. (error_message or "unknown error"), "error")
  end
end

return Module

