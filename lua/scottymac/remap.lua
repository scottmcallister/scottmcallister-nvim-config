vim.g.mapleader = " "
vim.keymap.set("n", '<leader>e', vim.cmd.NvimTreeFocus)


vim.keymap.set("n", '<leader>cs', function()
 ColorMyPencils()
end)

-- shift highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep curor in middle when jumping 
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without losing the buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank to system clipboard
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- swap between windows
vim.api.nvim_set_keymap("n", "<leader><TAB>", "<C-w>w", {})
vim.api.nvim_set_keymap("n", "<leader><S-TAB>", "<C-w>W", {})

-- packer sync
vim.keymap.set("n", "<leader>ps", vim.cmd.PackerSync)
