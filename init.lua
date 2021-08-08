package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/nvim/?.lua"

-- Modules
require("global/init")
require("plugins/init")
require("lsp/init")
