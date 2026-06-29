return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("neogit").setup({})

      vim.keymap.set("n", "<leader>gg", function()
        require("neogit").open()
      end, { desc = "Neogit" })

      vim.keymap.set("n", "<leader>gc", function()
        require("neogit").open({ "commit" })
      end, { desc = "Neogit commit" })
    end,
  },
}
