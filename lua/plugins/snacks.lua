return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      sources = {
        buffers = {
          current = false,
          sort_lastused = true,
          layout = {
            preview = false,
          },
        },
      },
    },
  },
  keys = {
    { "<leader>sg", false },
    { "<leader>sc", false },
  },
}
