local toggle_term = require('toggleterm')
local Terminal = require('toggleterm.terminal').Terminal

toggle_term.setup {
    shell = 'pwsh',
}

local currentPathTerminal = Terminal:new {
    dir = vim.fn.getcwd(),
    direction = 'float',
    on_open = function(term)
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>bdelete!<CR>",
            { noremap = true, silent = true })

        vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<ESC>', '<C-\\><C-n>',
            { noremap = true, silent = true })

        vim.api.nvim_buf_set_keymap(term.bufnr, 't', 'jk', '<C-\\><C-n>',
            { noremap = true, silent = true })
    end
}

local lazyGitTerminal = Terminal:new {
    cmd = 'lazygit',
    dir = 'git_dir',
    direction = 'float',
    on_open = function(term)
        vim.cmd('startinsert!')

        vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<leader>tg', '<C-\\><C-n>:lua ToggleLazyGitTerminal()<CR>',
            { noremap = true, silent = true })
    end
}

function ToggleTerminalFloat()
    currentPathTerminal:toggle()
end

function ToggleLazyGitTerminal()
    lazyGitTerminal:toggle()
end
