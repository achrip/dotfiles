local builtin = require('telescope.builtin')
local utils = require('telescope.utils')
vim.keymap.set("n", "<leader>pf", function()
  builtin.find_files({ hidden = true, cwd = utils.buffer_dir()})
end)
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
