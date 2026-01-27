return {
  {
    "RRethy/vim-illuminate",
    opts = {
      providers = {
        "lsp",
        "treesitter",
      },
      filetype_overrides = {
        gleam = {
          providers = { "lsp", "treesitter", "regex" },
        },
      },
    },
  },
}
