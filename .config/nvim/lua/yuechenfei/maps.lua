local keymap = vim.keymap

-- 定义 <Leader>
vim.g.mapleader = ' '

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

--------------------------插入模式--------------------------

keymap.set('i', 'jk', '<ESC>')


--------------------------视觉模式--------------------------




--------------------------正常模式--------------------------
-- 取消高亮
keymap.set('n', '<Leader>nh', ':nohl<CR>')

-- 全选
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- 向前删除一个单词
keymap.set('n', 'dw', 'vb"_d')


--------------------------插  件--------------------------

-- nvim-tree
keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>')




