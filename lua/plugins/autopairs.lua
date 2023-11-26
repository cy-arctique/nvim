local mod = {
    "windwp/nvim-autopairs",
    event = "InsertEnter"
}

function mod.config()
    local autopairs = require("nvim-autopairs")
    autopairs.setup({
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
            highlight_grey = 'Comment'
        },
    })
end

return mod
