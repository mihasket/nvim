return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "ivy"
          },
          help_tags = {
            theme = "ivy"
          }
        },
        extensions = {
          fzf = {}
        }
      }

      require('telescope').load_extension('fzf')

      vim.keymap.set("n", "<space>sh", require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set("n", "<space>sf", require('telescope.builtin').find_files, { desc = '[S]earch [F]ile' })
      vim.keymap.set("n", "<space>en", function()
        require('telescope.builtin').find_files {
          cwd = vim.fn.stdpath("config")
        }
      end, { desc = '[E]dit [N]eovim config' })

      require "config.telescope.multigrep".setup()
    end
  }
}
