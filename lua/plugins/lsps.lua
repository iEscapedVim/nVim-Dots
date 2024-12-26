return {
   {
     "williamboman/mason.nvim",
         config = function()
            require('mason').setup()
      end
   },
   {
      "williamboman/mason-lspconfig.nvim",
         config = function()
            require('mason-lspconfig').setup({
               ensure_installed = {
               'ast_grep', 'astro', 'tailwindcss', 'lua_ls'
            }
         })
      end
   },
   {
      "neovim/nvim-lspconfig",
        config = function()
          local lspconf = require('lspconfig')
            lspconf.ast_grep.setup({})
            lspconf.astro.setup({})
            lspconf.tailwindcss.setup({})
            lspconf.lua_ls.setup({})
         vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
         vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end
   }
}

