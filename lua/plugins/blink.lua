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
    opts = function(_, opts)
      opts.keymap = {
        preset = "default",
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },

        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<CR>"] = { "accept", "fallback" },

        ["<C-e>"] = { "hide", "fallback" },
      }

      return opts
    end,
  },
}
