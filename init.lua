-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("flutter-tools").setup({
  lsp = {
    color = {
      enabled = true,
      background = true,
    },
  },
})
