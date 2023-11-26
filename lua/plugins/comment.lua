local mod = {
    "numToStr/Comment.nvim",
    lazy = false,
}

function mod.config()
    local comment = require("Comment")
    comment.setup({
        padding = true,
    })
end

return mod
