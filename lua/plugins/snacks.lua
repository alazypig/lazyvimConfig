return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = true,
    --@type snacks.Config
    opts = {
      bigfire = { enable = true },
      scope = { enable = false },
      picker = { enable = false },
    },
  },
}
