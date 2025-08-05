local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files({
    hidden = true,                
    no_ignore = true           
  })
end, { desc = 'Telescope find files' })


vim.keymap.set('n', '<leader>fg', function()
  builtin.live_grep({
    additional_args = function()
      return { "--hidden", "--no-ignore" }

    end
  })
end, { desc = 'Telescope live grep' })
