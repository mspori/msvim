return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      show_close_icon = false,
      show_buffer_close_icons = false,
      always_show_bufferline = false,
      close_command = function(n) require("snacks").bufdelete(n) end,
      right_mouse_command = function(n) require("snacks").bufdelete(n) end,
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          text_align = "left",
        }
      },
    }
  }
}
