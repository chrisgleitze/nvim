return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- "tsserver",
          "html",
          "cssls",
          "tailwindcss",
          "lua_ls",
          "emmet_ls",
          "rust_analyzer",
          "ts_ls",
          "vtsls",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim", -- config for lua_ls for quicker auto-complete etc.
        ft = "lua", -- only load on lua files
      },
    },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.html.setup({
        filetypes = { "html" },
      })
      lspconfig.lua_ls.setup({
        filetypes = { "lua" },
      })
      lspconfig.ts_ls.setup({
        filetypes = {
          "javascript",
          "typescript",
          "javascriptreact",
          "javascript.jsx",
          "typescriptreact",
          "typescript.tsx",
          "vue",
        },
      })
      lspconfig.vtsls.setup({
        filetypes = {
          "javascript",
          "typescript",
          "javascriptreact",
          "javascript.jsx",
          "typescriptreact",
          "typescript.tsx",
          "vue",
        },
      })
      lspconfig.emmet_ls.setup({
        filetypes = {
          "css",
          "eruby",
          "html",
          "javascript",
          "javascriptreact",
          "less",
          "sass",
          "scss",
          "svelte",
          "pug",
          "typescriptreact",
          "vue",
        },
      })
    end,
  },

  {
    -- formatter
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    event = { "BufReadPre", "BufNewFile" },
    lazy = false,
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
      },
      -- format_on_save = {
      --   lsp_fallback = true,
      --   async = false,
      --   timeout_ms = 1000,
      -- },
    },
  },
}
