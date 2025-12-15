return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")

      local ff_opts = {
        hidden = true, 
        file_ignore_patterns = { 
          "node_modules/.*" 
        }
      }

      vim.keymap.set("n", "<leader><leader>", function() 
        builtin.find_files(ff_opts) 
      end, {})

      vim.keymap.set("n", "<leader>fg", function()
        builtin.live_grep(ff_opts)
      end, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
			require("telescope").load_extension("ui-select")
      })
		end,
	},
}
