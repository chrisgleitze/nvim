return {
  "echasnovski/mini.surround",
  recommended = true,
  version = false,
  lazy = false,
  keys = function(_, keys)
    -- Populate the keys based on the user's options
    local opts = LazyVim.opts("mini.surround")
    local mappings = {
      { opts.mappings.add, desc = "Add Surrounding", mode = { "n", "v" } },
      { opts.mappings.delete, desc = "Delete Surrounding" },
      { opts.mappings.find, desc = "Find Right Surrounding" },
      { opts.mappings.find_left, desc = "Find Left Surrounding" },

      { opts.mappings.highlight, desc = "Highlight Surrounding" },
      { opts.mappings.replace, desc = "Replace Surrounding" },
      { opts.mappings.update_n_lines, desc = "Update `MiniSurround.config.n_lines`" },
    }
    mappings = vim.tbl_filter(function(m)
      return m[1] and #m[1] > 0
    end, mappings)
    return vim.list_extend(mappings, keys)
  end,
  opts = {
    mappings = {
      add = "ys", -- Add surrounding in Normal and Visual modes
      delete = "ds", -- Delete surrounding
      find = "", -- Find surrounding (disabled)
      find_left = "", -- Find surrounding to the left (disabled)
      highlight = "", -- Highlight surrounding (disabled)
      replace = "cs", -- Replace surrounding
      update_n_lines = "", -- Update `n_lines` (disabled)
      suffix_last = "", -- Disabled

      suffix_next = "", -- Disabled
    },
    search_method = "cover_or_next",
  },
  config = function(_, opts)
    require("mini.surround").setup(opts)

    -- Remap adding surrounding to Visual mode selection
    vim.keymap.del("x", "ys")
    vim.keymap.set("x", "S", [[:<C-u>lua MiniSurround.add('visual')<CR>]], { silent = true })

    -- Make special mapping for "add surrounding for line"
    vim.keymap.set("n", "yss", "ys_", { remap = true })
  end,
}
