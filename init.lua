vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.winborder = 'rounded' -- Adds border to windows
vim.o.scrolloff = 10 -- Keeps the cursor 10 lines from bottom and top
vim.o.sidescrolloff = 8

-- Search settings
vim.o.ignorecase = true -- Case insensitive search
vim.o.smartcase = true -- Case sensitive search if uppercase in search
vim.o.hlsearch = false -- Don't highlight search results
-- vim.o.incsearch = true -- Show matches as you type

-- Visual settings
vim.o.termguicolors = true -- Enable 24-bit- colors
vim.o.colorcolumn = '80' -- Show column at 80 characters
vim.o.signcolumn = 'yes' -- Always show sign column
vim.o.showmatch = true -- Hightlight matching brackets

vim.o.clipboard = 'unnamedplus' -- Set system clipboard as default

vim.g.mapleader = ' '
vim.keymap.set('n','<leader>o', ':update<CR> :source<CR>')

-- Splitting and resizing
vim.o.splitright = true
vim.o.splitbelow = true
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>sh', ':split<CR>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', { desc = 'Deacrese window height' })
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })

-- Better indeting in visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Open terminal
vim.keymap.set('n', '<leader>h', ':12 sp term://zsh<CR>i', { desc = 'Open terminal' })

-- netrw
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 3
vim.keymap.set('n', '<leader>e', ':Lex<CR>:vertical resize 36<CR>', { desc = 'Open netrw' })

-- Tabs
vim.o.showtabline = 1
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close tab' })
vim.keymap.set('n', '<leader>tl', ':tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader>th', ':tabprevious<CR>', { desc = 'Previous tab' })

-- Autoclosing
vim.keymap.set('i', '(', '()<Esc>i')
vim.keymap.set('i', '[', '[]<Esc>i')
vim.keymap.set('i', '{', '{}<Esc>i')
vim.keymap.set('i', '"', '""<Esc>i')
vim.keymap.set('i', "'", "''<Esc>i")

-- Plugins
vim.pack.add({
	{ src = 'https://github.com/morhetz/gruvbox' },
	{ src = 'https://github.com/Vigemus/iron.nvim' },
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = 'https://github.com/hrsh7th/cmp-nvim-lsp'},
	{ src = 'https://github.com/hrsh7th/cmp-buffer'},
	{ src = 'https://github.com/hrsh7th/cmp-path'},
	{ src = 'https://github.com/hrsh7th/cmp-cmdline'},
	{ src = 'https://github.com/hrsh7th/nvim-cmp'},
	{ src = 'https://github.com/hrsh7th/cmp-vsnip'},
	{ src = 'https://github.com/hrsh7th/vim-vsnip'},
})

-- require plugin configs
require('iron')
require('nvim-cmp')

-- Set colorscheme
vim.cmd.colorscheme('gruvbox')

-- LSP
vim.lsp.enable('pyright')

vim.diagnostic.config({
	virtual_text = true,
})
