return {
  "folke/snacks.nvim",
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
