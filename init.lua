--require('user-config')

vim.opt["tabstop"] = 2
vim.opt["shiftwidth"] = 2

require("plugins")
require("file-explorer")
require("mason-config")
require("code-completion")
require("config.clangd-lspconfig")
require("gopls-config")
require("todocomments-config")
require("conform-config")
require("file-finder")
require("custom-keys")
require("lualine-config")
require("styling")
require("syntax-highlighting")
require("bufferline-config")
