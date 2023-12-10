vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)

vim.api.nvim_set_option("clipboard","unnamed")
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<C-c>", '"+yg_')

