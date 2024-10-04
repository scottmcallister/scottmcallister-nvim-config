local function project_root()
  local ok, nvim_lsp = pcall(require, 'nvim_lsp')
  if not ok then
    return nil
  end
  local root_dir = nvim_lsp.util.root_pattern('.git')(vim.fn.expand('%:p'))
  return root_dir
end
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {
  cwd = project_root()
})
vim.keymap.set('n', '<leader>g', function()
	builtin.grep_string({ 
    search = vim.fn.input("Grep > "),
    cwd = project_root()
  });
end)

