local Module = {}

local commands = require("nvim-unreal.commands")

local commands_list = {
  {
    name = "UnrealGenerateCode",
    func = commands.generate,
    opts = {},
  }
}

function Module.register()
  for _, command in ipairs(commands_list) do
    vim.api.nvim_create_user_command(command.name, command.func, command.opts )
  end
end

return Module
