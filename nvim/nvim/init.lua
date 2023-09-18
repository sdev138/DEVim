-- importing the colorscheme, options, and keymaps files
require("playground.plugins-setup")
require("playground.core.options")
require("playground.core.keymaps")
require("playground.core.colorscheme")
require("playground.plugins.lualine")
require("playground.plugins.nvim-tree")
require("playground.plugins.nvim-cmp")
require("playground.plugins.lsp.mason")
require("playground.plugins.lsp.lspconfig") -- language server config 
require("playground.plugins.treesitter")
require("playground.plugins.telescope")
require("playground.plugins.autopairs") -- for autopairs 
require("playground.plugins.functions") -- functions to display images to the dashboard
require("playground.plugins.dashboard") -- for dashboard (login screen)
require("playground.plugins.hologram") -- for hologram usage
require("playground.plugins.indent-blankline") -- for line indentations
require("playground.plugins.toggleterm") -- for toggleterm
