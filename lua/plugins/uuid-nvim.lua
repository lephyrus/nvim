return {
  "TrevorS/uuid-nvim",
  lazy = true,
  keys = {
    {
      "<C-4>",
      function()
        require("uuid-nvim").insert_v4({})
      end,
      mode = { "i" },
      desc = "Insert UUIDv4",
    },
  },
  opts = {
    insert = "before",
  },
}
