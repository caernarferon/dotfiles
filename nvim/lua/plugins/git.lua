return {
   "tpope/vim-fugitive",
   {
      "lewis6991/gitsigns.nvim",
      opts = {},
      init = function()
         local opt = { noremap = true, silent = true }
      end,
   },
}
