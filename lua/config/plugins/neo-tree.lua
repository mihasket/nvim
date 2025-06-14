return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
      window = {
        width = 35,
      },

      vim.keymap.set('n', '<leader>tn', function()
        require('neo-tree.command').execute { toggle = true }
      end, { desc = '[T]oggle [N]eo-tree' })
    }
  end,
}
