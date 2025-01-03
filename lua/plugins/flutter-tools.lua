return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false, -- 确保插件不会被懒加载
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- 可选，提供更好的 UI 支持
    },
    config = true,
  },
}
