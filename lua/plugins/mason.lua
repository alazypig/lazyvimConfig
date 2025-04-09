return {
  {
    "williamboman/mason.nvim",
    opts = {
      -- 确保安装以下语言服务器和代码检查工具
      ensure_installed = {
        -- 代码格式化工具
        "stylua",     -- Lua 代码格式化
        "prettier",   -- 通用代码格式化（支持 JS/TS/CSS/HTML 等）
        "shfmt",      -- Shell 脚本格式化
        
        -- 代码检查工具
        "shellcheck", -- Shell 脚本检查
        "flake8",     -- Python 代码检查
      },
    },
  },
}
