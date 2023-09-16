local languages = {
   "clangd",
   "html",
   "cssls",
   "tsserver",
   "eslint",
   "pyright",
   "gopls",
}

return {
   {
      "neovim/nvim-lspconfig",
      dependencies = { "hrsh7th/cmp-nvim-lsp" },
      config = function()
         local capabilities = require("cmp_nvim_lsp").default_capabilities()
         require("lspconfig").lua_ls.setup({
            capabilities = capabilities,
            settings = {
               Lua = {
                  diagnostics = {
                     globals = { "vim", "describe", "it" },
                  },
               },
            },
         })

         for _, language in pairs(languages) do
            require("lspconfig")[language].setup({
               capabilities = capabilities,
            })
         end


         vim.lsp.handlers["textDocument/publishDiagnostics"] =
            vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
               virtual_text = false,
            })
      end,
   },
   {
      "williamboman/mason.nvim",
      opts = {},
   },
   {
      "williamboman/mason-lspconfig.nvim",
      opts = {
         ensure_installed = {
            "lua_ls",
            "clangd",
            "html",
            "cssls",
            "tsserver",
            "eslint",
            "pyright",
            "gopls",
            "rust_analyzer",
         },
      },
   },
}
