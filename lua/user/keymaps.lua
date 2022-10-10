local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>v", ":vsplit<cr>", opts)
keymap("n", "<leader>s", ":split<cr>" , opts)

-- Navigate buffers
keymap("n", "<S-l>", ":BufferLineCycleNext<cr>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<cr>", opts)
keymap("n", "<leader>q", ":Bdelete<CR>", opts)

keymap("n", "<A-Right>", ":BufferLineMoveNext<cr>", opts)
keymap("n", "<A-Left>", ":BufferLineMovePrev<cr>", opts)

keymap("n", "<leader>1", "<cmd> lua require('bufferline').go_to_buffer(1, true)<cr>", opts)
keymap("n", "<leader>2", "<cmd> lua require('bufferline').go_to_buffer(2, true)<cr>", opts)
keymap("n", "<leader>3", "<cmd> lua require('bufferline').go_to_buffer(3, true)<cr>", opts)
keymap("n", "<leader>4", "<cmd> lua require('bufferline').go_to_buffer(4, true)<cr>", opts)
keymap("n", "<leader>5", "<cmd> lua require('bufferline').go_to_buffer(5, true)<cr>", opts)
keymap("n", "<leader>6", "<cmd> lua require('bufferline').go_to_buffer(6, true)<cr>", opts)
keymap("n", "<leader>7", "<cmd> lua require('bufferline').go_to_buffer(7, true)<cr>", opts)
keymap("n", "<leader>8", "<cmd> lua require('bufferline').go_to_buffer(8, true)<cr>", opts)
keymap("n", "<leader>9", "<cmd> lua require('bufferline').go_to_buffer(9, true)<cr>", opts)
keymap("n", "<leader>$", "<cmd> lua require('bufferline').go_to_buffer(-1, true)<cr>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<cr>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dp', opts)

-- visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Create Empty Lines --
keymap("n", "<A-o>", "o<Esc>", opts)
keymap("n", "<A-O>", "O<Esc>", opts)

-- Telescope -- 
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Fix bufferline (doesn't work rn)
keymap("n", "<F12>", ":source C:/Users/Ryan/AppData/Local/nvim/lua/user/bufferline.lua<CR>", { noremap = true, silent = false} )

-- Redo keymaps
keymap("n", "<F1>", ":source C:/Users/Ryan/AppData/Local/nvim/lua/user/keymaps.lua<CR>", { noremap = true, silent = false })

-- Disable whatever the heck this does --
keymap("n", "<C-z>", "<Nop>", opts)

-- Latex stuff --
keymap("n", "<F5>", ":! cd %:p:h && pdflatex -interaction nonstopmode -halt-on-error -file-line-error %:t<CR>", { noremap = true, silent = false })
keymap("n", "<F6>", ":AsyncRun SumatraPDF %:r.pdf <CR>", { noremap = true, silent = true })

