-- importing the colorscheme, options, and keymaps files
require("samarth.plugins-setup")
require("samarth.core.options")
require("samarth.core.keymaps")
require("samarth.core.colorscheme")
require("samarth.plugins.lualine")
require("samarth.plugins.nvim-tree")
require("samarth.plugins.nvim-cmp")
require("samarth.plugins.lsp.mason")
require("samarth.plugins.lsp.lspconfig")
require'lspconfig'.pyright.setup{}
require("samarth.plugins.treesitter")
require("samarth.plugins.telescope")
vim.cmd("silent !cat " .. "~/lucis.txt")
