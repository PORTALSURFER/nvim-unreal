-- Check if we are running neovim 0.7.0 or above
if 1 ~= vim.fn.has "nvim-0.7.0" then
  vim.api.nvim_err_writeln "Unreal.nvim requires at least nvim-0.7.0"
  return
end

local log_file_path = vim.fn.stdpath "data" .. "/nvim-unreal.log"

local function log(msg)
  local log_file = io.data(log_file_path, "a")
  if log_file then
    log_file:write(msg .. "\n")
    io.close(log_file)
  else
    error("Unable to open log file: " .. log_file_path)
  end
end


local M = {}

function M.setup(args)
  log("Setting up nvim-unreal")
end

return M
