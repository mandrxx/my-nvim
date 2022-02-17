require'nvim-treesitter.configs'.setup {
  ensure_installed = {},
  sync_install = false,
  ignore_install = {},
  highlight = { enable = true },
  autopairs = { enable = true },
  context_commentstring = { 
    enable = true,
    enable_autocmd = false,
  },
  indent = { enable = true },
  autotag = { enable = true },
}
