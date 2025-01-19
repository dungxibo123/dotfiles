return {
  -- nord
  {
    'fcancelinha/nordern.nvim',
    lazy=false,
    priority=1001,
    branch='master',
    config = function()
      vim.cmd.colorscheme('nordern')
    end
  },
  {
    'vim-airline/vim-airline',
    lazy=false,
    priority=1001,
  },
  {
    'vim-airline/vim-airline-themes',
    lazy=false,
    priority=1001,
    config = function()
      vim.g['airline_theme'] = 'nord_minimal'
    end
  }
}
