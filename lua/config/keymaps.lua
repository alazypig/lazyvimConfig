-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>")
keymap.set("n", "zz", function()
  if not vim.g.vscode then
    local line = vim.fn.line(".")
    local foldclosed = vim.fn.foldclosed(line)

    if foldclosed == -1 then
      vim.cmd("normal! zc")
    else
      vim.cmd("normal! zo")
    end
  end
end, { desc = "Toggle fold under cursor" })

-- use fitten code
if not vim.g.vscode then
  keymap.set("i", "jj", function()
    require("fittencode").accept_all_suggestions()
  end)
end
