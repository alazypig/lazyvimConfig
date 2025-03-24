-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_prettier_needs_config = true

local opt = vim.opt

opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.colorcolumn = "80"
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 0
opt.autoread = true
opt.updatetime = 200
opt.guifont = "Maple Mono Normal NF CN"
