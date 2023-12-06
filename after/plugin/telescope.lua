local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', function()
	buitin.grep_string({ search = vim.fn.input("Grep > ") });
end)
