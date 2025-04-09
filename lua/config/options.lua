-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 基础编辑器选项配置
vim.g.lazyvim_prettier_needs_config = true
vim.g.autoformat = false  -- 禁用自动格式化

local opt = vim.opt

opt.mouse = "a"                           -- 启用鼠标支持
opt.clipboard = "unnamedplus"             -- 使用系统剪贴板
opt.number = true                         -- 显示行号
opt.relativenumber = true                 -- 显示相对行号
opt.cursorline = true                    -- 高亮当前行
opt.colorcolumn = "80"                   -- 显示 80 列参考线
opt.expandtab = true                     -- 使用空格代替制表符
opt.tabstop = 2                          -- 制表符等于 2 个空格
opt.shiftwidth = 0                       -- 自动缩进使用 tabstop 的值
opt.autoread = true                      -- 自动重新加载文件
opt.updatetime = 200                     -- 更新时间
opt.guifont = "Maple Mono Normal NF CN"  -- 设置 GUI 字体
