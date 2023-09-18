local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end 

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return 
end

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next, 
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

-- telescope.load_extension("fzf")
