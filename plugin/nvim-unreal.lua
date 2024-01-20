if 1 ~= vim.fn.has "nvim-0.11.0" then
  vim.api.nvim_err_writeln "Unreal.nvim requires at least nvim-0.7.0"
  return
end
