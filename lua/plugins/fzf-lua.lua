return {
  "ibhagwan/fzf-lua",
  lazy = false,
  enabled = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function(_, opts)
    local config = require("fzf-lua.config")
    local actions = require("fzf-lua.actions")

    return {
      "default-title",
      defaults = {
        formatter = "path.dirname_first", -- show directory before file name but grey it out
        no_header = true,
      },
    }
  end,
}
