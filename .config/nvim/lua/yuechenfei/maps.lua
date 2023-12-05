local keymap = vim.keymap

vim.g.mapleader = ' '

-- insert model--
keymap.set('i', 'jk', '<ESC>')
keymap.set('i', '<C-s>', '<ESC><Cmd>w<CR>')
-- view model --
--


-- normal model --

keymap.set('n', '<Leader>nh', ':nohl<CR>')
-- keymap.set('n', '<C-a>', 'gg<S-v>G')
keymap.set('i', '<C-s>', '<ESC><Cmd>w<CR>')
