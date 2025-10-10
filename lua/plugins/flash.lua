return {
  "folke/flash.nvim",
  opts = {
    modes = {
      char = {
        enabled = true,
        keys = { "s", "S" }, -- flash.nvim が使うキー
      },
    },
  },
  keys = {
    -- s で Flash を使う（通常の設定）
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "S",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },

    -- ds, cs などは上書きしない（Surround 用に確保）
  },
}
