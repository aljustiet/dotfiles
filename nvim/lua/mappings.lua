require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map("n", "a", "<Down>")
-- map("n", "e", "<Up")
-- map("n", "i", "<Right")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
