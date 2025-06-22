local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files({ hidden = true })
end, { desc = 'Telescope find files (including hidden)' })

vim.keymap.set('n', '<leader>fg', function()
	builtin.live_grep({ additional_args = function() return { "--hidden", "--no-ignore" } end })
end, { desc = 'Telescope live grep (including hidden)' })


