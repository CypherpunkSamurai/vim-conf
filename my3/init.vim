


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

nnoremap <C-t> :NERDTreeToggle<CR>


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

Plug 'dense-analysis/ale'

" ////////
"
"  Flutter
"
" ////////
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'



" /////....
"
"   Autocomplete
"
" /////....

Plug 'justmao945/vim-clang'


" I Use ALE now
" Plug 'prabirshrestha/vim-lsp'
Plug 'dense-analysis/ale'
Plug 'mattn/vim-lsp-settings'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'




" /////....
"
"   Brackets
"
" /////....

" /////...
" Auto Pairs
" /////....

Plug 'jiangmiao/auto-pairs'

" /////...
" Rainbow Paranthesis
" /////....
Plug 'luochen1990/rainbow'

call plug#end()














" /////////////////////
"
"    VIM UI
"
" /////////////////////

syntax on
set modeline
se expandtab
set tabstop=4
set shiftwidth=4

set nu

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
      \}








" ///////////////////////
" 
"     Autocompletion
"
" //////////////////////


" //////////////////////
"         ALE
" //////////////////////

let g:ale_fix_on_save              = 1
let g:ale_lint_on_enter            = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave     = 0
let g:ale_lint_on_save             = 1
let g:ale_lint_on_text_changed     = 'never'



" /////////////////////////////////////////////
" 
"                  Brackets
"
" /////////////////////////////////////////////

" ////////////////////////////////////
"         Rainbow Paranthesis
" ////////////////////////////////////

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained', "enable rainbow for code blocks only
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'], "lisp needs more colors for parentheses :)
\		},
\		'haskell': {
\			'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'], "the haskell lang pragmas should be excluded
\		},
\		'vim': {
\			'parentheses_options': 'containedin=vimFuncBody', "enable rainbow inside vim function body
\		},
\		'perl': {
\			'syn_name_prefix': 'perlBlockFoldRainbow', "solve the [perl indent-depending-on-syntax problem](https://github.com/luochen1990/rainbow/issues/20)
\		},
\		'stylus': {
\			'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'], "[vim css color](https://github.com/ap/vim-css-color) compatibility
\		},
\		'css': 0, "disable this plugin for css files
\	}
}




" //////
" 
"  Flutter
"
" /////
" let g:flutter_hot_restart_on_save=0
" let g:flutter_hot_reload_on_save=1
