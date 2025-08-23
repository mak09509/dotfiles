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

vim.cmd([[
    set viewoptions-=options
    augroup remember_folds
        autocmd!
        autocmd BufWinLeave *.* if &ft !=# 'help' | mkview | endif
        autocmd BufWinEnter *.* if &ft !=# 'help' | silent! loadview | endif
    augroup END
]])
