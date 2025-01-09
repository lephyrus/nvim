-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "gY", '<cmd>:let @+ = expand("%")<cr>', { desc = "Yank relative buffer path" })

map("n", "<leader>fd", function()
  Snacks.terminal("lazydocker", { interactive = true })
end, { desc = "LazyDocker" })
