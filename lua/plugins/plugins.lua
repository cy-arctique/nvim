return {

    -- 图标, 很多插件需要这个依赖
    { "nvim-tree/nvim-web-devicons", lazy = true },

    -- 主题
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme tokyonight]])
        end
    },

    -- 多窗口
    {
        "aserowy/tmux.nvim",
        config = function() 
            require("tmux").setup() 
        end
    },

    -- 目录树
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependecies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            -- 默认不开启nvim-tree
            -- vim.g.loaded_netrw = 1
            -- vim.g.loaded_netrwPlugin = 1
            require("nvim-tree").setup()
        end
    },

    -- 状态栏
    {
        "nvim-lualine/lualine.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
        config = function()
            require('lualine').setup({
                options = { theme = "tokyonight" }
            })
        end
    },

    -- 组合键
    -- { "folke/which-key.nvim", lazy = true },

    -- 打开多个文件tags
    {
        "akinsho/bufferline.nvim",
        version = "*",
        config = function()
            require("bufferline").setup({
                options = {
                    offsets = {{
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }}
                }
            })
        end
    },

    -- 注释
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = function()
            require('Comment').setup({
                padding = true
            })
        end
    },
    
    -- 缩进
    { 
        "lukas-reineke/indent-blankline.nvim", 
        main = "ibl", 
        config = function()            
            require("ibl").setup()
        end
    },


    -- 符号自动补全
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({
                fast_wrap = {
                  map = '<M-e>',
                  chars = { '{', '[', '(', '"', "'" },
                  pattern = [=[[%'%"%>%]%)%}%,]]=],
                  end_key = '$',
                  before_key = 'h',
                  after_key = 'l',
                  cursor_pos_before = true,
                  keys = 'qwertyuiopzxcvbnmasdfghjkl',
                  manual_position = true,
                  highlight = 'Search',
                  highlight_grey='Comment'
                },
            })
        end
    },

    -- 语法高亮
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
          local configs = require("nvim-treesitter.configs")
          configs.setup({
              ensure_installed = { "c", "lua", "vim", "vimdoc", },
              sync_install = false,
              highlight = { enable = true },
              indent = { enable = true },  
            })
        end
     },

    -- LSP
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    -- 对应的lsp服务
                    -- https://github.com/williamboman/mason-lspconfig.nvim
                    "lua_ls",
                    "clangd",
                }
            })
        end
    },
    -- { "hrsh7th/nvim-cmp", config = function() require("nvim-cmp").setup() end},
    -- { "hrsh7th/cmp-nvim-lsp", config = function() require("cmp-nvim-lsp").setup() end },
    -- { "L3MON4D3/LuaSnip", config = function() require("LuaSnip").setup() end },
    -- { "saadparwaiz1/cmp_luasnip", config = function() require("cmp_luasnip").setup() end },
    -- { "rafamadriz/friendly-snippets", config = function() require("friendly-snippets").setup() end },
    -- { "hrsh7th/cmp-path", config = function() require("cmp-path").setup() end },
    -- {
    --     "neovim/nvim-lspconfig",
    --     config = function()
    --         local capabilities = require("cmp_nvim_lsp").default_capabilities()
    --         require("mason-lspconfig").setup({
    --             capabilities = capabilities
    --         })
    --     end
    -- },
}
