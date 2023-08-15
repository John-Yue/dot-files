return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        {'<Leader>e', '<Cmd>NvimTreeToggle<CR>'}
    },
    config = function()
        require('nvim-tree').setup {
            update_focused_file = {
                enable = true,
                update_root = false,
                ignore_list = {},
            },
        }
    end
}
