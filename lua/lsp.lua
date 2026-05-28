-- Extra LSP keymaps
vim.keymap.set("n", "grd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "grD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format local buffer" })

-- Combine and configure LSP capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

vim.lsp.config("*", { capabilities = capabilities })

-- Fix for "Undefined global 'vim'" warning
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true)
            }
        }
    }
})

-- Enabled LSP servers
vim.lsp.enable({
    "lua_ls",
    "ts_ls"
})

-- Diagnostic config
vim.diagnostic.config({ virtual_text = true })
