local mod = {
    "echasnovski/mini.bufremove",
    version = '*',
    config = true,
}

function mod.config()
    local Bufremove = require('mini.bufremove')

    vim.keymap.set('n', '<A-w>', Bufremove.delete, { desc = '[B]uffer [D]elete' })
    Bufremove.setup({})
end

return mod
