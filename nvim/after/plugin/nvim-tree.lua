-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local nt= require('nvim-tree')
-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
nt.setup()
vim.keymap.set('n','<leader>t', ':NvimTreeToggle<CR>',{}) 
