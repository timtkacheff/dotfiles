local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- Better Escape
map('i', 'jk', '<Esc>')

-- Better Nav
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Better Save
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>S', ':wa<CR>')

-- Buffers
map('n', '<S-h>', '<cmd>:BufferLineCyclePrev<CR>')
map('n', '<S-l>', '<cmd>:BufferLineCycleNext<CR>')
map('n', '<leader>c', ':Bdelete<CR>')

-- NVIMTree
map('n', '<leader>e', ':NvimTreeToggle<CR>')
map('n', '<leader>E', ':NvimTreeFindFile<CR>')

-- Git 
map('n', '<F9>', '<cmd>Gitsigns toggle_current_line_blame<CR>')
map('n', '<leader>gb', '<cmd>Telescope git_branches<CR>')
map('n', '<leader>gc', '<cmd>Telescope git_commits<CR>')

-- Aerial
map('n', '<F3>', '<cmd>Telescope aerial<CR>')

-- UI
map('n', '<F12>', ':ZenMode<CR>')

-- Windows
map('n', '<C-w>z', '<cmd>WindowsMaximize<CR>')
vim.keymap.set("n", "<leader>w", function()
    local picker = require('window-picker')
    picker.setup {}

    local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
    vim.api.nvim_set_current_win(picked_window_id)
end, { desc = "Pick a window" })

-- TODO Comments
map('n', '<F10>', '<cmd>TodoTelescope<CR>')

-- DAP
map('n', '<F4>', "<cmd>lua require('dapui').toggle()<CR>")
map('n', '<F5>', '<cmd>DapContinue<CR>')
map('n', '<F6>', '<cmd>DapStepOver<CR>')
map('n', '<F7>', '<cmd>DapStepInto<CR>')
map('n', '<F8>', '<cmd>DapStepOut<CR>')
map('n', '<leader>br', '<cmd>DapToggleBreakpoint<CR>')
map('n', '<leader>dh', '<cmd>lua require("dap.ui.widgets").hover()<CR>')

-- Terminal
map('n', '\\\\', ':lua ToggleTerminalFloat()<CR>')
map('t', '\\\\', '<C-\\><C-n>:lua ToggleTerminalFloat()<CR>')

map('n', '<leader>tg', ':lua ToggleLazyGitTerminal()<CR>')


