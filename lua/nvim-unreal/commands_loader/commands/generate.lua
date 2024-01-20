local utilities = require("nvim-unreal.utilities")

local noice = require("noice")
local Module = {}

-- execute this command
-- must be implemented by each command to work with the command loader
function Module.execute()
  utilities.log("Generating nvim-unreal code")
  noice.notify("UNIMPLEMENTED", "warn")

  local handle, error_message = io.popen("reg query 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Epic Games\\Unreal Engine' /v InstalledDirectory" )
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

