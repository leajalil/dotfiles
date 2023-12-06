 --config = function()
 --vim.o.timeout = true
 --vim.o.timeoutlen = 300

 require("which-key").setup {
 -- your configuration comes here
 -- or leave it empty to use the default settings
 -- refer to the configuration section below
}
  local wk = require("which-key")

  local normal_mapping = {
        b = {
          name = "+buffer" ,
          d = {"<cmdd>bd<cr>"        , "Delete buffer"}   ,
          f = {"<cmd>bfirst<cr>"    , "First buffer"}    ,
          h = {"<cmd>Startify<cr>"  , "Home buffer"}     ,
          l = {"<cmd>blast<cr>"     , "Last buffer"}     ,
          d = {"<cmd>b#<bar>bd#<cr>", "Delete buffer"}     ,
          n = {"<cmd>bnext<cr>"     , "Next buffer"}     ,
          p = {"<cmd>bprevious<cr>" , "Previous buffer"} ,
          b = {"<cmd>Telescope buffers<cr>"   , "Search buffer"},
        },
        f = {
          name = "+file",
          f = { "<cmd>Telescope find_files<cr>",     "Find File" },
          r = { "<cmd>Telescope oldfiles<cr>",       "Open Recent File" },
          n = { "<cmd>enew<cr>",                     "New File" },
          c = {'<cmd>e ~/.config/nvim/init.lua<cr>', 'Open config file'},
          E = {'<cmd>suda#write(@%)<cr>',                     'Sudo edit'},
          b = {'<cmd>Telescope file_browser<cr>',    'File browser'},
          f = {'<cmd>Telescope find_files<cr>',      'Open file'},
          s = {'<cmd>update<cr>',                             'Save file'},
          S = {'<cmd>wall<cr>',                               'Save all files'},
          -- C d 	'convert file from unix to dos encoding' ,
          -- C u 	'convert file from dos to unix encoding' ,
          -- l 	'open file literally in =fundamental mode=' ,
          -- L 	'Locate a file (using =locate=)' ,
          -- o 	'open a file using the default external program' ,
          -- R 	'rename the current file' ,
          -- t 	'toggle file tree side bar using [[https://github.com/jaypei/emacs-neotree][NeoTree]]' ,
          -- y 	'show current file absolute path in the minibuffer' ,
        },
        w = {
          name = '+windows' ,
          w     = {'<C-W>w',    'Other window'},
          d     = {'<C-W>c',    'Delete window'},
          ["-"] = {'<C-W>s',    'Split window below'},
          ["|"] = {'<C-W>v',    'Split window right'},
          ["2"] = {'<C-W>v',    'Layout double columns'},
          h     = {'<C-W>h',    'Window left'},
          j     = {'<C-W>j',    'Window below'},
          l     = {'<C-W>l',    'Window right'},
          k     = {'<C-W>k',    'Window up'},
          H     = {'<C-W>5<',   'Expand window left'},
          J     = {'resize +5', 'Expand window below'},
          L     = {'<C-W>5>',   'Expand window right'},
          K     = {'resize  5', 'Expand window up'},
          ["="] = {'<C-W>=',    'Balance window'},
          s     = {'<C-W>s',    'Split window below'},
          v     = {'<C-W>v',    'Split window below'},
        },
        s = {
          name = '+search' ,
          s  = {'<cmd>Telescope live_grep<cr>',	'Search string on current dir'},
        },
    }

  local visual_n_normal_mapping = {
      c = {
          name  = '+code'			,
          c     = {'<Plug>NERDCommenterComment', 'Comment lines'},
          y     = {'<Plug>NERDCommenterYank', 'Yank and comment'},
          i     = {'<Plug>NERDCommenterInvert', 'Toggle comment individually'},
          u     = {'<Plug>NERDCommenterUncomment', 'uncomment-lines'},
          A     = {'<Plug>NERDCommenterAppend', 'Comment append'},
          a     = {'<cmd>Telescope lps_code_actions<cr>', 'code-actions'},
        --          r     = 'coc-rename-symbol'		,
        --          f     = 'coc-format-selected'		,
      },
      x = {
          name	= '+text',
          a		= {'<Plug>(EasyAlign)', 'Align'},
      },
  }

  wk.register(normal_mapping, {prefix = "<leader>"})
  wk.register(visual_n_normal_mapping, {prefix = "<leader>"})
  wk.register(visual_n_normal_mapping, {prefix = "<leader>", mode="v"})
