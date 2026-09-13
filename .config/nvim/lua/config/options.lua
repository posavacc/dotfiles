vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.guicursor = ''

vim.opt.linebreak = true

vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.mouse = 'a'

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.inccommand = 'split'

vim.opt.list = true
vim.opt.listchars = { tab = '  ', trail = '·', nbsp = '␣' }

vim.opt.clipboard = 'unnamedplus'

vim.opt.hlsearch = true

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.fillchars = { eob = ' ' }

--Aquele bagulho de abrir e fechar parenteses e etc
--vim.keymap.set('i', '(', '()<Esc>i')
--vim.keymap.set('i', '[', '[]<Esc>i')
--vim.keymap.set('i', '{', '{}<Esc>i')
--vim.keymap.set('i', "'", "''<Esc>i")
--vim.keymap.set('i', '"', '""<Esc>i')
