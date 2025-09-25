require("config.lazy")
require("config.kickstart-lsp-config")

vim.cmd("colorscheme carbonfox")

require('lualine').setup()

-- Enable the LSPs!
vim.lsp.enable({'lua_ls',
                'clangd',
                'basedpylance',
                'rust_analyzer',
                'ruff',
                'ty',
                'yamlls',
              })

-- Use the swank new virtual lines diagnostics option!
vim.diagnostic.config({
  virtual_lines = {
    only_current_line = false,  -- Show virtual lines for all diagnostics, not just the current line
    highlight_whole_line = true,  -- Highlight the whole line with the diagnostic
    prefix = "▎",               -- Character to use as prefix for virtual lines
    spacing = 4,                -- Number of empty spaces between prefix and diagnostic message
  }
})


-- lazy.nvim auto-update plugins rather than carping at me that they need updating :)
require("config.lazy")
vim.api.nvim_create_autocmd("VimEnter",{callback=function()require"lazy".update({show = false})end})
