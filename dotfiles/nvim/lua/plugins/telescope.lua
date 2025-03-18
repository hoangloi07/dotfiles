local M = { "nvim-telescope/telescope.nvim", tag = "0.1.8" }

function M.config()
	require("telescope").setup()
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope [F]ind [F]iles" })
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope [L]ive [G]rep" })
	vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope [B]uffers" })
	vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope [H]elp [T]ags" })
end

return M
