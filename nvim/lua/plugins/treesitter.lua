return {
    "nvim-treesitter/nvim-treesitter",
    build = "TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {"c", "cpp", "latex", "tmux", "bash", "lua", "asm", "disassembly", "vim", "vimdoc", "make", "cmake", "glsl", "markdown", "markdown_inline",},
            highlight = {
                enable = true,
                disable = { "markdown" },
            },
        })
    end,
}
