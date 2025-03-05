-- plugins/telescope.lua:
return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  opts = {
    -- This is your opts table
    require("telescope").setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
            -- even more opts
          }

          -- pseudo code / specification for writing custom displays, like the one
          -- for "codeactions"
          -- specific_opts = {
          --   [kind] = {
          --     make_indexed = function(items) -> indexed_items, width,
          --     make_displayer = function(widths) -> displayer
          --     make_display = function(displayer) -> function(e)
          --     make_ordinal = function(e) -> string
          --   },
          --   -- for example to disable the custom builtin "codeactions" display
          --      do the following
          --   codeactions = false,
          -- }
        }
      }
    },
    require("telescope").load_extension("ui-select")
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
     {
       'nvim-telescope/telescope-fzf-native.nvim',
     },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'echasnovski/mini.icons', version = '*' },
  }
}
