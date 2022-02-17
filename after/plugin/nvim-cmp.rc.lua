local snip = require'luasnip'
local cmp = require'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
   ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
   ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }), 
  },
  documentation = {
    border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
  },
  sources = {
    { name = 'nvim_lsp' }, { name = 'nvim_lsp_signature_help' },
    { name = 'luasnip' }, { name = 'path' },
  },
}
