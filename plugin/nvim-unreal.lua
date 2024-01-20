
-- Check if we are running neovim 0.7.0 or above
if 1 ~= vim.fn.has "nvim-0.7.0" then
  vim.api.nvim_err_writeln "Unreal.nvim requires at least nvim-0.7.0"
  return
end

function setup(args)
    print("setting up plugin")
end
