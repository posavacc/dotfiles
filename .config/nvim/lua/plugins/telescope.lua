return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },

    keys = {
        { '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = 'Find Files' },
        { '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = 'Live Grep' },
        { '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", desc = 'Buffers' },
        { '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", desc = 'Help Tags' },
        { '<leader>fo', "<cmd>lua require('telescope.builtin').oldfiles()<cr>", desc = 'Recent Files' },
    },

    config = function ()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {},
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        })
    end
}
