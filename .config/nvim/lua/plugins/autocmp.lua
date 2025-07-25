local cmp = require 'cmp'

cmp.setup({

      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert({

        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-l>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true })
      }),

      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' }
      })
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['pyright'].setup {
      capabilities = capabilities
}

require('lspconfig')['ruff'].setup {
      capabilities = capabilities
}

require('lspconfig')['lua_ls'].setup {
      capabilities = capabilities
}
