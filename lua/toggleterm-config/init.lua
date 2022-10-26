require("toggleterm").setup({
	open_mapping = [[<c-\>]],
	shade_filetypes = {},
	shade_termainals = true,
	shading_factor = 1,
	start_in_insert = true,
	persist_size = true,
	direction = "horizontal",
	size = 20 | function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
})
