local function autoformat()
	vim.api.nvim_command("autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1200)")
end

local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.s_tab_complete = function()
	if vim.fn.pumvisible() == 1 then
		return t "<C-p>"
	elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
		return t "<Plug>(vsnip-jump-prev)"
	else
		return t "<S-Tab>"
	end
end

local function buff_key_mapping(bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local opts = { noremap=true, silent=true }

	buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
	buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
	buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
	buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
	buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
	buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
	buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
	buf_set_keymap('n', '<space>ld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
	buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
	buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
	buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

	vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
	vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
	vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
end

local on_attach = function(client, bufnr)

	-- Buffer Key Mapping
	buff_key_mapping(bufnr)

	-- Set some keybinds conditional on server capabilities
	if client.resolved_capabilities.document_formatting then
		autoformat()
	end

	-- SignatureInformation
	require"lsp_signature".on_attach()
end

return on_attach
