
local leader = "<space>"

-- Nvimtree
vim.api.nvim_set_keymap("n", leader .. "e", "<CMD>NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", leader .. "r", "<CMD>NvimTreeRefresh<CR>", { noremap = true, silent = true })

-- RangerVim
vim.api.nvim_set_keymap("n", leader .. "d", "<CMD>RnvimrToggle<CR>", { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", leader .. "f", "<CMD>Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", leader .. "w", "<CMD>Telescope grep_string<CR>", { noremap = true, silent = true })

-- Terminal
vim.api.nvim_set_keymap("n", leader .. "t", "<CMD>ToggleTerm<CR>", { noremap = true, silent = true })

-- Comments
vim.api.nvim_set_keymap("n", leader .. "c", "<CMD>CommentToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", leader .. "c", ":'<,'>CommentToggle<CR>", { noremap = true, silent = true })

-------------------------------------------------------------------------------------------
--			Special key bindings
-------------------------------------------------------------------------------------------
-- Tabline navigation
vim.api.nvim_set_keymap("n", "<Tab>", "<CMD>bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "<CMD>bnext<CR>", { noremap = true, silent = true })

-- Split resizing
vim.api.nvim_set_keymap("n", "<S-Up>", "<CMD>resize +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Down>", "<CMD>resize -1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Right>", "<CMD>vert resize +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Left>", "<CMD>vert resize -1<CR>", { noremap = true, silent = true })


