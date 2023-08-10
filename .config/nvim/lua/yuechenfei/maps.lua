local keymap = vim.keymap

vim.g.mapleader = ' '

-- insert model--
keymap.set('i', 'jk', '<ESC>')

-- view model --


-- normal model --

keymap.set('n', '<Leader>nh', ':nohl<CR>')
keymap.set('n', '<C-a>', 'gg<S-v>G')
