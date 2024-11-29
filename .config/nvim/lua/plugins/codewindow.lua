return {
	{ "dstein64/nvim-scrollview", enabled = false },
	{
		"gorbit99/codewindow.nvim",
		event = "VimEnter",
		config = function()
			local codewindow = require("codewindow")
			codewindow.setup({
				auto_enable = true,
				minimap_width = 10,
				window_border = nil,
				exclude_filetypes = {
					"TelescopePrompt",
					"packer",
					"alpha",
					"dashboard",
					"NvimTree",
					"Outline",
					"DressingInput",
					"toggleterm",
					"lazy",
					"mason",
					"neo-tree",
				},
			})
			codewindow.apply_default_keybinds()
		end,
	},
}
