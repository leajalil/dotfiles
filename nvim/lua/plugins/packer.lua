-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- My plugins here

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    use 'wbthomason/packer.nvim'

    -- colorschemes
    use 'Shatur/neovim-ayu'

    --file explorer option 1
    --use {
      --'nvim-neo-tree/neo-tree.nvim',
      --branch = "v2.x",
      --requires = {
        --"nvim-lua/plenary.nvim",
        --"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        --"MunifTanjim/nui.nvim"
      --},
    --}
    --use 'sidebar-nvim/sidebar.nvim'
    
    --file explorer option 2
    use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}


    --terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    --lsp
    use 'neovim/nvim-lspconfig'

    --markdown preview (install without yarn or npm)
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })


    --which-key  (require "telescope",  "nerdcommenter"  and  "line align"
    use {"folke/which-key.nvim"}

    --line align
    use 'junegunn/vim-easy-align'
    
    --telescope
    use {'nvim-telescope/telescope.nvim',requires={'nvim-lua/plenary.nvim'}}
    use 'nvim-telescope/telescope-file-browser.nvim'
    
    --nerdcommenter
    use ({'preservim/nerdcommenter'})--, setup = function() vim.g.NERDCreateDefaultMappings = 0 end})

end)
