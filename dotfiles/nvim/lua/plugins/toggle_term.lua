local M = { "akinsho/toggleterm.nvim", version = "*", config = true }

function M.config()
	require("toggleterm").setup()
	vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm direction=float<cr>")
end

return M
