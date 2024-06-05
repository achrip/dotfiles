vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set({'n', 'i'}, '<m-i>', '<Esc>o```{python}<CR>```<Esc>O')
