return {
  "dmtrKovalenko/fff.nvim",
  build = function()
    require("fff.download").download_or_build_binary()
  end,
  opts = { -- (optional)
    debug = {
      enabled = true, -- we expect your collaboration at least during the beta
      show_scores = true, -- to help us optimize the scoring system, feel free to share your scores!
    },
    keymaps = {
      move_up = { "<Up>", "<C-p>", "<C-k>" },
      move_down = { "<Down>", "<C-n>", "<C-j>" },
    },
  },
  lazy = false,
  keys = {
    {
      "<leader>fF",
      function()
        require("fff").find_in_git_root()
      end,
      desc = "FFFind files (git root)",
    },
    {
      "<leader>ff",
      function()
        require("fff").find_files_in_dir(vim.fn.getcwd())
      end,
      desc = "FFFind files (cwd)",
    },
    {
      "<leader>f.",
      function()
        require("fff").find_files_in_dir(vim.fn.expand("%:p:h"))
      end,
      desc = "FFFind files (current dir)",
    },
  },
}
