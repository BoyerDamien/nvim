require'lspconfig'.dockerls.setup{
	on_attach = require("lsp/on_attach"),
	capabilities = require("lsp/capabilities")
}
