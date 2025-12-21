return {
	"hrsh7th/nvim-cmp",
	event = { "InsertEnter" },
	
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
		local cmp = require("cmp")

    cmp.setup({
        preselect = cmp.PreselectMode.Item,
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
		window = {
			documentation = cmp.config.disable
		},
        mapping = cmp.mapping.preset.insert({
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-j>"] = cmp.mapping.select_next_item(),
			["<C-b>"] = cmp.mapping.scroll_docs(-1),
			["<C-f>"] = cmp.mapping.scroll_docs(1),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = false }),
        }),
		formatting = {
			format = function(entry, vim_item)
			vim_item.abbr = vim_item.abbr
			vim_item.menu = " "
			vim_item.detail = " "
			return vim_item
        end
      },
        sources = cmp.config.sources({
			{ name = "nvim_lsp", max_item_count = 8 },
			{ name = "buffer", max_item_count = 8 },
			{ name = "path", max_item_count = 4 }
        }),
    })
    end
}

