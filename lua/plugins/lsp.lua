return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
      servers = {
        pyright = {},
      },
      inlay_hints = { enabled = false },
    },
  },
}
