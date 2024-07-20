return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "mfussenegger/nvim-dap",
    "theHamsta/nvim-dap-virtual-text",
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/neotest-python",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local neotest = require("neotest")

    neotest.setup({
      adapters = {
        require("neotest-python")({
          dap = {
            cwd = vim.fn.getcwd(),
            justMyCode = false,
          },
        }),
      },
    })

    -- python setup
    local path = require("mason-registry").get_package("debugpy"):get_install_path()
    require("dap-python").setup(path .. "/venv/bin/python")

    -- config ui and virtual text
    local dap = require("dap")
    local dapui = require("dapui")
    local dapvt = require("nvim-dap-virtual-text")
    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    dapvt.setup({
      virt_text_pos = "eol",
      clear_on_continue = true,
      -- enabled_commands = true,
    })

    -- keymaps
    vim.keymap.set("n", "<leader>tt", "<cmd>:Neotest run<cr>", { desc = "run test" })
    vim.keymap.set("n", "<leader>dt", "<cmd>:Neotest run strategy='dap'<cr>", { desc = "debug test" })
    vim.keymap.set("n", "<leader>tf", "<cmd>:Neotest run vim.fn.expand('%')<cr>", { desc = "run file tests" })
    vim.keymap.set("n", "<leader>ts", "<cmd>:Neotest summary toggle<cr>", { desc = "toggle test summary" })
    vim.keymap.set("n", "]t", "<cmd>:Neotest jump next<cr>", { desc = "next test" })
    vim.keymap.set("n", "[t", "<cmd>:Neotest jump prev<cr>", { desc = "prev test" })

    vim.keymap.set("n", "<leader>db", "<cmd>:DapToggleBreakpoint<cr>", { desc = "toggle breakpoint" })

    vim.keymap.set("n", "<leader>dc", "<cmd>:DapContinue<cr>", { desc = "dap continue" })
    vim.keymap.set("n", "<leader>dn", "<cmd>:DapStepOver<cr>", { desc = "dap step over" })
    vim.keymap.set("n", "<leader>di", "<cmd>:DapStepInto<cr>", { desc = "dap step into" })
    vim.keymap.set("n", "<leader>de", "<cmd>lua require('dapui').eval()<cr>", { desc = "dapui eval" })
    vim.keymap.set("v", "<leader>de", "<cmd>lua require('dapui').eval()<cr>", { desc = "dapui eval" })
    vim.keymap.set("n", "<leader>dq", "<cmd>:DapTerminate<cr>", { desc = "dap stop" })
  end,
}
