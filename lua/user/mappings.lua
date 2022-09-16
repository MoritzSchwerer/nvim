
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Normal --
-- Better window navigation
keymap("n", "<leader>wh", "<C-w>h", opts)
keymap("n", "<leader>wj", "<C-w>j", opts)
keymap("n", "<leader>wk", "<C-w>k", opts)
keymap("n", "<leader>wl", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-k>", ":resize -5<CR>", opts)
keymap("n", "<C-j>", ":resize +5<CR>", opts)
keymap("n", "<C-h>", ":vertical resize -5<CR>", opts)
keymap("n", "<C-l>", ":vertical resize +5<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "kj", "<esc>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Turn of highlights
keymap("n", "<leader>hl", ":nohlsearch<cr>", opts)

--  Telescope
keymap("n", "<leader>ff", ":Telescope find_files hidden=True<cr>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr>", opts)
-- see also user.plugins.telescope

-- Floaterm
keymap("n", "<leader>to", ":ToggleTerm<cr>", opts)
keymap("t", "<leader>to", [[<C-\><C-n><cmd>ToggleTerm<cr>]], opts)

-- harpoon
keymap("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
keymap("n", "<leader>ho", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>gu", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", opts)
keymap("n", "<leader>gi", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", opts)
keymap("n", "<leader>go", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", opts)
keymap("n", "<leader>gp", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", opts)

-- refactoring
keymap("v", "<leader>ef", "<Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>", opts)
keymap("n", "<leader>pv", ":lua require('refactoring').debug.print_var({ normal = true })<CR>", opts)
keymap("v", "<leader>pv", ":lua require('refactoring').debug.print_var({})<CR>", opts)
keymap("n", "<leader>pc", ":lua require('refactoring').debug.cleanup({})<CR>", opts)
