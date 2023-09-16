return {
   {
      "stevearc/oil.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
         columns = {
            "icon",
            "permissions",
            "size",
            "mtime",
         },
         keymaps = {
            ["<C-v>"] = "actions.select_vsplit",
            ["<C-s>"] = "actions.select_split",
            ["<Esc>"] = "actions.close",
         },
         view_options = {
            show_hidden = true,
         },
         float = {
            padding = 5,
         },
      },
      keys = {
         { "<Leader>o", ":lua require('oil').open_float()<CR>" },
      },
   },
   {
      "sbdchd/neoformat",
      config = function()
         vim.keymap.set(
            "n",
            "<Leader>fm",
            ":Neoformat<CR>",
            { silent = true, noremap = true }
         )
         vim.g.neoformat_try_node_exe = 1
      end,
   },
   {
      "norcalli/nvim-colorizer.lua",
      config = function()
         require("colorizer").setup()
      end,
   },
   {
      "lukas-reineke/indent-blankline.nvim",
   },
   {
      "github/copilot.vim",
      config = function()
         vim.cmd('imap <silent><script><expr> <C-CR> copilot#Accept("\\<CR>")')
         vim.g.copilot_no_tab_map = true
         vim.g.copilot_enabled = false
      end,
   },
   {
      "folke/zen-mode.nvim",
      opts = {
         window = {
            width = 100,
         },
      },
   },
   {
      "lambdalisue/suda.vim"
   },
   {
      "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup({
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
      })
      end,
   }
}
