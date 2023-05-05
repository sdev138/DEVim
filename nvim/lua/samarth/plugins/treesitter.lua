local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return 
end 

treesitter.setup({
  highlight = {
    enable = true
  }, 
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    "c",
    "rust",
    "cpp",
    "lua",
    "luap",
  },
  auto_install = true,
})
