vim.cmd('autocmd!')
local opt = vim.opt

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- 标题
opt.title = true


-- 行号
opt.relativenumber = true
opt.number = true

-- 缩紧
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.autoindent = true

-- 禁止换行
opt.wrap = false

-- 光标
opt.cursorline = true

--启用鼠标
opt.mouse:append('a')

-- 系统剪贴板
opt.clipboard:append('unnamedplus')

-- 默认窗口右和下
opt.splitright = true
opt.splitbelow = true


-- 搜索
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- 外观
opt.termguicolors = true
opt.signcolumn = 'yes'
opt.showcmd = true
opt.laststatus = 2
opt.scrolloff = 10
opt.winblend = 0
opt.wildoptions = 'pum'
opt.pumblend = 5

opt.background = 'dark'
