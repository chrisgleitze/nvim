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
      fzf_colors = true,
      fzf_opts = {
        ["--no-scrollbar"] = true,
        ["--cycle"] = true,
        ["--ansi"] = true,
        ["--height"] = "100%",
        ["--highlight-line"] = true,
      },
      defaults = {
        formatter = "path.dirname_first", -- show greyed-out directory before filename
        no_header = true,
      },
    }
  end,
}
