-- [[ Setting options ]]
-- See `:help vim.o`

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- visual stuff
vim.o.termguicolors = true
vim.o.showtabline   = 2
vim.o.so            = 8
vim.o.splitbelow    = true
vim.o.splitright    = true
vim.o.ignorecase    = true
vim.o.smartcase     = true
-- Set highlight on search
vim.o.hlsearch = false
-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- LSP diagnostics options setup 
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = '✗'})
sign({name = 'DiagnosticSignWarn', text = '∆'})
sign({name = 'DiagnosticSignHint', text = '⚑'})
sign({name = 'DiagnosticSignInfo', text = 'ᵢ'})

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

--[[ window options ]]--
vim.wo.signcolumn = 'yes'
vim.wo.wrap       = false
vim.wo.cursorline = true
-- hybrid line numbering
vim.wo.number = true
local augroup_number_toggle = vim.api.nvim_create_augroup("numbertoggle", {})
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "CmdlineLeave", "WinEnter" }, {
   pattern = "*",
   group = augroup_number_toggle,
   callback = function()
      if vim.o.nu and vim.api.nvim_get_mode().mode ~= "i" then
         vim.opt.relativenumber = true
      end
   end,
})
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "CmdlineEnter", "WinLeave" }, {
   pattern = "*",
   group = augroup,
   callback = function()
      if vim.o.nu then
         vim.opt.relativenumber = false
         vim.cmd "redraw"
      end
   end,
})

--[[ buffer options ]]--
-- tab settings
vim.cmd 'set expandtab tabstop=4 softtabstop=4 shiftwidth=4'
local augroup_tabsize2 = vim.api.nvim_create_augroup("tabsize2", {})
vim.api.nvim_create_autocmd({'FileType'}, {
	pattern = {'lua', 'c', 'cpp', 'html', 'css'},
	group = augroup_tabsize2,
	command = 'set expandtab tabstop=2 softtabstop=2 shiftwidth=2',
})


-- auto indent
vim.bo.cindent = true
