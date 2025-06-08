vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

require('options')

require('keymaps')

require('config.lazy')

-- Global autocmd to close Neo-tree before quitting
vim.api.nvim_create_autocmd("QuitPre", {
  callback = function()
    pcall(function()
      require("neo-tree.command").execute({ action = "close" })
    end)
  end,
})
