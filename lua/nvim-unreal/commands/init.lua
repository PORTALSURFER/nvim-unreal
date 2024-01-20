local Module = {}

local commands = {
  {
    name = "UnrealGenerateCode",
    func = require("nvim-unreal.commands").generate,
    nargs = 0,
  } }

function Module.register()
  for _, command in ipairs(commands) do
    vim.api.nvim_create_user_command(command.name, command.func, { nargs = command.nargs })
  end
end

return Module
