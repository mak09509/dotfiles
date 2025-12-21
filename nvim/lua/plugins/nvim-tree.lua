return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

		--recommended settings
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwplugin = 1
        nvimtree.setup({})

		-- keymap settings
        vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>", { desc = "Focus Explorer" })
        vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", { desc = "Toggle + Find File in Explorer" })
    end
}
