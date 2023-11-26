local mod = {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.4',
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-tree/nvim-web-devicons" },
        { "nvim-telescope/telescope-ui-select.nvim" },
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build =
            "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
        }
    }
}

function mod.config()
    local actions = require('telescope.actions')
    local telescope = require("telescope")
    local action_state = require('telescope.actions.state')

    telescope.setup({
        extensions = {
            ["ui-select"] = {
                require("telescope.themes").get_dropdown({
                    winblend = 10,
                }),
            },
        },
        defaults = {
            prompt_prefix = " ",
            selection_caret = " ",
            path_display = {
                "smart",
            },
            file_ignore_patterns = {
                ".git/",
                "node_modules",
            },
        }
    })

    telescope.load_extension("fzf")
    telescope.load_extension("ui-select")

    vim.keymap.set(
        'n',
        '<leader>ff',
        "<cmd> lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({winblend=10}))<CR>",
        {}
    )
    vim.keymap.set(
        'n',
        '<leader>fg',
        "<cmd> lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({winblend=10}))<CR>",
        {}
    )
    vim.keymap.set(
        'n',
        '<leader>fb',
        "<cmd> lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({winblend=10}))<CR>",
        {}
    )
    vim.keymap.set(
        'n',
        '<leader>fh',
        "<cmd> lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({winblend=10}))<CR>",
        {}
    )
    vim.keymap.set(
        'n',
        '<C-_>',
        "<cmd> lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({previewer=false, winblend=10}))<CR>",
        {}
    )
    vim.keymap.set(
        'n',
        '<leader>ld',
        "<cmd> lua require('telescope.builtin').diagnostics(require('telescope.themes').get_dropdown({winblend=10, previewer=false}))<CR>",
        {}
    )
end

return mod
