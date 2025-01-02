return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function(_, opts)
    local config = require("fzf-lua.config")
    local actions = require("fzf-lua.actions")

    return {
      "default-title",
      -- fzf_colors = false,
      -- fzf_opts = {
      --   ["--no-scrollbar"] = true,
      --   ["--header"] = " ",
      -- },
      defaults = {
        -- formatter = "path.filename_first",
        -- show file directory but grey it out:
        formatter = "path.dirname_first",
        no_header = true,
      },
      -- previewers = {
      --   builtin = {
      --     extensions = {
      --       ["png"] = img_previewer,
      --       ["jpg"] = img_previewer,
      --       ["jpeg"] = img_previewer,
      --       ["gif"] = img_previewer,
      --       ["webp"] = img_previewer,
      --     },
      --     ueberzug_scaler = "fit_contain",
      --   },
      -- },
    }
  end,
}
