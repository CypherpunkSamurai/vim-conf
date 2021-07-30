


call plug#begin( stdpath('config') . '/plugged'  )



" /////...
"   
"    UI
"
" ////...

" Startify
Plug 'mhinz/vim-startify'

" Statusline
Plug 'itchyny/lightline.vim'


" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'xuyuanp/nerdtree-git-plugin'


" Undotree
Plug 'mbbill/undotree'


" Theme
Plug 'henrynewcomer/vim-theme-papaya'
Plug 'chuling/ci_dark'
Plug 'rafi/awesome-vim-colorschemes'


" Indent Guides
Plug 'nathanaelkane/vim-indent-guides'



" /////....
"
"   Tools
"
" /////....

Plug 'jeetsukumaran/vim-buffergator'

Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/IndentAnything'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

Plug 'thinca/vim-quickrun'



" /////....
"
"   Autocomplete
"
" /////....

Plug 'justmao945/vim-clang'


Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'




call plug#end()



colorscheme papaya
let g:papaya_gui_color='blue'

if (has("termguicolors"))
  set termguicolors
endif


let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


