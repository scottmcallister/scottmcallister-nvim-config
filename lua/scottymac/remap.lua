vim.g.mapleader = " "
vim.keymap.set("n", '<leader>e', vim.cmd.NvimTreeFocus)

-- Copilot stuff
vim.keymap.set("n", '<leader>cc', vim.cmd.CopilotChat)
vim.keymap.set("v", '<leader>cc', vim.cmd.CopilotChat)
local copilot_on = true
vim.api.nvim_create_user_command("CopilotToggle", function()
	if copilot_on then
		vim.cmd("Copilot disable")
		print("Copilot OFF")
	else
		vim.cmd("Copilot enable")
		print("Copilot ON")
	end
	copilot_on = not copilot_on
end, { nargs = 0 })
vim.keymap.set("n", "<leader>ct", ":CopilotToggle<CR>", { noremap = true, silent = true })

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
