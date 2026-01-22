return {
  "stevearc/overseer.nvim",
  ---@module 'overseer'
  ---@type overseer.SetupOpts
  opts = {
    task_list = {
      keymaps = {
        ["<C-k>"] = false,
        ["<C-j>"] = false,
        ["<C-u>"] = "keymap.scroll_output_up",
        ["<C-d>"] = "keymap.scroll_output_down",
      },
    },
  },
}
