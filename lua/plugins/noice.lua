return {
  { "rcarriga/nvim-notify", enabled = false }, -- disable notification manager
  -- { "nvimdev/dashboard-nvim", enabled = false },

  -- classic cmdline
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        enabled = false,
      },
      messages = {
        enabled = false,
      },
    },
  },
}
