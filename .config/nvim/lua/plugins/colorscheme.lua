return {
  {
    'vim-airline/vim-airline',
    lazy=false,
  },
  {
    'nordtheme/vim', lazy=false,
    config = function()
      vim.opt.termguicolors=true
      vim.cmd.colorscheme('nord')
    end
  },
}
