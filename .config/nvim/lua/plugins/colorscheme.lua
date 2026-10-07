--[[
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

return {
    'shaunsingh/nord.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("nord")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}

return {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
        vim.g.zenbones_darken_comments = 45
        vim.cmd.colorscheme('zenbones')
    end
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
                const = "#89b4fa",
                -- const = "#e09d28",
                -- const = "#bb86fc",
                -- const = "#ffffff",
            }
        })

        vim.cmd("colorscheme koda")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
}
