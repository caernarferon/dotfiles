return {
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    init = function()
      require("gruvbox").setup({
        contrast  = "dark",
      })
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {},
    config = function()
      vim.notify = require("notify")
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  }
}
