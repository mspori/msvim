-- Buffer management
vim.keymap.set("n", "<leader>bd", function()
	require("snacks").bufdelete()
end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bo", function()
	require("snacks").bufdelete.other()
end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ba", function()
	require("snacks").bufdelete.all()
end, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ml", "<cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>mr", "<cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>mb", "<cmd>b#<CR>", { noremap = true, silent = true })

-- LSP keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

-- Telescope keymaps
vim.keymap.set("n", "<leader><space>", function()
	require("telescope.builtin").find_files()
end, {})
vim.keymap.set("n", "<leader>sg", function()
	require("telescope.builtin").live_grep()
end, {})

-- File explorer
vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle reveal left<CR>", {})

vim.keymap.set("n", "q", function()
	require("snacks.bufdelete").delete()
end, { desc = "Delete current buffer" })
