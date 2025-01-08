return {
  "ibhagwan/fzf-lua",
  keys = {
    {
      "<leader>fo",
      function()
        require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") })
      end,
      desc = "Find File (Current Dir)",
    },
  },
  opts = {
    grep = {
      rg_glob = true,
    },
  },
}
