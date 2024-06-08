# scottmcallister-nvim-config

This is my personal neovim configuration.

## commands

- `<leader>e` - Open file explorer
- `<leader>ff` - Fuzzy find files
- `<leader>fg` - Fuzzy grep (text search)
- `<leader>cc` - Copilot chat
- `<leader>ct` - Toggle Copilot autocomplete 
- `<leader>h` - Harpoon (bookmarking)
- `<leader>a` - Add to Harpoon
- `<leader>cs` - Change color scheme
- `<leader><TAB>` - Toggle between last two buffers

## installation

1. Clone this repository to `~/.config/nvim`
2. Install packer.nvim if not installed already by running the following command:
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```
3. Open neovim and run `:PackerInstall` to install plugins
