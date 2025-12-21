vim.opt.number = true

-- indentation settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

-- searching settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- colorscheme settings
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- splitting settings
vim.opt.splitright = true
vim.opt.splitbelow = true

-- mouse settings
vim.o.scrolloff = 12
vim.opt.mouse = ""

-- cursor settings
vim.opt.cursorline = true
vim.opt.guicursor =
	"n-v-c-sm:block-blinkon500-blinkoff500," ..
	"i-ci-ve:ver25-blinkon500-blinkoff500," ..
	"r-cr-o:hor20-blinkon500-blinkoff500"
