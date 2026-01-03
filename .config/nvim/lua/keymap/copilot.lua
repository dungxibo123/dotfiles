vim.keymap.set('n', "<C-c>c", ":set splitright <bar> :CopilotChatOpen <CR> <bar> :set nosplitright<CR>", {noremap=true})
vim.keymap.set('n', "<C-c>l", ":CopilotChatClose<CR>", {noremap=true})
vim.keymap.set('n', "<C-c>q", ":CopilotChat ", {noremap=true})
vim.keymap.set('n', "<C-c>r", ":CopilotChatReset<CR>", {noremap=true})
