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
    {
      "<leader>f.",
      function()
        require("snacks.picker").files({ cwd = vim.fn.expand("%:p:h") })
      end,
      desc = "Find Files (Current Dir)",
    },
  },
}
