local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

local capabilities = cmp_nvim_lsp.default_capabilities()
local lsp_flags = {
	debounce_text_changes = 150,
}

lspconfig['clangd'].setup(
	{
		capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "h", "c", "cpp", "cc", "objc", "objcpp"},
    flags = lsp_flags,
    cmd = {"clangd", "--background-index"},
    single_file_support = true,
    root_dir = lspconfig.util.root_pattern(
          '.clangd',
          '.clang-tidy',
          '.clang-format',
          'compile_commands.json',
          'compile_flags.txt',
          'configure.ac',
          '.git'
    )
	}
)
