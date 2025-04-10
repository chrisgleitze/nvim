return {
  -- -- add colorscheme
  -- {
  --   "rebelot/kanagawa.nvim",
  --   opts = {
  --     lazy = false,
  --     priority = 1000,
  --     undercurl = true,
  --     terminalColors = true,
  --     colors = {
  --       theme = {
  --         all = {
  --           ui = {
  --             bg_gutter = "none",
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
  --
  -- -- configure LazyVim to load theme
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "kanagawa-dragon",
  --   },
  -- },

  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        palettes = {
          bg1 = "#FF0000",
        },
      })

      vim.cmd("colorscheme github_dark_default")
    end,
  },
}
