require'lspconfig'.gopls.setup{
	on_attach = require("lsp/on_attach"),
	capabilities = require("lsp/capabilities"),
	cmd = {"gopls", "serve"},
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
				unreachable = true,
			},
			staticcheck = true,
			usePlaceholders = true,
			codelenses = {
				tidy = true,
				upgrade_dependency = true,
				test = true
			}

		},
	},
}

