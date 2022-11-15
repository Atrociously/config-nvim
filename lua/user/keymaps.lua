local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

keymap("v", "<C-c>", "\"+y", opts)
keymap("n", "<C-[>", "<cmd>bprevious<cr>", opts)
keymap("n", "<C-]>", "<cmd>bnext<cr>", opts)

keymap("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
