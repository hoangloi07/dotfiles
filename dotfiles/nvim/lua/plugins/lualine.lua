local M = {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.config()
	require("lualine").setup({
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = { "location", "encoding", "filetype" },
			lualine_y = { "progress" },
			lualine_z = {
				{
					"branch",
					icon = {
						-- ''
						"󰄛 ",
					},
				},
			},
		},
		options = {
			icons_enabled = true,
			section_separators = { left = "", right = "" },
			component_separators = { left = " ", right = " " },
		},
	})
end

return {}
