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
    "python",
    "lua"
  },
  auto_install = true,
})
