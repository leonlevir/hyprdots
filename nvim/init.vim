call plug#begin()                                                                       
Plug 'tpope/vim-sensible'                                                               
Plug 'phanviet/vim-monokai-pro'                                                         
Plug 'sheerun/vim-polyglot'                                                             
Plug 'itchyny/lightline.vim'                                                            
Plug 'christoomey/vim-system-copy'                                                      
call plug#end()                                                                         
                                                                                        
set noshowmode                                                                          
set termguicolors                                                                       
colorscheme monokai_pro                                                                 
                                                                                        
let g:lightline = {                                                                     
      \ 'colorscheme': 'monokai_pro',                                                   
      \ }                                
