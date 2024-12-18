return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  ---@type oil.SetupOpts
  keys = {
    {
      mode = "n",
      "<leader>o",
      function()
        require("oil").open()
      end,
      desc = "Open Oil file viewer",
    },
  },

  opts = {
    default_file_explorer = false,
    view_options = {
      show_hidden = true,
    },
  },
}
