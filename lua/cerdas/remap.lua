vim.g.mapleader = " "

-- Exit
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- enable ctrl backspace to delete one word backward in insert mode
vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", {noremap = true})

-- move up and down selected in visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- remap to centered position
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste from clipboard
-- vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({"n", "v"}, "<leader>p", "\"*p")
-- vim.keymap.set("i", "<C-^S-v>", "<C-o>\"*p")  -- windows
vim.keymap.set("i", "<C-v>", "<C-o>\"+p<C-c>")  -- windows

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete and no save current delete
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux sessionizer<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
