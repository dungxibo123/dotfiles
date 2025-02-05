-- set runtimepath+=~/.config/nvim/
-- set nu
-- set relativenumber
-- set showcmd
-- set showmatch
-- set encoding=utf-8
-- set hlsearch
-- set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
-- set inde
-- set paste
--
--
-- require('plugins/coc')


vim.opt.nu = true
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.smarttab = true
vim.opt.hlsearch = true  -- highlight the search?

vim.opt.tabstop=2
vim.opt.softtabstop=0
vim.opt.expandtab = true
vim.opt.shiftwidth=2

vim.opt.incsearch=true
vim.opt.wrap=true
vim.opt.ignorecase=false

vim.opt.cursorline=true
vim.opt.cursorcolumn=true
vim.opt.relativenumber=true


vim.opt.backup=false -- for coc
vim.opt.writebackup=false --  coc? # need to revise

vim.opt.cmdheight=2
vim.opt.updatetime=100

vim.opt.encoding='UTF-8'
vim.opt.termguicolors = true
-- Global variables
--
--
--
--

