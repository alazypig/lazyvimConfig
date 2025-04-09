local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- 如果没有安装 lazy.nvim，则自动安装
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- LazyVim 核心插件
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    
    -- 导入额外功能模块
    { import = "lazyvim.plugins.extras.formatting.prettier" }, -- Prettier 格式化支持
    { import = "lazyvim.plugins.extras.lang.typescript" },     -- TypeScript 支持
    { import = "lazyvim.plugins.extras.lang.json" },          -- JSON 支持
    { import = "lazyvim.plugins.extras.lang.markdown" },       -- Markdown 支持
    { import = "lazyvim.plugins.extras.lang.toml" },          -- TOML 支持
    { import = "lazyvim.plugins.extras.lang.tailwind" },      -- Tailwind CSS 支持
    { import = "lazyvim.plugins.extras.lang.vue" },           -- Vue.js 支持
    { import = "lazyvim.plugins.extras.lang.yaml" },          -- YAML 支持
    { import = "lazyvim.plugins.extras.coding.mini-comment" }, -- 注释增强
    { import = "lazyvim.plugins.extras.ui.mini-starter" },    -- 启动页面
    { import = "plugins" },                                    -- 自定义插件配置
  },
  defaults = {
    lazy = false,    -- 默认不延迟加载自定义插件
    version = false, -- 使用最新的 git commit
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- 自动检查插件更新
})
