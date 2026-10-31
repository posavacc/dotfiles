--[[
return {
    {
        "blazkowolf/gruber-darker.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruber-darker")

            -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
        end,
    },
}

return {
    "oskarnurm/koda.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        require("koda").setup({
            transparent = false,
            styles = {
                functions = { bold = false},
                keywords  = { bold = true },
                comments  = { italic = true },
                strings   = {},
                constants = { italic = false },
            },

            colors = {
                const = "#F6CE4E"
            }
        })

        vim.cmd("colorscheme koda")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, 'CursorLineNr', { fg='#ffdd33', bold=false })
    end,
}

]]
-- Lazy
return {
  "mcchrish/zenbones.nvim",
  dependencies = { "rktjmp/lush.nvim" },
  config = function()
    vim.cmd.colorscheme("zenbones")
  end
}
