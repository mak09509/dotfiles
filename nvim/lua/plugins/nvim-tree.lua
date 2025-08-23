return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwplugin = 1
    
        nvimtree.setup({})

        local keymap = vim.keymap
        keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>")
        keymap.set("n", "<leader>ee", ":NvimTreeFindFileToggle<CR>")
    end
}
