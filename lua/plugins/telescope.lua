return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",

  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  opts = function()
    local actions = require("telescope.actions")
    return {
      defaults = {
        mappings = {
          i = {
            ["<C-Down>"] = actions.cycle_history_next,
            ["<C-Up>"] = actions.cycle_history_prev,
            ["<C-j>"] = actions.preview_scrolling_down,
            ["<C-k>"] = actions.preview_scrolling_up,
            ["<S-k>"] = actions.move_selection_previous,
            ["<S-j>"] = actions.move_selection_next,
            -- ["<c-t>"] = open_with_trouble,
            -- ["<a-t>"] = open_with_trouble,
          },
        },
      },
    }
  end,
}
