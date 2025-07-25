local lspconfig = require 'lspconfig'


-- Keybindings
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { silent = true, noremap = true })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { silent = true, noremap = true })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { silent = true, noremap = true })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { silent = true, noremap = true })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { silent = true, noremap = true })


vim.diagnostic.config ({

    virtual_text = true,
    underline = true,

    float = {

        border = "rounded",
        source = "always",
        header = "",
        prefix = ""
    }
})
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { noremap = true, silent = true })


-- Python LSPs
lspconfig.pyright.setup {}
lspconfig.ruff.setup {}

-- LuaLS
lspconfig.lua_ls.setup {

    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },

            workspace = {
                library = vim.api.nvim_get_runtime_file("", true)
            }
        }
    }
}
