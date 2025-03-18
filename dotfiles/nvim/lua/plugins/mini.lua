local M = {
	"echasnovski/mini.nvim",
	version = false,
}

function M.config()
	require("mini.surround").setup()
	require("mini.align").setup()
	require("mini.pairs").setup()
	require("mini.comment").setup()
	require("mini.diff").setup()
	require("mini.git").setup()
	-- require('mini.statusline').setup()
	require("mini.tabline").setup()
	local stats = require("lazy").stats()
	local starter = require("mini.starter")
	starter.setup({
		evaluate_single = true,
		items = {
			{ name = "search project", action = "Telescope find_files", section = "Actions" },
			{ name = "live grep", action = "Telescope live_grep", section = "Actions" },
			{ name = "change colorscheme", action = "PrismTelescope", section = "Actions" },
			starter.sections.recent_files(4, false),
		},
		footer = "loaded " .. stats.count .. " plugins",
		header = "ฅ^•ﻌ•^ฅ",
		content_hooks = {
			starter.gen_hook.adding_bullet("> "),
			starter.gen_hook.aligning("center", "top"),
			starter.gen_hook.padding(3, 5),
		},
	})
end

return M
