-- Set no highlight search by default
vim.o.hlsearch = false

-- Key mappings
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '.h', ':set hlsearch<CR>', opts)
keymap('n', '.n', ':set nohlsearch<CR>', opts)
keymap('n', '.r', ':source ~/.config/nvim/init.lua<CR>', opts)
keymap('n', '.y', '"+y', opts)
keymap('v', '.y', '"+y', opts)
keymap('n', 'e', 'k', opts)
keymap('n', 'i', 'l', opts)
keymap('n', 'a', 'j', opts)
keymap('n', 't', 'i', opts)
keymap('n', 's', 'a', opts)
keymap('n', 'f', 'd', opts)
keymap('n', 'l', 'e', opts)
keymap('n', 'm', 'x', opts)
keymap('n', 'i', 'l', opts)
keymap('n', 'a', 'j', opts)
keymap('n', 'c', 'm', opts)
keymap('n', ';', ':', opts)
keymap('v', 'm', 'x', opts)
keymap('v', 'i', 'l', opts)
keymap('v', 'a', 'j', opts)
keymap('v', 'e', 'k', opts)

-- Auto commands
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.conf"},
    command = "set filetype=conf"
})

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.yuck", "*.kbd"},
    command = "set filetype=lisp"
})
