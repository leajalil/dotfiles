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

    -- file explorer
    --use 'kyazdani42/nvim-tree.lua'
    use {
      'nvim-neo-tree/neo-tree.nvim',
      branch = "v2.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim"
      },
    }
    use 'sidebar-nvim/sidebar.nvim'

    --terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    --lsp
    use 'jose-elias-alvarez/null-ls.nvim'

end)
