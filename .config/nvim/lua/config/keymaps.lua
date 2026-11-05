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

vim.keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- open mini terminal
local term_buf, term_win = nil, nil

vim.keymap.set("n", "<leader>h", function()
  -- se já está aberto, fecha
  if term_win and vim.api.nvim_win_is_valid(term_win) then
    vim.api.nvim_win_hide(term_win)
    term_win = nil
    return
  end

  local height = math.floor(vim.o.lines * 0.3)
  vim.cmd("botright " .. height .. "split")
  term_win = vim.api.nvim_get_current_win()

  if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
    vim.api.nvim_win_set_buf(term_win, term_buf)
  else
    vim.cmd("terminal")
    term_buf = vim.api.nvim_get_current_buf()
  end
  vim.cmd("startinsert")
end, { desc = "Toggle terminal inferior" })

-- Esc para sair do modo terminal
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]])
