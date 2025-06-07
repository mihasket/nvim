require("config.lazy")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", "<cmd>:.lua<CR>")
vim.keymap.set("n", "<space>tn", "<cmd>:Explore<CR>")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when (yanking) copying text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
