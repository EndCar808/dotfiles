-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Override saving in INSERT mode - leaves you in INSERT mode
vim.keymap.set("i", "<C-s>", "<C-o>:w<CR>", { desc = "Save File (stay in insert)" })