local function get_dir(path)
  local dir
  if vim.fn.isdirectory(path) == 1 then
    dir = vim.fn.fnamemodify(path, ":p")
  elseif vim.fn.filereadable(path) == 1 then
    dir = vim.fn.fnamemodify(path, ":p:h")
  else
    dir = vim.fn.fnamemodify(vim.fn.getcwd(), ":p")
  end

  dir = vim.fn.fnamemodify(dir, ":~")
  dir = vim.fn.escape(dir, ' %#|"')
  return dir
end

local function floaterm_cmd(wintype)
  if vim.fn["floaterm#buflist#curr"]() == -1 then
    local dir = get_dir(vim.fn.expand("%"))
    return string.format(
      ":<C-u>FloatermNew --wintype=%s --autoclose=1 --height=0.3 --cwd=%s<CR>",
      wintype,
      dir
    )
  else
    return ":FloatermToggle<CR>"
  end
end




local opts = { silent = true, expr = true }
vim.keymap.set("n", "<C-i>", function()
  return floaterm_cmd("vsplit")
end, opts)

vim.keymap.set("n", "<C-o>", function()
  return floaterm_cmd("split")
end, opts)

--
vim.keymap.set("t", "<C-p>", [[<C-\><C-n>:<C-u>FloatermToggle<CR>]], { silent = true })
--
--

vim.keymap.set('t','<C-h>', [[<C-\><C-n>:<C-u>wincmd h<CR>]], {silent=true})
vim.keymap.set('t','<C-i>', [[<C-\><C-n>:<C-u>wincmd i<CR>]], {silent=true})
vim.keymap.set('t','<C-j>', [[<C-\><C-n>:<C-u>wincmd j<CR>]], {silent=true})
vim.keymap.set('t','<C-k>', [[<C-\><C-n>:<C-u>wincmd k<CR>]], {silent=true})


