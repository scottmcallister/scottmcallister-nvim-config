require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})


function ColorMyPencils()
  options = {"rose-pine", "kanagawa-wave", "kanagawa-lotus", "kanagawa-dragon"}

  choice = tonumber(vim.fn.input("Enter a number between 1 and " .. #options .. ":"))

  if choice < 1 or choice > #options then
      print("Invalid choice. Please select a number between 1 and " .. #options)
  else
      color = options[choice]
  end
	-- color = color or "rose-pine"
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

end
