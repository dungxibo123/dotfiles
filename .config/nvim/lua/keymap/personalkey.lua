

local function change_direction(direction)
  local win = vim.api.nvim_get_current_win()

  -- Vertical position
  local function vertical_position()
    local row, _ = unpack(vim.api.nvim_win_get_position(win))
    local height = vim.api.nvim_win_get_height(win)

    local min_row = math.huge
    local max_row = -math.huge

    for _, w in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
      local r, _ = unpack(vim.api.nvim_win_get_position(w))
      local h = vim.api.nvim_win_get_height(w)
      min_row = math.min(min_row, r)
      max_row = math.max(max_row, r + h)
    end

    if row == min_row then
      return "top"
    elseif row + height == max_row then
      return "bottom"
    else
      return "middle"
    end
  end

  -- Horizontal position
  local function horizontal_position()
    local _, col = unpack(vim.api.nvim_win_get_position(win))
    local width = vim.api.nvim_win_get_width(win)

    local min_col = math.huge
    local max_col = -math.huge

    for _, w in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
      local _, c = unpack(vim.api.nvim_win_get_position(w))
      local w_width = vim.api.nvim_win_get_width(w)
      min_col = math.min(min_col, c)
      max_col = math.max(max_col, c + w_width)
    end

    if col == min_col then
      return "left"
    elseif col + width == max_col then
      return "right"
    else
      return "middle"
    end
  end

  if direction == "top" then
    if vertical_position() == "bottom" then
      return ":resize +2<CR>"
    end
    if vertical_position() == "top" then
      return ":resize -2<CR>"
    end

  elseif direction == "bottom" then
    if vertical_position() == "top" then
      return ":resize +2<CR>"
    end
    if vertical_position() == "bottom" then
      return ":resize -2<CR>"
    end

  elseif direction == "left" then
    if horizontal_position() == "right" then
      return ":vertical resize +2<CR>"
    end
    if horizontal_position() == "left" then
      return ":vertical resize -2<CR>"
    end

  elseif direction == "right" then
    if horizontal_position() == "left" then
      return ":vertical resize +2<CR>"
    end
    if horizontal_position() == "right" then
      return ":vertical resize -2<CR>"
    end
  end

  return nil
end





-- python #
-- tex %
-- c+, c, js //



vim.keymap.set('n','<C-h>', ':wincmd h<CR>', {noremap=true})
vim.keymap.set('n','<C-l>', ':wincmd l<CR>', {noremap=true})

vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')

vim.keymap.set('n', 'e', 'A') -- From normal mode, go to  end of the line and insert mode
vim.keymap.set('n', 's', 'I') -- From normal mode, go to start of the line and insert mode<D-F10><D-F10><D-F10><D-F10><D-F10><F34><F34><F34><F34><F34>≤ åååååååå∆∆∆∆˚˚˚˚˚˚
vim.keymap.set('v', 'e', 'g_') -- From visual mode 
vim.keymap.set('v', 's', '[[') -- From visual mode 
vim.keymap.set('n', '<C-a>', 'ggVG') -- Choose all content



vim.keymap.set('n', '<C-S-h>',function()
  return change_direction("left")
end, {silent=false,expr=true})
vim.keymap.set('n', '<C-S-j>',function()
  return change_direction("bottom")
end, {silent=false,expr=true})
vim.keymap.set('n', '<C-S-k>',function()
  return change_direction("top")
end, {silent=false,expr=true})
vim.keymap.set('n', '<C-S-l>',function()
  return change_direction("right")
end, {silent=false,expr=true})

vim.keymap.set('t', '<C-S-h>', function()
  local cmd = change_direction("left")
  return cmd and "<C-\\><C-n>" .. cmd or ""
end, { expr = true, silent = true })

vim.keymap.set('t', '<C-S-j>', function()
  local cmd = change_direction("bottom")
  return cmd and "<C-\\><C-n>" .. cmd or ""
end, { expr = true, silent = true })

vim.keymap.set('t', '<C-S-k>', function()
  local cmd = change_direction("top")
  return cmd and "<C-\\><C-n>" .. cmd or ""
end, { expr = true, silent = true })

vim.keymap.set('t', '<C-S-l>', function()
  local cmd = change_direction("right")
  return cmd and "<C-\\><C-n>" .. cmd or ""
end, { expr = true, silent = true })
