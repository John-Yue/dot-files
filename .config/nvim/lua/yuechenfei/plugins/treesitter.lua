return {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/playground",
    },
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = "all",
        -- ignore_install = { "swift", "phpdoc"},
        indent = {
            enable = true
        },
        highlight = {
            enable = true
        },
        playground = {
            enable = true,
        },
        context_commentstring = {
            enable = true,
        },
    },
    config = function ()
        vim.wo.foldmethod = 'expr'
        vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
        vim.wo.foldlevel = 99
    end
}
