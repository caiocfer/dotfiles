require("config.lazy")
require("vim-options")
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.keymap.set('v', '<C-c>', '"+y') -- Copy to clipboard
vim.keymap.set('n', '<C-v>', '"+p') -- Paste from clipboard
vim.keymap.set('v', '<C-x>', '"+d') -- Cut from clipboard

vim.api.nvim_set_keymap('n', '<C-z>', 'u', { noremap = true }) -- ctrlz
vim.api.nvim_set_keymap('n', '<C-y>', '<C-r>', { noremap = true }) --ctrly


vim.cmd.colorscheme "catppuccin-mocha"

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})                    -- File Tree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {}) -- Neotree
vim.keymap.set('n', '<C-t>', ':Neotree toggle<CR>', {})

-- lsp
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})


local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {
    "go",         -- Go
    "python",     -- Python
    "c",          -- C
    "cpp",        -- C++
    "javascript", -- JavaScript
    "java",       -- Java
    "kotlin",     -- Kotlin
    "lua"
  },
  highlight = {
    enable = true
  },

  indent = {
    enable = true
  },

})
