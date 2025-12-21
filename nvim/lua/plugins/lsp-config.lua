return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp"
	},
	config = function()
		local lspconfig = require("lspconfig");
		local cmp_nvim_lsp = require("cmp_nvim_lsp");
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {});
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }
				
				opts.desc = "Goto Declaration"
				vim.keymap.set("n", "gd", vim.lsp.buf.declaration, opts)

				opts.desc = "See Available Code Action"
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

				opts.desc = "Smart Renaming"
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

				opts.desc = "Goto Previous Diagnostic"
				vim.keymap.set("n", "<leader>cp", vim.diagnostic.goto_prev, opts)

				opts.desc = "Goto Next Diagnostic"
				vim.keymap.set("n", "<leader>cn", vim.diagnostic.goto_next, opts)

				opts.desc = "Show Documentation Under the Cursor"
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			end
		});
		

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("clangd", {
			cmd = { "clangd", "--header-insertion=never" },
			capabilities = capabilities,
		})
		vim.lsp.enable({"clangd"})

		vim.diagnostic.config({
			virtual_text = true,
		})
	end
}
