return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[ ─────────────────────────────────────────── ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("p", "  Open project", ":Telescope find_files cwd=~ <CR>"),
			dashboard.button("f", "  Find files", ":Telescope find_files <CR>"),
			dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
			dashboard.button("q", "  Quit", ":qa<CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}
