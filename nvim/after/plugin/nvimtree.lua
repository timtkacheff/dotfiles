local tree = require('nvim-tree')

tree.setup({
    view = {
        adaptive_size = true,
    },
    actions = {
        open_file = {
            quit_on_open = false
        }
    },
    renderer = {
        indent_markers = {
            enable = true,
        },
        icons = {
            git_placement = "sign_column",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    diagnostics = {
        enable = true,
    },
})
