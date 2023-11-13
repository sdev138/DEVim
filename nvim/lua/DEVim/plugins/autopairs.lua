return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {
        check_ts = true,
        ts_config = {
            lua = {'string'},-- it will not add a pair on that treesitter node
            javascript = {'template_string'},
            java = false,-- don't check treesitter on java
        },
        disable_filetype = { "TelescopePrompt", "spectre_panel" }, 
        fast_wrap = {
          map = '<M-e>',
          chars = { '{', '[', '(', '"', "'" },
          pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
          offset = 0, -- offset from pattern match 
          end_key = '$',
          keys = 'qwertyuiopzxcvbnmasdfghjkl',
          check_comma = true,
          highlight = 'Search',
          highlight_grey= { 'Comment', 'LineNr' }
        },
    } -- this is equalent to setup({}) function
}
