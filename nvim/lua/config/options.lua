-- Editor options
vim.opt.syntax = 'on'
vim.opt.number = true
vim.opt.hlsearch = true
vim.opt.ruler = true

-- Tab and indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Better editing experience
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true

-- Better completion experience (ready for nvim-cmp)
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.pumheight = 10
