--[[
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
                -- const = "#ffffff",
                -- func = "#777777",
                -- const = "#e09d28",
                -- const = "#bb86fc",
                -- const = "#89b4fa",
                -- const = "#ffdd33",
                const = "#F6CE4E",
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
return {
    {
        "blazkowolf/gruber-darker.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "gruber-darker",
                callback = function()
                    local set = vim.api.nvim_set_hl

                    -- chamadas de função (WindowShouldClose, BeginDrawing...)
                    set(0, "@function.call", { fg = "#96a6c8" })   -- niagara (azulado)
                    set(0, "@function",      { fg = "#96a6c8" })

                    -- pacote/módulo (o "rl")
                    set(0, "@module", { fg = "#95a99f" })          -- quartz (cinza esverdeado)

                    -- campos e propriedades
                    set(0, "@variable.member", { fg = "#cc8c3c" }) -- brown
                    set(0, "@property",        { fg = "#cc8c3c" })

                    -- parênteses, chaves, vírgulas
                    set(0, "@punctuation.bracket",   { fg = "#7c7c7c" })
                    set(0, "@punctuation.delimiter", { fg = "#7c7c7c" })

                    -- variáveis normais (player)
                    set(0, "@variable", { fg = "#e4e4ef" })
                end,
            })

            vim.cmd.colorscheme("gruber-darker")

            -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
        end,
    },
}
