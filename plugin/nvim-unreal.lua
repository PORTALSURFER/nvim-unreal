-- Check if we are running neovim 0.7.0 or above
-- if 1 ~= vim.fn.has "nvim-0.7.0" then
--  vim.api.nvim_err_writeln "nvim-unreal requires at least nvim-0.7.0"
--  return
-- end

local log_file_path = vim.fn.stdpath("data") .. "/nvim-unreal.log"

local function log(message)
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


-- local M = {}

-- function M.setup()
--  log("Setting up nvim-unreal")
-- end

-- return M


print("Loading nvim-unreal plugin")

function setup_nvim_unreal()
--   print("In setup function")
--    local log_file = io.open(log_file_path, "a")
    -- setup code
  --
  log("Setting up nvim-unreal")
end

setup_nvim_unreal()
