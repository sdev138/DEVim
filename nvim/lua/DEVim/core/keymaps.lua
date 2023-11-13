vim.g.mapleader = " " -- setting the leader key

local keymap = vim.keymap -- setting local variable keymap

-- general keymaps
-- keymap.set("i", "q", "<Esc>") -- changing the esc to q to escape insert mode
keymap.set("n", "ge", "<S-g>") -- going to the last line of the file 
keymap.set("n", "gh", "^") -- going to the beginning of the line 
keymap.set("n", "gl", "$") 

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"-x')

keymap.set("n", "<leader>-", "<C-x>") 
keymap.set("n", "<leader>+", "<C-a>") 

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tab mapping
keymap.set("n", "go", ":tabnew<CR>") -- open new tab
keymap.set("n", "gx", ":tabclose<CR>") -- close current tab
keymap.set("n", "gn", ":tabn<CR>") -- go to the next tab
keymap.set("n", "gp", ":tabp<CR>") -- go to the next tab

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") 

keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")

-- telescope keymap bindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
