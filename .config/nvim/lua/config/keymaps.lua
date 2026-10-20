vim.g.mapleader = ' '
-- vim.g.maplocalleader = "//"

vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

vim.keymap.set('n', '<ESC>', '<cmd>nohlsearch<CR>')

vim.keymap.set('v', "<leader>'", "c''<ESC>P")
vim.keymap.set('v', '<leader>"', 'c""<ESC>P')
vim.keymap.set('v', '<leader>(', 'c()<ESC>P')
vim.keymap.set('v', '<leader>[', 'c[]<ESC>P')
vim.keymap.set('v', '<leader>{', 'c{}<ESC>P')

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>W', ':wq<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>Q', ':q!<CR>')

vim.keymap.set("n", "<leader>l", function()
    vim.opt.list = not vim.opt.list:get()
end, { desc = "Toggle invisible chars" })

vim.keymap.set("n", "<leader>{", "a {<CR>}<ESC>O")

vim.keymap.set("v", "<leader>/", "gc", { remap = true })
vim.keymap.set("n", "<leader>/", "gcc", { remap = true })

-- move highlighted text
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])
