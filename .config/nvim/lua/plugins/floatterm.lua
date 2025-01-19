return  {
  {'voldikss/vim-floaterm',
    config=function()
      vim.g['floaterm_opener'] = 'split'
      vim.g['floaterm_keymap_toggle']='<F10>'
      vim.g['floaterm_keymap_new']='<F7>'
      vim.g['floaterm_keymap_next']='<F8>'
      vim.g['floaterm_keymap_prv']='<F9>'
      vim.g['floaterm_width'] = 0.8
      vim.g['floaterm_height'] = 0.8
    end
  }
}
