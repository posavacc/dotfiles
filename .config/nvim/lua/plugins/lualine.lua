return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
        local colors = {
            bg      = "#080808",
            surface = "#383838",
            text    = "#b0b0b0",
            muted   = "#fff000",

            command = "#8ebeec",

            gray    = "#e3e3e3",

            alpha   = "#d9ba73",
            beta    = "#458ee6",
            gamma   = "#474747",
            theta   = "#50585d",

            normal  = "#777777",
        }

        local theme = {
            normal = {
                a = {
                    fg = colors.bg,
                    bg = colors.text,
                    gui = "bold"
                },
                b = {
                    fg = colors.gray,
                    bg = colors.surface,
                },
                c = {
                    fg = colors.text,
                    bg = colors.bg,
                },
            },

            insert = {
                a = {
                    fg = colors.bg,
                    bg = colors.alpha,
                    gui = "bold"
                },
                b = {
                    fg = colors.gray,
                    bg = colors.surface,
                },
                c = {
                    fg = colors.text,
                    bg = colors.bg,
                },
            },

            visual = {
                a = {
                    fg = colors.alpha,
                    bg = colors.surface,
                },
                b = {
                    fg = colors.gray,
                    bg = colors.gamma,
                },
                c = {
                    fg = colors.text,
                    bg = colors.bg,
                    gui = "bold"
                },
            },

            replace = {
                a = {
                    fg = colors.text,
                    bg = colors.gamma,
                    gui = "bold"
                },
                b = {
                    fg = colors.gray,
                    bg = colors.surface,
                },
                c = {
                    fg = colors.text,
                    bg = colors.bg,
                },
            },

            command = {
                a = {
                    fg = colors.bg,
                    bg = colors.command,
                    gui = "bold"
                },
                b = {
                    fg = colors.gray,
                    bg = colors.surface,
                },
                c = {
                    fg = colors.text,
                    bg = colors.bg,
                },
            },

            inactive = {
                a = {
                    fg = colors.muted,
                    bg = colors.bg,
                    gui = "bold"
                },
                b = {
                    fg = colors.gray,
                    bg = colors.surface,
                },
                c = {
                    fg = colors.text,
                    bg = colors.bg,
                },
            },
        }

		require("lualine").setup({
            options = {
                theme = "auto",
            }
        })
	end,
}
