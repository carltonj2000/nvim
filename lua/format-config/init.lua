local util = require("formatter.util")

local prettier = function()
	return {
		exe = "prettier",
		args = {
			"--stdin-filepath",
			util.escape_path(util.get_current_buffer_file_path()),
			"--parser",
			parser,
		},
		stdin = true,
		try_node_modules = true,
	}
end

require("formatter").setup({
	filetype = {
		html = { prettier },
		css = { prettier },
		json = { prettier },
		yaml = { prettier },
		javascript = { prettier },
		javascriptreact = { prettier },
		typescript = { prettier },
		typescriptreact = { prettier },
		lua = {
			function()
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.cmd("autocmd BufWritePost * FormatWrite")
