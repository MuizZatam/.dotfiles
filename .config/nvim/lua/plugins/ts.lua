require'nvim-treesitter.configs'.setup {

	ensure_installed = { "c", "lua", "vim", "python", "elixir", "javascript" },

	auto_install = true,

	highlight = {
	
		enable = true
	},

	indent = {
		
		enable = false
	}
}
