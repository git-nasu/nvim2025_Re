-- lazy.nvim
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      layout = {
        cycle = true,
        preset = "vertical",
        layout = {
          backdrop = false,
          width = 110,
          min_width = 80,
          height = 0.9,
          min_height = 30,
          box = "vertical",
          border = "rounded",
          title = "{title} {live} {flags}",
          title_pos = "center",
        },
      },
      sources = {
        explorer = {
          layout = {
            layout = {
              width = 35,
            },
          },
          hidden = true,
          auto_close = true,
        },
      },
    },
  },
}
