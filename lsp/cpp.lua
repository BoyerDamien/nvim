require("lspconfig").clangd.setup {
	cmd = {"clangd" ,"--clang-tidy", "--background-index", "--cross-file-rename", "--pch-storage=memory"},
	capabilities = require("lsp/capabilities"),
	on_attach = require("lsp/on_attach"),
	settings = {
		usePlaceholders = true,
		completeUnimported = true,
		clangdFileStatus = true,
	}
}
