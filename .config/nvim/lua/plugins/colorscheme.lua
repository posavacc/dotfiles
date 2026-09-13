--[[
return {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.zenbones_darken_comments = 45

        vim.cmd.colorscheme('kanagawabones')
    end
}


return {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    init = function()
        require("lackluster").setup({
            tweak_background = {
                normal = "none"
            }
        })
        vim.cmd.colorscheme("lackluster")
        -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
        -- vim.cmd.colorscheme("lackluster-mint")
    end,
}
return {
    'axvr/photon.vim',
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("photon")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}

return {
    {
        "kdheepak/monochrome.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("monochrome")

            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
        end,
    },
}
]]

return {
    "oskarnurm/koda.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        require("koda").setup({
            transparent = false,
            styles = {
                functions = { bold = true },
                keywords  = { italic = true },
                comments  = { italic = true },
                strings   = {},
                constants = {},
            },

            colors = {
                const = "#e09d28",
            }
        })

        vim.cmd("colorscheme koda")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
}
