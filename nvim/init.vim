call plug#begin()
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-sensible'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'loctvl842/monokai-pro.nvim'
call plug#end()

lua << END
require('lualine').setup()
END

colorscheme monokai-pro
