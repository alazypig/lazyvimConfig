return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      -- 只在非 VSCode 环境下设置 flutter-tools
      if not vim.g.vscode then
        require("flutter-tools").setup({
          lsp = {
            color = {
              enabled = true,
              background = true,
            },
          },
        })
      end
    end,
    -- 只在非 VSCode 环境下加载插件
    cond = not vim.g.vscode
  },
}
