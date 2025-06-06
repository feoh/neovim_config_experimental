-- plugins/telescope.lua:
return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
    },
    { 'echasnovski/mini.icons', version = '*' },
  }
}
