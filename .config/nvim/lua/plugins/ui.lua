return {
  -- 禁用neo-tree.nvim, 用不习惯
  {
    "nvim-neo-tree/neo-tree.nvim",
    enable = false,
    keys = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<Leader>e", "<Cmd>NvimTreeToggle<CR>", desc = "NvimTreeToggle" },
    },
    config = function()
      require("nvim-tree").setup({ -- BEGIN_DEFAULT_OPTS
        -- 根据文件名长度，自动宽度
        view = {
          adaptive_size = true,
        },

        -- 自动聚焦文件
        update_focused_file = {
          enable = true,
          update_root = false,
          ignore_list = {},
        },

        -- 开启git
        git = {
          enable = true,
          show_on_dirs = true,
          show_on_open_dirs = true,
          disable_for_dirs = {},
          timeout = 400,
        },
      }) -- END_DEFAULT_OPTS
    end,
  },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      }
    end,
  },

  -- 设置主题生效
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },

  -- 设置动画配置
  {
    "echasnovski/mini.animate",
    opts = function()
      -- don't use animate when scrolling with the mouse
      local mouse_scrolled = false
      for _, scroll in ipairs({ "Up", "Down" }) do
        local key = "<ScrollWheel" .. scroll .. ">"
        vim.keymap.set({ "", "i" }, key, function()
          mouse_scrolled = true
          return key
        end, { expr = true })
      end

      return {
        -- 窗口打开/关闭 取消动画效果
        open = {
          enable = false,
        },
        close = {
          enable = false,
        },
      }
    end,
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      -- 宜忌
      local cmd = "node -e \"console.log(require('${HOME}/.config/nvim/scripts/yiji.js').getTodayYiJi())\""
      local handle = io.popen(cmd)
      local result = handle:read("*a")

      handle:close()
      local yi = string.match(result, "yi: '(.*)',")
      local ji = string.match(result, "ji: '(.*)'")
      -- 宜忌
      local opts = {
        theme = "hyper",
        hide = {
          statusline = false,
        },
        config = {
          packages = { enable = true },
          week_header = {
            enable = true,
            concat = "宜: " .. yi .. " 忌: " .. ji,
          },
          shortcut = {
            {
              icon = " ",
              icon_hl = "@variable",
              desc = "Files",
              group = "Label",
              action = "Telescope find_files",
              key = "f",
            },
            { action = "Telescope live_grep", group = "Number", desc = " Find Text", icon = " ", key = "g" },
            { action = "Lazy", group = "@property", desc = " Lazy", icon = "󰒲 ", key = "l" },
            -- { action = "LazyExtras", group = "DiagnosticHint", desc = " Lazy Extras", icon = " ", key = "x" },
            -- { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "s" },
            { action = "qa", desc = " Quit", icon = " ", key = "q" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },
}
