" Carrega o packer
packadd packer.nvim

lua << EOF
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer gerencia a si mesmo

  -- Neo-tree e dependências
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- opcional, para ícones
      'MunifTanjim/nui.nvim',
    }
  }
end)
EOF

call plug#begin()
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-sensible'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'loctvl842/monokai-pro.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-lua/plenary.nvim'
call plug#end()

lua << END
require('lualine').setup()
END
set noshowmode
colorscheme monokai-pro
