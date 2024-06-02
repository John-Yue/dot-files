local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- `jk`代替`Esc`
keymap.set("i", "jk", "<Esc>", opts)

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<cr>", opts)

-- 简单介绍
-- 在 Vim 编辑器中，vim.keymap 函数用于设置键位映射（key mapping）。这个函数允许用户自定义键盘按键的行为，使得在 Vim 中可以执行特定的命令或插入特定的文本。vim.keymap 函数的参数通常包括：
--
-- mode: 模式参数，指定键映射应该在哪个模式下生效。常见的模式有：
--
-- "n": 普通模式（Normal mode）
-- "v": 可视模式（Visual mode）
-- "x": 可视行模式（Visual Line mode）
-- "s": 选择模式（Select mode）
-- "i": 插入模式（Insert mode）
-- "c": 命令行模式（Command-line mode）
-- lhs: 左手参数（Left-hand side），即用户定义的按键组合。这可以是单个字符，也可以是组合键（如 <C-a> 表示 Ctrl+A）。
--
-- rhs: 右手参数（Right-hand side），即用户希望执行的命令或行为。
--
-- opts: 选项参数，是一个包含键值对的表（table），用于指定映射的额外行为。常见的选项包括：
--
-- noremap: 如果设置为 true，则映射不会被递归地重新映射。默认情况下，映射可以被其他映射覆盖。
-- silent: 如果设置为 true，则执行映射时不会显示任何消息或提示。
-- expr: 如果设置为 true，则 rhs 将被视为表达式，其结果将作为命令执行。
-- 下面是一个 vim.keymap 函数的示例：
--
-- `vim.keymap.set("n", "<C-a>", "<C-u>", {noremap = true, silent = true})`
--
-- -- 这行代码的含义是：在普通模式下，将 Ctrl+A 映射为向上滚动一页的行为，并且这个映射是不可重映射的（noremap），执行时不会显示任何消息（silent）。
