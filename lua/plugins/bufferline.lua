return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        show_close_icon = false,
        show_buffer_close_icons = false,
        always_show_bufferline = false,
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "left",
          }
        },
      }
    })

    local opts = { noremap = true, silent = true }

    vim.keymap.set('n', '<leader>co', '<cmd>BufferLineCloseOthers<CR>', opts)

    vim.keymap.set('n', '<leader>ct', function()
      local buf = vim.api.nvim_get_current_buf()
      if vim.bo[buf].modified then
        vim.ui.input({
          prompt = "Buffer has unsaved changes. Close anyway? (y/N): "
        }, function(input)
          if input and input:lower() == "y" then
            vim.cmd("bdelete!")
          end
        end)
      else
        vim.cmd("bdelete")
      end
    end, opts)

    vim.keymap.set('n', '<leader>ml', '<cmd>BufferLineCyclePrev<CR>', opts)

    vim.keymap.set('n', '<leader>mr', '<cmd>BufferLineCycleNext<CR>', opts)

    vim.keymap.set('n', '<leader>mb', '<cmd>b#<CR>', opts)
  end
}
