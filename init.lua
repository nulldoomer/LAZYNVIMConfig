-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Ruler 80 char
vim.opt.colorcolumn = "80"
vim.cmd([[ highlight Colorcolumn ctermbg = 0 guibg= #c34043]])
-- Remaps
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true })
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("x", "<leader>p", '"_dP', { noremap = true })
-- Cool Things
vim.cmd("set scrolloff=8")
vim.cmd("set updatetime=50")
