require('nightfox').setup {
    options = {
        styles = {
            comments = 'italic',
            functions = 'italic',
        }
    }
}

require('gruvbox').setup {
    contrast = 'hard',
    overrides = {
        SignColumn = { bg = "#1D2021" },
        GruvboxAquaSign = { bg = "#1D2021" },
        GruvboxBlueSign = { bg = "#1D2021" },
        GruvboxOrangeSign = { bg = "#1D2021" },
        GruvboxRedSign = { bg = "#1D2021" },
        GruvboxYellowSign = { bg = "#1D2021" },
        GruvboxPurpleSign = { bg = "#1D2021" },
    }
}

vim.cmd('colorscheme gruvbox')

-- vim.g.gruvbox_contrast_dark = 'hard'
--
-- local current_scheme = 'vscode'
-- local current_alpha = 0
--
-- function ColorVim(scheme, alpha)
--     vim.cmd('colorscheme ' .. scheme)
--     if alpha == 1 then
--         vim.cmd('hi Normal ctermbg=NONE guibg=NONE')
--         vim.cmd('hi NormalFloat ctermbg=NONE guibg=NONE')
--         vim.cmd('hi TelescopeNormal ctermbg=NONE guibg=NONE')
--         vim.cmd('hi TelescopeBorder ctermbg=NONE guibg=NONE')
--         vim.cmd('hi NvimTreeNormal ctermbg=NONE guibg=NONE')
--     end
--     -- vim.cmd('hi SignColumn ctermbg=NONE guibg=NONE')
--     -- vim.cmd('hi BufferLineFill ctermbg=NONE guibg=NONE')
--     current_alpha = alpha
--     current_scheme = scheme
-- end
--
-- function ToggleTransparency()
--     if current_alpha == 1 then
--         ColorVim(current_scheme, 0)
--         return
--     end
--     ColorVim(current_scheme, 1)
-- end
--
-- ColorVim(current_scheme, current_alpha)
