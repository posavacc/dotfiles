return {
    "goolord/alpha-nvim",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        vim.api.nvim_set_hl(0, "AlphaHeader", {
            fg = "#a6a6a6",
        })

        dashboard.section.header.val = {
"",
" ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓",
" ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
"▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░",
"▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ",
"▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒",
"░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░",
"░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░",
"   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ",
"         ░    ░  ░    ░ ░        ░   ░         ░   ",
"                                ░                  ",
"",
        }

        dashboard.section.buttons.val = {
            dashboard.button("e", "  Novo arquivo", "<cmd>ene<CR>"),
            dashboard.button("f", "󰱼  Procurar arquivo", "<cmd>lua require('telescope.builtin').find_files()<cr>"),
            dashboard.button("r", "󰄉  Recentes", "<cmd>lua require('telescope.builtin').oldfiles()<cr>"),
            dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<CR>"),
            dashboard.button("q", "󰅚  Sair", "<cmd>qa<CR>"),
        }

        dashboard.section.footer.val = {
            "",
            "",
            "",
            "não sei o que escrever aqui.",
        }

        dashboard.section.footer.opts = {
            position = "center",
            hl = "AlphaHeader",
        }

        alpha.setup(dashboard.config)
    end,
}
