vim.g.mapleader = " "

vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear Search Highlights" })
vim.keymap.set("n", "<leader>T", ":tabp<CR>", { desc = "Goto Previous Tab" })
vim.keymap.set("n", "<leader>t", ":tabn<CR>", { desc = "Goto Next Tab" })
