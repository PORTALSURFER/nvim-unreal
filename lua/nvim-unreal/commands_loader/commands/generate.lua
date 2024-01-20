local utilities = require("nvim-unreal.utilities")

local Module = {}

local log = utilities.log

-- execute this command
-- must be implemented by each command to work with the command loader
function Module.execute()
  log("Generating nvim-unreal code")

  local unreal_version = "5.3"
  local reg_command = "reg query 'HKEY_LOCAL_MACHINE\\SOFTWARE\\EpicGames\\Unreal Engine\\" ..
      unreal_version .. "' /v InstalledDirectory > temp.txt"
  log("Running command: " .. reg_command)

  local handle, error_message = io.popen(reg_command, "r")

  os.execute(reg_command)

  local file = io.open("temp.txt", "r")
  local result = file:read("*a")
  file:close()
  os.remove("temp.txt") -- Cleanup

  print("Result: " .. result)

  if handle then
    local result = handle:read("*a")
    log(result)
    handle:close()

    if result then
      local unreal_path = string.match(result, "%s*InstalledDirectory%s+%w+%s+(.+)")
      if unreal_path then
        log("Unreal Engine is installed at " .. unreal_path)
      else
        log("Unable to find Unreal Engine install dir")
      end
    else
      log("Unable to find Unreal Engine install dir")
    end
  else
    log("Unable to read windows registry" .. (error_message or "unknown error"))
  end
end

return Module
