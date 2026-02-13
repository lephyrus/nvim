return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      ejs = { "prettierd", "prettier", stop_after_first = true },
    },
    formatters = {
      sqlfluff = {
        args = { "format", "-" },
      },
    },
  },
}
