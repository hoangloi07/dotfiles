local M = {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
}

function M.config()
	require("oil").setup({
		default_file_explorer = true,
		columns = {
			"permission",
			-- "size",
			"icon",
		},
		float = {
			max_width = 0.6,
			max_height = 0.5,
			winblend = 0,
		},
	})
	vim.keymap.set("n", "<leader>e", "<cmd>lua require('oil').toggle_float()<cr>")
end

return M
