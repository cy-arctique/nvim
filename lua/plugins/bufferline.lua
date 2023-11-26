local mod = {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons"
}

function mod.config()
    vim.opt.termguicolors = true

    local bufferline = require('bufferline')
    bufferline.setup({
        options = {
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left",
                    separator = true,
                }
            },
            hover = {
                enabled = true,
                delay = 200,
                reveal = { "close" }
            },
        }
    })

    -- bufferline, 切换buffer
    vim.keymap.set("n", "<A-right>", ":bnext<CR>")
    vim.keymap.set("n", "<A-left>", ":bprevious<CR>")
end

return mod
