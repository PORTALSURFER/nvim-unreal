local Module = {}

local commands = require("nvim-unreal.commands_loader.commands")

local commands_list = {
  {
    name = "UnrealGenerateCode",
    file = "generate",
    opts = {},
  }
}

function Module.register()
  for _, command in ipairs(commands_list) do
    local command_file = require("nvim-unreal.commands_loader.commands." .. command.file)
    vim.api.nvim_create_user_command(command.name, command_file.execute, command.opts )
  end
end

return Module
