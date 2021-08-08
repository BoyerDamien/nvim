local lsp = require('lspconfig')
local on_attach = require("lsp/on_attach")
local capabilities = require("lsp/capabilities")

lsp.cssls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

lsp.yamlls.setup {
	on_attach = on_attach,
	settings = {
		yaml = {
			schemas = {
				kubernetes =  "/*.yaml"
			}
		}
	}
}

lsp.html.setup {
	capabilities = capabilities,
	on_attach = on_attach
}

lsp.tsserver.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = function() return vim.loop.cwd() end
}
