return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      lazy = false,
      priority = 1000,
      undercurl = true,
      terminalColors = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
