return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, { desc = "buf hover" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "define" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "reference" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code action" })
    end,
  },
}
