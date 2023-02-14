local lsp = require('lsp-zero')

local cmp = require('cmp')
local fidget = require('fidget')

fidget.setup {
    window = { blend = 0 }
}

lsp.preset('recommended')

lsp.set_preferences {
    set_lsp_keymaps = false
}

lsp.on_attach(function(_, bufnr)
    local noremap = { buffer = bufnr, remap = false }
    local bind = vim.keymap.set

    bind('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', noremap)
    bind('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', noremap)
    bind('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', noremap)
    bind('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', noremap)
    bind('n', '<leader>F', '<cmd>lua vim.lsp.buf.format()<CR>', noremap)
    bind('n', 'gr', '<cmd>Telescope lsp_references<CR>', noremap)
    bind('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', noremap)
    bind('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', noremap)
    bind('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
end)

local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-j>'] = cmp.mapping.select_next_item(),
})

lsp.setup_nvim_cmp({
    sources = {
        { name = 'nvim_lsp', keyword_length = 1, source_index = -2 },
        { name = 'buffer', keyword_length = 1 }
    },
    mapping = cmp_mappings,
    window = {
        completion = {
            border = {},
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
            col_offset = -3,
            side_padding = 0,
        },
    },
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
            local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 100 })(entry, vim_item)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = " " .. strings[1] .. " "
            kind.menu = "    (" .. strings[2] .. ")"

            return kind
        end,
    },
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
