return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    sources = {
      default = function()
        return { "snippets", "lsp", "path" }
      end,
    },
    keymap = {
      ["<C-M-Space>"] = {
        function(cmp)
          cmp.show({ providers = { "copilot" } })
        end,
      },
    },
  },
}
