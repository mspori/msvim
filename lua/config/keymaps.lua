-- Buffer management
vim.keymap.set('n', '<leader>co', '<cmd>BufferLineCloseOthers<CR>', { noremap = true, silent = true })
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
end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ml', '<cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>mr', '<cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>mb', '<cmd>b#<CR>', { noremap = true, silent = true })

-- LSP keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

-- Telescope keymaps
vim.keymap.set("n", "<leader><space>", function() require("telescope.builtin").find_files() end, {})
vim.keymap.set("n", "<leader>sg", function() require("telescope.builtin").live_grep() end, {})

-- File explorer
vim.keymap.set('n', '<leader>e', ':Neotree filesystem toggle reveal left<CR>', {})