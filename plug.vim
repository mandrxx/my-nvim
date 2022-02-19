call plug#begin()
Plug 'ojroques/vim-oscyank'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-fugitive'

Plug 'lewis6991/gitsigns.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-lua/plenary.nvim' | Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" configure plugins
let g:gruvbox_sign_column='dark0'
au TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif

lua <<EOF
require('gitsigns').setup()
require('nvim-tree').setup()

require('lualine').setup {
  options = {
    theme = 'gruvbox_dark',
    section_separators = '',
    component_separators = '|'
  }
}

require'nvim-treesitter.configs'.setup {
  highlight = { enable = true },
  indent = { enable = true },
  autotag = { enable = true },
  autopairs = { enable = true },
}

EOF

