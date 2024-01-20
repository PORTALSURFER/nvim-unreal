local Module = {}

local commands = require("nvim-unreal.commands")

local commands_list = {
  {
    name = "UnrealGenerateCode",
    func = commands.generate,
    nargs = 0,
  } }

function Module.register()
  for _, command in ipairs(commands_list) do
    vim.api.nvim_create_user_command(command.name, command.func, { nargs = command.nargs })
  end
end

return Module
