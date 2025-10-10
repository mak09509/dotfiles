return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local on_attach = function(_, bufnr)
                local nmap = function(keys, func, desc)
                    if desc then
                        desc = "LSP: " .. desc
                    end
                    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
                end

                nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
                nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
                nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
            end

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Clangd
            vim.lsp.config("clangd", {
                cmd = { "clangd", "--header-insertion=never" },
                capabilities = capabilities,
                on_attach = on_attach,
            })
            vim.lsp.enable({"clangd"})

            vim.diagnostic.config({
                virtual_text = true,
            })
        end,
    },
}
