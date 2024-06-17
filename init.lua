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
    dotfiles = true,
  },
})

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
local shrek = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠤⠖⢒⠂⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⢀⣀⠀⠀⠀⠀⠀⢠⠖⠁⠀⠀⠀⠀⠀⠀⠢⣥⣢⠀⠀⠀⠀⠀⣠⣤⠀",
"⢀⣟⣿⣦⠀⠀⠀⣰⡿⠿⠷⠶⣄⠀⠀⢠⠾⠟⠛⠛⢷⡀⠀⢀⡼⣿⣇⡇",
"⠈⠛⠛⠿⢕⡂⢴⠁⠀⠀⠀⢀⠈⠆⠠⣮⣴⢤⡀⣀⣸⣗⣶⡧⠒⠉⠉⠁",
"⠀⠀⠀⠀⠀⢹⠀⠀⠴⣺⣿⣿⠇⠀⠀⠛⡿⣽⣿⣽⠿⠛⢻⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⡌⠀⠀⠈⠉⢩⠀⠀⠀⠀⠀⣸⣒⣄⠀⠀⠀⠀⠇⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⡇⠀⢀⡴⠖⠉⠛⠓⠲⠶⠾⠿⠿⠿⢏⡳⡀⠄⣾⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠃⠀⠞⠀⣀⣀⣀⣀⣀⣀⣀⣤⣤⣶⣿⣇⢧⠀⣿⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⡄⠀⠀⠀⠈⠫⢽⣽⣉⣹⣁⣧⣿⠟⣱⣿⣾⢀⣿⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⢃⠀⠀⠀⠀⠀⠀⠉⠙⠩⠤⠭⣶⣋⡟⢸⢁⣿⠏⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠱⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠝⡇⣘⡾⠋⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠈⠢⣀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣷⠋⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠠⠤⠤⠤⠤⠾⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀",
"                            ",
"         Vim is Love        ",
"                            ",
"         Vim is Life        ",
}

local mtg_blue = {
"        ,+     ",
"       ,%+     ",
"       *@;     ",
"      +#@+     ",
"     ;###?     ",
"    :S###S,    ",
"    %@###@*    ",
"   +#######:   ",
"  ,S######@%   ",
"  :#######%S;  ",
"  +@######+;?  ",
"  *@######;:S, ",
"  *@######SSS, ",
"  ;########@%  ",
"   %@#######:  ",
"   ,%#@#@#S;   ",
"     ;*?*;,    ",
"               ",
}

local mtg_skull = {
"                      ",
"       ,;+***;,       ",
"      +S#@@@@#S+      ",
"    ,*?@#######?;     ",
"   ,%@*S######S##+    ",
"   *@#SS##########:   ",
"  ,S##@@#########@?   ",
"  ;##S?%######S*?##,  ",
"  *@%,  ;####?,  *@;  ",
"  *@;    %##S,   :@+  ",
"  +@*:,,:S##S,,,:*@;  ",
"  ,S@##S##%%##SS#@S,  ",
"   ,+?S##S?*S###%?;   ",
"      ,S@?+:S#%:      ",
"      ,S#S?*#@?       ",
"      ,S###@##%       ",
"      ,#S#S#S#S       ",
"      ,#?%S?+SS,      ",
"      ,*+:+  ??       ",
}

dashboard.section.header.val = mtg_blue

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "LDR ff", "  > Find file", "<leader>ff"),
    dashboard.button( "LDR fg", "  > Fuzzy grep" , "<leader>fg"),
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
               
