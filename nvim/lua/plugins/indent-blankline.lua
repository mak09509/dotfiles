return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",

    config = function()
        require("ibl").setup({
            indent = {
                char = "▏" -- thin line on the left side
            },
            scope = {
                show_start = false,
                show_end = false,
            },
        })
    end
}

