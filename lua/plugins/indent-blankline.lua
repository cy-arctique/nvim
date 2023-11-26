local mod = {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl"
}

function mod.config()
    local ibl = require("ibl")
    ibl.setup({})
end

return mod
