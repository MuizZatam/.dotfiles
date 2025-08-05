vim.keymap.set('n', '<leader>t', function()
  require('FTerm').toggle()
end, { noremap = true, silent = true })

vim.keymap.set('t', '<leader>t', [[<C-\><C-n><Cmd>lua require('FTerm').toggle()<CR>]], { noremap = true, silent = true })
