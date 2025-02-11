return {
  "ibhagwan/fzf-lua",
  -- keys = {
  --   {
  --     "<leader>fo",
  --     function()
  --       require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") })
  --     end,
  --     desc = "Find File (Current Dir)",
  --   },
  -- },
  opts = {
    fzf_opts = {
      ["--history"] = vim.fn.stdpath("data") .. "/fzf-lua-history",
    },
    grep = {
      rg_glob = true,
    },
  },
}
