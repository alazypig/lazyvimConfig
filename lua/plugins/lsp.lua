return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,      -- 禁用自动格式化
      servers = {
        pyright = {},         -- Python LSP 服务器配置
      },
      inlay_hints = { enabled = false },  -- 禁用内联提示
    },
  },
}
