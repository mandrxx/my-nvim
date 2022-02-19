call plug#begin()
Plug 'ojroques/vim-oscyank'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-fugitive'

Plug 'lewis6991/gitsigns.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp' | Plug 'hrsh7th/cmp-nvim-lsp' | Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip' | Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
call plug#end()

" configure plugins
let g:gruvbox_sign_column='dark0'
au TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif

lua <<EOF
require('gitsigns').setup()
require('nvim-tree').setup()
require('nvim-web-devicons').setup { default = true }

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

require('nvim-lsp-installer').on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)

local snip = require'luasnip'
local cmp = require'cmp'
cmp.setup {
  completion = { keyword_length = 3 },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' }, { name = 'nvim_lsp_signature_help' }, 
    { name = 'luasnip' },  { name = 'buffer' }, { name = 'path' },
  }
}

EOF

