local opt = vim.opt
local buf = vim.b
-- local g = vim.g

-- Global Settings --
opt.showmode = true
opt.backspace = { "indent", "eol", "start"}
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.shiftround = true
opt.autoindent = true
opt.smartindent = true
opt.number = true
opt.relativenumber = true
opt.wildmenu = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.completeopt = { "menuone", "noselect"}
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.autoread = true
opt.title = true
opt.swapfile = true
opt.backup = false
opt.updatetime = 50
opt.mouse = "a"
opt.undofile = true
opt.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
opt.exrc = true
opt.wrap = false
opt.splitright = true
opt.splitbelow = true
opt.laststatus = 3
opt.winblend = 10
opt.clipboard:append('unnamedplus')
opt.showcmd = true
opt.scrolloff = 10
opt.wildoptions = 'pum'
opt.pumblend = 5
opt.background = 'dark'
-- opt.foldenable = true
-- opt.foldmethod = 'indent'

-- Buffer Settings --
buf.fileencoding = "utf-8"

-- Global Settings --
-- g.mapleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- vim.keymap.set("n", "ts", ":tabNext<CR>")
-- vim.keymap.set("n", "tn", ":tabnew<CR>")
-- vim.keymap.set("n", "tc", ":tabclose<CR>")
-- vim.keymap.set("n", "to", ":tabonly<CR>")

-- vim.keymap.set("n", "<A-Tab>", "<cmd>bNext<CR>")
-- vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>")
-- vim.keymap.set("n", "<leader>bo", ":%bd|e#|bd#<CR>")
--
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--
-- vim.keymap.set({ "v", "n" }, "<leader>y", "\"+y")
-- vim.keymap.set("n", "<c-d>", "<c-d>zz")
-- vim.keymap.set("n", "<c-u>", "<c-u>zz")
-- vim.keymap.set("n", "<c-f>", "<c-f>zz")
-- vim.keymap.set("n", "<c-b>", "<c-b>zz")
--
-- local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
-- vim.api.nvim_create_autocmd('TextYankPost', {
--     callback = function()
--         vim.highlight.on_yank()
--     end,
--     group = highlight_group,
--     pattern = '*',
-- })
