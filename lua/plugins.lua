vim.cmd [[
    augroup Packer
        autocmd!
        autocmd BufWritePost plugins.lua PackerCompile
    augroup end
]]

return require'packer'.startup(function()
    -- packer can manage itself
    use 'wbthomason/packer.nvim'


    --[[ convert neovim into an ide ]]--
    -- lsp stuff
    use {
        'neovim/nvim-lspconfig',
        config = [[ require'config/lspconfig' ]],
    }
    -- lsp completion stuff
    use {
        'hrsh7th/nvim-compe',
        config = [[ require'config/compe' ]],
    }
    use {
        'windwp/nvim-autopairs',
        --after = 'nvim-compe',
        config = [[ require'config/autopairs' ]],
    }


    --[[ pretty colors ]]--
    -- colorscheme
    use {
        'Iron-E/nvim-highlite',
        config = [[ vim.cmd('colorscheme highlite') ]],
    }
    -- enhanced syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
    }
    -- 
    use {
        'norcalli/nvim-colorizer.lua',
        config = [[ require'colorizer'.setup({ '*' }, { names = false }) ]],
    }


    use 'mhinz/vim-startify'
end)

