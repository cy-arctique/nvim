local mod = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
}

function mod.config()
    local tree = require("nvim-treesitter.configs")
    tree.setup({
        ensure_installed = { "rust", "lua", "vim", "vimdoc", },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
    })
end

return mod
