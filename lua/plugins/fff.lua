return {
  "dmtrKovalenko/fff.nvim",
  build = function()
    require("fff.download").download_or_build_binary()
  end,
  opts = { -- (optional)
    -- debug = {
    --   enabled = true, -- we expect your collaboration at least during the beta
    --   show_scores = true, -- to help us optimize the scoring system, feel free to share your scores!
    -- },
    keymaps = {
      move_up = { "<Up>", "<C-p>", "<C-k>" },
      move_down = { "<Down>", "<C-n>", "<C-j>" },
      cycle_grep_modes = "<C-g>",
    },
  },
  lazy = false,
  keys = {
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
    {
      "<leader>sg",
      function()
        require("fff").live_grep({ cwd = vim.fn.getcwd() })
      end,
      desc = "LiFFFe grep",
    },
    {
      "<leader>sz",
      function()
        require("fff").live_grep({
          cwd = vim.fn.getcwd(),
          grep = {
            modes = { "fuzzy", "plain" },
          },
        })
      end,
      desc = "Live fffuzy grep",
    },
    {
      "<leader>sc",
      function()
        require("fff").live_grep({ cwd = vim.fn.getcwd(), query = vim.fn.expand("<cword>") })
      end,
      desc = "Search current word",
    },
  },
}
