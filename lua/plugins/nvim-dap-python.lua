-- Python DAP integration
return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  config = function()
    local dap_python = require("dap-python")
    -- Adjust the Python path to your venv or system path
    dap_python.setup("uv")
  end
}

