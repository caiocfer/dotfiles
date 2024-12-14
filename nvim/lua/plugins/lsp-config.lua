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
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",       -- Lua
          "pyright",      -- Python
          "gopls",        -- Go
          "ts_ls",     -- JavaScript/TypeScript
          "jsonls",       -- JSON
          "yamlls",       -- YAML
          "dockerls",     -- Docker
          "bashls",       -- Bash
          "terraformls",  -- Terraform
          "helm_ls",      -- Helm Charts
          "html",         -- HTML
          "jdtls",        -- Java (JDT LSP)
          "kotlin_language_server", -- Kotlin
          "clangd",       -- C/C++
          "jedi_language_server", -- Python
          "jsonls",       -- JSON Language Server
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")

      -- TypeScript/JavaScript
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      -- Go
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })

      -- Python
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })

      -- Lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      -- HTML
      lspconfig.html.setup({
        capabilities = capabilities,
      })

      -- YAML
      lspconfig.yamlls.setup({
        capabilities = capabilities,
        settings = {
          yaml = {
            schemas = {
              kubernetes = "*.k8s.yaml",  -- Kubernetes YAML schema
            }
          }
        },
      })

      -- JSON
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })

      -- Dockerfile
      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })

      -- Terraform
      lspconfig.terraformls.setup({
        capabilities = capabilities,
      })

      -- Bash
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })

      -- Helm Charts
      lspconfig.helm_ls.setup({
        capabilities = capabilities,
      })


      -- Key mappings for LSP actions
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}


