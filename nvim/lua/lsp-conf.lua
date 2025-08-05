local lsp = require 'lspconfig'
local util = require("lspconfig.util")


vim.diagnostic.config({

    virtual_text = true,
    underline = true,
})


-- lsp keymaps
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { silent = true, noremap = true })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { silent = true, noremap = true })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { silent = true, noremap = true })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { silent = true, noremap = true })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { silent = true, noremap = true })
vim.keymap.set('n', 'lf', vim.lsp.buf.format, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { noremap = true, silent = true })


-- Python LSP Servers
lsp.basedpyright.setup {}
lsp.ruff.setup {}


-- Lua LSP Servers
lsp.lua_ls.setup {}


-- Clangd LSP Servers
lsp.clangd.setup {}


-- Lexical LSP Server
lsp.lexical.setup {
    cmd = { vim.fn.expand("~") .. "/Repos/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
    root_dir = function(fname)
        return util.root_pattern("mix.exs", ".git")(fname) or vim.loop.cwd()
    end,
    filetypes = { "elixir", "eelixir", "heex" }
}


-- Autocompletion setup
require('mini.completion').setup({

    delay = { completion = 50, info = 50, signature = 50 },
    window = {
        info = { height = 25, width = 80, border = "rounded" },
        signature = { height = 25, width = 80, border = "rounded" },
    }
})


