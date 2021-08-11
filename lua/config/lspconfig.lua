local clangd_opts = { 
    filetypes = { "c", "cpp" }
}

local pyright_opts = {}


require'lspconfig'.clangd.setup{clangd_opts}
require'lspconfig'.pyright.setup{}
