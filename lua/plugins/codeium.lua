return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		vim.g.codeium_enabled = false
		vim.g.codeium_no_map_tab = true
		-- Change '<C-g>' here to any keycode you like.
		vim.keymap.set("i", "<C-g>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
	end,
}
