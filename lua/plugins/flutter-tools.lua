return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false, -- 确保插件不会被懒加载
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- 可选，提供更好的 UI 支持
    },
    config = function()
      require("flutter-tools").setup({
        ui = {
          border = "rounded", -- 边框样式
        },
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        debugger = {
          enabled = false, -- 启用调试支持
          run_via_dap = false, -- 使用 nvim-dap
        },
        flutter_lookup_cmd = "which flutter", -- 默认 Flutter 路径
        fvm = true, -- 使用 Flutter Version Manager (如果需要)
        widget_guides = {
          enabled = false, -- 启用 widget 指南
        },
        closing_tags = {
          highlight = "Comment", -- 设置关闭标签的高亮
          prefix = "//", -- 自定义关闭标签前缀
          enabled = true,
        },
        lsp = {
          color = {
            enabled = true, -- 启用 LSP 诊断着色
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
          },
        },
      })
    end,
  },
}
