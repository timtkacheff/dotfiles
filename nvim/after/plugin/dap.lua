local dapui = require('dapui')
local dap = require('dap')

-- Go
dap.adapters.go = {
    type = 'executable',
    command = 'node',
    args = { 'C:\\Users\\timze\\AppData\\Local\\nvim-data\\mason\\packages\\go-debug-adapter\\extension\\dist\\debugAdapter.js' }
}

dap.configurations.go = {
    {
        type = 'go';
        name = 'Debug';
        request = 'launch';
        showLog = false;
        program = "${file}";
        dlvToolPath = vim.fn.exepath('dlv');
    }
}

-- Python
dap.adapters.python = {
    type = 'executable',
    command = 'C:\\Users\\timze\\AppData\\Local\\nvim-data\\mason\\packages\\debugpy\\venv\\Scripts\\python',
    args = { '-m', 'debugpy.adapter' }
}

dap.configurations.python = {
    {
        type = 'python';
        request = 'launch';
        name = 'Launch file';

        program = '${file}';
    }
}

dapui.setup {
}
