local Module = {}

local log_file_path = vim.fn.stdpath("data") .. "/nvim-unreal.log"

function Module.log(message)
  local timestamp = os.date("%Y-%m-%d %H:%M:%S")
  local output = string.format("[%s] %s", timestamp, message)

  local log_file = io.open(log_file_path, "a")
  if log_file then
    log_file:write(output .. "\n")
   io.close(log_file)
  else
    error("Unable to open log file: " .. log_file_path)
  end
end

return Module
