return {

  -- disable nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    enabled = false,
    optional = true,
  },

  -- config for blink.cmp
  {
    "saghen/blink.cmp",
    lazy = false,
    enabled = true,
    dependencies = {
      "rafamadriz/friendly-snippets",
      -- add blink.compat to dependencies
      {
        "saghen/blink.compat",
        optional = true, -- make optional so it's only enabled if any extras need it
        version = not vim.g.lazyvim_blink_main and "*",
      },
    },
    opts = {
      completion = {
        menu = {
          draw = {
            treesitter = { "lsp" },
          },
          -- border = "rounded",
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
          -- window = {
          --   border = "rounded",
          -- },
        },
      },
      sources = {
        -- adding any nvim-cmp sources here will enable them
        -- with blink.compat
        default = { "lsp", "path", "snippets", "buffer" },
      },
      keymap = {
        preset = "default",
        ["<C-y>"] = { "select_and_accept" },

        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },

        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<CR>"] = { "accept", "fallback" },

        ["<C-b>"] = { "scroll_documentation_up", "fallback" },
        ["<C-f>"] = { "scroll_documentation_down", "fallback" },

        ["<C-e>"] = { "hide", "fallback" },
      },
    },
  },
}
