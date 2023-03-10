local telescope = require('telescope')
telescope.load_extension('aerial')

telescope.setup {
    extensions = {
        aerial = {
            -- Display symbols as <root>.<parent>.<symbol>
            show_nesting = {
                ['_'] = false, -- This key will be the default
                json = true, -- You can set the option for specific filetypes
                yaml = true,
            }
        }
    }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>dd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bf', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
