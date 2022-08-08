--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
---- Setup nvim-cmp.
--local cmp = require'cmp'
--
--cmp.setup({
--  snippet = {
--    -- REQUIRED - you must specify a snippet engine
--    expand = function(args)
--      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
--      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
--      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
--      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
--    end,
--  },
--  window = {
--    -- completion = cmp.config.window.bordered(),
--    -- documentation = cmp.config.window.bordered(),
--  },
--  mapping = cmp.mapping.preset.insert({
--    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--    ['<C-f>'] = cmp.mapping.scroll_docs(4),
--    ['<C-Space>'] = cmp.mapping.complete(),
--    ['<C-e>'] = cmp.mapping.abort(),
--    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--  }),
--  sources = cmp.config.sources({
--    { name = 'nvim_lsp' },
--    { name = 'vsnip' }, -- For vsnip users.
--    -- { name = 'luasnip' }, -- For luasnip users.
--    -- { name = 'ultisnips' }, -- For ultisnips users.
--    -- { name = 'snippy' }, -- For snippy users.
--  }, {
--    { name = 'buffer' },
--  })
--})
--
---- Set configuration for specific filetype.
--cmp.setup.filetype('gitcommit', {
--  sources = cmp.config.sources({
--    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
--  }, {
--    { name = 'buffer' },
--  })
--})
--
---- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline('/', {
--  mapping = cmp.mapping.preset.cmdline(),
--  sources = {
--    { name = 'buffer' }
--  }
--})
--
---- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline(':', {
--  mapping = cmp.mapping.preset.cmdline(),
--  sources = cmp.config.sources({
--    { name = 'path' }
--  }, {
--    { name = 'cmdline' }
--  })
--})
--
---- Setup lspconfig.
---- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--  capabilities = capabilities
--}


require'lspconfig'.gopls.setup{}

require'lspconfig'.eslint.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.cssmodules_ls.setup{}

require'lspconfig'.tsserver.setup{
  on_attach = function()
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
  --go to definition
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
  --go to type definition
  vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
  --go to implementation
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
  --diagnostic next
  vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {buffer=0})
  --diagnostic previous
  vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
  --rename within the buffer?
  vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
  end
}

require'lspconfig'.prismals.setup{}

require'lspconfig'.graphql.setup{}
