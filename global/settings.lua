vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

vim.o.background        = 'dark'
vim.o.clipboard         = 'unnamedplus'
vim.o.completeopt       = 'menuone,noselect'
vim.o.confirm           = true
vim.o.fsync             = true
vim.o.ignorecase        = true
vim.o.incsearch         = true
vim.o.hlsearch		= true
vim.o.mouse             = 'a'
vim.o.mousefocus        = true
vim.o.scrolloff         = 4
vim.o.shortmess         = 'aoOtTIc'
vim.o.sidescrolloff     = 4
vim.o.smartcase         = true
vim.o.smarttab          = true
vim.o.termguicolors     = true
vim.o.updatetime        = 300
vim.o.timeoutlen	= 100
vim.o.wildignorecase    = true

vim.wo.cursorline	= true
vim.wo.breakindent      = true
vim.wo.foldenable       = false
vim.wo.number           = true
vim.wo.colorcolumn	= '90'
vim.wo.relativenumber	= true

vim.bo.autoindent       = true
vim.bo.autoread         = true
vim.bo.commentstring    = '#\\ %s'
vim.bo.copyindent       = true
vim.bo.expandtab        = true
vim.bo.grepprg          = 'rg'
vim.bo.modeline         = false
vim.bo.shiftwidth       = 0
vim.bo.smartindent      = true
vim.bo.swapfile         = false
vim.bo.tabstop          = 4
vim.bo.undofile         = true

