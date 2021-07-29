

--[[ global options ]]--
vim.o.hidden     = true
vim.o.updatetime = 300
-- interacton stuff
vim.o.clipboard = 'unnamedplus'
vim.o.mouse     = 'a'
-- visual stuff
vim.o.termguicolors = true
vim.o.showtabline   = 2
vim.o.so            = 8
vim.o.splitbelow    = true
vim.o.splitright    = true
vim.o.ignorecase    = true
vim.o.smartcase     = true


--[[ window options ]]--
vim.wo.signcolumn = 'yes'
vim.wo.wrap       = false
vim.wo.cursorline = true
-- hybrid line numbering
vim.wo.number         = true
vim.wo.relativenumber = true



--[[ buffer options ]]--
-- tab settings
vim.cmd [[
    set tabstop=4    
    set softtabstop=4
    set shiftwidth=4 
    set expandtab
]]
-- auto indent
vim.bo.cindent = true
