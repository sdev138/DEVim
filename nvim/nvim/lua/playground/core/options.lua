local opt = vim.opt -- saving the local variable opt  for the global variable opt in vim for consisness
local cmd = vim.cmd

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false 

-- search settings
opt.ignorecase = true -- ignoring the case when searching with a lowercase word
opt.smartcase = true -- considering the upper-case word when searching with a uppcase (ignoring lowercase)

-- cursor line
opt.cursorline = false
local cursorCall, _ = pcall(cmd, "highlight CursorLine cterm=underline")
if not cursorCall then
  print("Cursorline cannot be underlined or highlighted")
end

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- opt.iskeyword:append("-") // adding the '-' to the string when searching for words (this is optional and completely based on personal preference)
