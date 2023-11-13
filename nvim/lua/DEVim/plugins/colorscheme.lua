-- This is for the catppuccin mocha neovim theme
return {
	"catppuccin/nvim", 
	priority = 1000,
	config = function()
		-- loading colorscheme
		vim.cmd([[colorscheme catppuccin-mocha]])
	end,
}
