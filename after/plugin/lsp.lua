local servers = {
  "jsonls",
  "tsserver",
  "sumneko_lua",
  "cssls",
  "html",
  "tailwindcss"
}

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


require("mason-lspconfig").setup({
  ensure_installed = servers,
	automatic_installation = true,
})

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.html.setup{capabilities = capabilities}
require'lspconfig'.cssls.setup{capabilities = capabilities}
require'lspconfig'.tailwindcss.setup{capabilities = capabilities}
require'lspconfig'.jsonls.setup{capabilities = capabilities}
require'lspconfig'.tsserver.setup{capabilities = capabilities}
require'lspconfig'.sumneko_lua.setup{capabilities = capabilities}

