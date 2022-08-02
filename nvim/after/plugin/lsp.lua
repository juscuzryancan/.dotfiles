require'lspconfig'.gopls.setup{}

require'lspconfig'.eslint.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.cssmodules_ls.setup{}

require'lspconfig'.tsserver.setup{
  on_attach = function()
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
  end
}

require'lspconfig'.prismals.setup{}

require'lspconfig'.graphql.setup{}
