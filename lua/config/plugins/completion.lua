return {
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',

    opts = {
      keymap = {
        preset = 'default',
        ['<Tab>'] = {
          function(cmp)
            if cmp.is_visible() then
              return cmp.select_and_accept()
            else
              return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Tab>', true, false, true), 'n', false)
            end
          end
        },
      },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },

      signature = { enabled = true }
    },
  }
}
