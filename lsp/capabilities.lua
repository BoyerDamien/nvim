local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

capabilities.textDocument.codeAction = {
	dynamicRegistration = false,
	codeActionLiteralSupport = {
		codeActionKind = {
			valueSet = {
				"",
				"quickfix",
				"refactor",
				"refactor.extract",
				"refactor.inline",
				"refactor.rewrite",
				"source",
				"source.organizeImports",
			};
		};
	};
}

capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

return capabilities
