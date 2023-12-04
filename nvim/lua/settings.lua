-- Neovim API aliases
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

-- General
--g.mapleader = ";"
g.mapleader = "."

-- UI
opt.number = true
opt.relativenumber = true
opt.guifont = "JetBrainsMono Nerd Font"

-- clipboard
opt.clipboard = "unnamedplus"

-- Spell
exec ([[
	augroup markdownSpell
		autocmd!
		autocmd FileType markdown setlocal spell spelllang=es
		autocmd BufRead, BufNewFiel *.md setlocal spell spelllang=es
	augroup END
]], false)

-- templates
exec([[
  augroup templates
      au!
      let g:template_name = 'Leandro Andres Jalil'
      autocmd BufNewFile *.* silent! execute '0r $HOME/.config/nvim/templates/'.expand("<afile>:e").'.tpl'
      autocmd BufNewFile * %s/{{YEAR}}/\=strftime('%Y')/ge
      autocmd BufNewFile * %s/{{NAME}}/\=template_name/ge
      autocmd BufNewFile * %s/{{EVAL\s*\([^}]*\)}}/\=eval(submatch(1))/ge
      autocmd BufNewFile * %s/{{FILENAME}}/\=expand('%:t')/ge
  augroup END
]], false)

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
