require'lspconfig'.bashls.setup{
	on_attach = require("lsp/on_attach"),
	capabilities = require("lsp/capabilities")
}
