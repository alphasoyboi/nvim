local clangd_opts = { 
    filetypes = { "c", "cpp" }
}
--if vim.fn.has('win32') then
--    clangd_options.cmd = { "clangd", "--background-index" }
--end
require'lspconfig'.clangd.setup{clangd_opts}
