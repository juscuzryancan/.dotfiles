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
