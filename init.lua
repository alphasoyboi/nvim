require'settings'
require'keybindings'
-- this is hacky. look at ginit.lua or alternative
if vim.fn.has('win32') then
    require'neovide'
end
require'plugins'
