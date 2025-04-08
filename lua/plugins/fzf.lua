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
      keymap = {
        fzf = {
          ["ctrl-k"] = "up",
          ["ctrl-j"] = "down",
          ["ctrl-f"] = "preview-page-up",
          ["ctrl-b"] = "preview-page-down",
          ["ctrl-u"] = "half-page-up", -- in list of search results
          ["ctrl-d"] = "half-page-down", -- in list of search results
          ["ctrl-q"] = "abort",
        },
      },
    }
  end,
}
