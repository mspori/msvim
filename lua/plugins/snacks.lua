return {
  "folke/snacks.nvim",
  dependencies = {
    "echasnovski/mini.icons",
  },
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        header = [[
                                                                    
    ███╗   ███╗███████╗██╗   ██╗██╗███╗   ███╗
    ████╗ ████║██╔════╝██║   ██║██║████╗ ████║
    ██╔████╔██║███████╗██║   ██║██║██╔████╔██║
    ██║╚██╔╝██║╚════██║╚██╗ ██╔╝██║██║╚██╔╝██║
    ██║ ╚═╝ ██║███████║ ╚████╔╝ ██║██║ ╚═╝ ██║
    ╚═╝     ╚═╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

        ]],
      },
    },
  },
  keys = {
    { "<leader>gg",       function() Snacks.lazygit() end,            desc = "Lazygit" },
  }
}
