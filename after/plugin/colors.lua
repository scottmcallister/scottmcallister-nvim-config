function ReadFromFile()
  local home = os.getenv("HOME")
  local file = io.open(home .. "/.config/nvim/color.txt", "r")
  if file == nil then
    return nil, "Failed to open file for reading"
  end
  local content = file:read("*a")
  file:close()
  return content
end

function WriteToFile(color)
  local home = os.getenv("HOME")
  local file = io.open(home .. "/.config/nvim/color.txt", "w")
  if file == nil then
    return nil, "Failed to open file for writing"
  end
  file:write(color)
  file:close()
  return true
end

local default = ReadFromFile() or "rose-pine"

local popup = require('plenary.popup')

local Win_id

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


function ShowMenu(opts, cb)
  local height = 20
  local width = 30
  local borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' }

  Win_id = popup.create(opts, {
    title = "My Pencils",
    highlight = "MyProjectWindow",
    line = math.floor(((vim.o.lines - height) / 2) - 1),
    col = math.floor((vim.o.columns - width) / 2),
    minwidth = width,
    minheight = height,
    borderchars = borderchars,
    callback = cb,
  })
  local bufnr = vim.api.nvim_win_get_buf(Win_id)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>lua CloseMenu()<CR>", { silent=false })
end

function CloseMenu()
  vim.api.nvim_win_close(Win_id, true)
end

function ColorMyPencils(param)
  options = {
    "onedark",
    "nord",
    "tokyonight",
    "everforest",
    "rose-pine",
    "kanagawa-lotus",
    "kanagawa-wave",
    "kanagawa-dragon",
    "catppuccin",
    "catppuccin-macchiato",
    "catppuccin-frappe",
    "catppuccin-mocha",
    "sonokai",
  }

  if param then
    color = param
	  vim.cmd.colorscheme(color)
  else
    ShowMenu(options, function(_, sel)
      color = sel
	    vim.cmd.colorscheme(color)
      WriteToFile(color)
    end)
  end
end

ColorMyPencils(default)
