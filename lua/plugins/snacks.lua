return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    --@type snacks.Config
    opts = {
      bigfire = { enable = true },
      scope = { enable = true },
      picker = { enable = true },
      dashboard = { enable = false},
    },
  },
}
