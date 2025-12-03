-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here


-- Tell neovim to use the system clipboard for all yank, delete, change and put operations
vim.opt.clipboard = "unnamedplus"


-- Which Python LSP to use (matches what you installed via Mason)
vim.g.lazyvim_python_lsp = "pyright"   -- or "basedpyright"

-- Which Ruff flavour to use
vim.g.lazyvim_python_ruff = "ruff"     -- or "ruff_lsp"