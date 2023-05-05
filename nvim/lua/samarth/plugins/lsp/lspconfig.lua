local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return 
end 

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return 
end 

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
  return 
end

require'lspconfig'.clangd.setup{}
require'lspconfig'.cmake.setup{}
require'lspconfig'.codeqlls.setup{}

-- setting lsp for c++ 


local keymap = vim.keymap

-- used to enable autocompletion
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  }
})
