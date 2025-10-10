vim.g.mapleader = " "
vim.cmd([[ set tabstop=4 ]])
vim.cmd([[ set softtabstop=4 ]])
vim.cmd([[ set shiftwidth=4 ]])
vim.cmd([[ set expandtab ]])
vim.cmd([[ set number ]])
vim.cmd([[ set autoindent ]])
vim.cmd([[ set smartindent ]])


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>nh", ":noh<CR>")

vim.opt.mouse = ""
vim.cmd([[set splitright]])

vim.o.laststatus = 2
vim.o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
vim.o.scrolloff = 12
vim.o.cursorline = true

vim.opt.clipboard = "unnamedplus"

local folds_augroup = vim.api.nvim_create_augroup("Folds", { clear = true })
vim.api.nvim_create_autocmd("BufWinLeave", {
  group = folds_augroup,
  callback = function()
    vim.cmd("mkview")
  end,
})
vim.api.nvim_create_autocmd("BufWinEnter", {
  group = folds_augroup,
  callback = function()
    vim.cmd("silent! loadview")
  end,
})
