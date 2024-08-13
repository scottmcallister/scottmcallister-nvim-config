require("scottymac")
require("CopilotChat").setup {
  debug = true,
}

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
local mtg_white = {
"                                                  ",
"               ,:;+*?@@@@@@@?*+:,                 ",
"           ,;*S#@@@@@@@@S**#@@@@@S?+:             ",
"         ;?#@@@@@@@@@#?: +@@@@@@@@@@@S+,          ",
"      ,+S@?@@@@@@@@@?,   *@@@@@@@@@@@@@@?:        ",
"     ;S@@#,%@@@@@@@@+,    ;S@@@@@@###@@@@@?,      ",
"   ,?@@@@* ,%##%%#@@@#,    ,S@@S:'    ..*%##:     ",
"  ,S@@@@@:       ,%@#?      S@@S    ,?#@@@@@@;    ",
" ,%@@@@@@;        ,+*+*****+++;,    ,#@@@@@@@@;   ",
" *@@@@@@@#%S#?, ,+*'         '*;    :@@@@@@@@@#,  ",
",@@@@@@@@@@@@@+,?;             ** ;%@@#%%#@@@@@*  ",
"+@#@@@@@@?;;?*,%:               ?+:S#%    ;S@@@S  ",
"?@S;+%SS;     ;?                :S         ,%@@#, ",
"?@@#;         ;%                :%     ,+**;,*@#, ",
"+@@@@?,   ;%S*,%;               ?;:;;:;S@@@@@S#S  ",
",#@@@@#%?%@@@#;,%*,           :*+,@@@@@@@@@@@@@+  ",
" +@@@@@@@@@@+,   +?*.      .;++:  +%###@@@@@@@S,  ",
"  %@@@@@@@@@:    ,;+*+****+++:       ,,#@@@@@#:   ",
"  ,%@@@@@@#*    :@@@*     :#@#;   ,   ,#@@@@#:    ",
"    *@@%*;,     ;@@@+     :@@@@S%S@S: :@@@@S:     ",
"     :%@@#SS%%SS@@@@@%:    ,?@@@@@@@# *@@#*       ",
"       ;S@@@@@@@@@@@@@@:   ;#@@@@@@@@?##*'        ",
"         :*S@@@@@@@@@@? ,+S@@@@@@@@@#%;'          ",
"            :+%S@@@@@%+S@@@@@@@@#%*;'             ",
"                ':;@@@@@@@@@@@@;:'                ",
}

dashboard.section.header.val = mtg_white

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "LDR f ", "  > Find file", "<leader>f"),
    dashboard.button( "LDR g ", "  > Fuzzy grep" , "<leader>g"),
    dashboard.button( "LDR e ", "  > Directory Tree" , "<leader>e"),
    dashboard.button( "LDR cc", "󰭻  > Copilot Chat" , "<leader>cc"),
    dashboard.button( "LDR cs", "  > Color Scheme" , "<leader>cs"),
    dashboard.button( "LDR q ", "󰈆  > Quit NVIM", "<leader>q"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
