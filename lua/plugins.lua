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
    }
    use {
        'windwp/nvim-autopairs',
        after = 'nvim-compe',
    }


    --[[ pretty colors ]]--
    -- colorscheme
    use {
        'Iron-E/nvim-highlite',
        config = [[ vim.cmd('colorscheme highlite') ]]
    }
    -- enhanced syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter'
    }
    -- 
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require'colorizer'.setup({ '*' }, { names = false }) end,
    }


    use 'mhinz/vim-startify'
end)

