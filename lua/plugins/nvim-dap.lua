return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",  -- required by nvim-dap-ui
  },
  config = function()
    local dap = require("dap")

    -- keybindings for common DAP actions
    vim.keymap.set("n", "<leader>dc", dap.continue)
    vim.keymap.set("n", "<leader>dv", dap.step_over)
    vim.keymap.set("n", "<leader>di", dap.step_into)
    vim.keymap.set("n", "<leader>do", dap.step_out)
    vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint)
    vim.keymap.set("n", "<Leader>B", function()
      dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end)

    -- UI setup
    local dapui = require("dapui")
    dapui.setup()

    -- -- open/close UI automatically
    -- dap.listeners.after.event_initialized["dapui_config"] = function()
    --   dapui.open()
    -- end
    -- dap.listeners.before.event_terminated["dapui_config"] = function()
    --   dapui.close()
    -- end
    -- dap.listeners.before.event_exited["dapui_config"] = function()
    --   dapui.close()
    -- end
  end
}

