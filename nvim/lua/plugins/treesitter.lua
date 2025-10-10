return {
    "nvim-treesitter/nvim-treesitter",
    build = "TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {"c", "cpp", "tmux", "bash", "lua", "asm", "disassembly", "vim", "vimdoc", "make", "cmake", "glsl",},
            highlight = {
                enable = true,
            },
        })
    end,
}
