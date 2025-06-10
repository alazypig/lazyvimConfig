return {
  {
    "Mofiqul/dracula.nvim",
    opts = {
      transparent_bg = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  }, -- 引入 Dracula 主题

  {
    "LazyVim/LazyVim",
    opts = {
      vscode = true, -- 启用 VSCode 主题支持
      colorscheme = "dracula", -- 设置默认主题为 Dracula
    },
  },
}
