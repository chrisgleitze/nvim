return {
  "folke/zen-mode.nvim",
  lazy = false,
  -- config lent by ThePrimeagen :)
  config = function()
        vim.keymap.set("n", "<leader>zz", function()
            require("zen-mode").setup {

                window = {
                    width = 100,
                    options = { }
                },
            }

            require("zen-mode").toggle()
            vim.wo.wrap = false
            vim.wo.number = true

            vim.wo.rnu = true
        end)

        vim.keymap.set("n", "<leader>zZ", function()
            require("zen-mode").setup {
                window = {
                    width = 100,
                    options = { }
                },
            }
            require("zen-mode").toggle()
            vim.wo.wrap = false
            vim.wo.number = false
            vim.wo.rnu = false
        end)
    end
}
