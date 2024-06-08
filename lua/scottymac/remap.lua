vim.g.mapleader = " "
vim.keymap.set("n", '<leader>e', vim.cmd.NvimTreeFocus)
vim.keymap.set("n", '<leader>cc', vim.cmd.CopilotChat)
vim.keymap.set("n", '<leader>cs', function()
 ColorMyPencils()
end)

