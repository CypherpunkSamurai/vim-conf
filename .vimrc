" Line Numbering
set nu

" Default Encoding
set encoding=utf-8


" System Clipboard
set clipboard=unnamed

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" Split Control
set splitbelow
set splitright


" Code Folding

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" AUTO INDENT FOR python PEP-8 
Plugin 'vim-scripts/indentpython.vim'


" Syntax Checking
" Plugin 'vim-syntastic/syntastic'

" Nerd Tree file manager 
Plugin 'scrooloose/nerdtree'

" Super Search
Plugin 'kien/ctrlp.vim'

" Ctrlp Function reference
Plugin 'tacahiroy/ctrlp-funky'



" Nerdy Commenter
" Plugin 'preservim/nerdcommenter'

" Jedi py
Plugin 'davidhalter/jedi-vim'

" Deocomplete Go
" Plugin 'deoplete-plugins/deoplete-go'

" Deocomplete C/cpp
" Plugin 'Shougo/deoplete-clangx'


" Emoji
Plugin 'junegunn/vim-emoji'


" Vim Markdown
Plugin 'plasticboy/vim-markdown'

" Goto reference 
" cscope
function! Cscope(option, query)
  let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[34m%s\033[0m:\033[31m%s\033[0m\011\033[37m%s\033[0m\n", x,z,$0; }'
  let opts = {
  \ 'source':  "cscope -dL" . a:option . " " . a:query . " | awk '" . color . "'",
  \ 'options': ['--ansi', '--prompt', '> ',
  \             '--multi', '--bind', 'alt-a:select-all,alt-d:deselect-all',
  \             '--color', 'fg:188,fg+:222,bg+:#3a3a3a,hl+:104'],
  \ 'down': '40%'
  \ }
  function! opts.sink(lines) 
    let data = split(a:lines)
    let file = split(data[0], ":")
    execute 'e ' . '+' . file[1] . ' ' . file[0]
  endfunction
  call fzf#run(opts)
endfunction

" Invoke command. 'g' is for call graph, kinda.
nnoremap <silent> <Leader>g :call Cscope('3', expand('<cword>'))<CR>


" VimCompleteMe
Plugin 'ajh17/vimcompletesme'


" Vim Status bar
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

" Autocomplete PopUp
Plugin 'AutoComplPop'


" Vim Go Plugin
"Plugin 'fatih/vim-go'






" Themes

"Plugin 'jnurmine/zenburn'
"Plugin 'sainnhe/vim-color-forest-night' "
"Plugin 'chriskempson/base16-vim'
Plugin 'zeis/vim-kolor'
Plugin 'henrynewcomer/vim-theme-papaya'


" Current Theme
" set term=screen-256color
set termguicolors
colors kolor

" Colour Scheme Changer
Plugin 'ScrollColors'




" Forest night
" important!!
"set termguicolors
" the configuration options should be placed before `colorscheme forest-night`
let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 1
"colorscheme forest-night




" Base64
"colorscheme base16-default-dark 





" Vim Kolor

" Enable italic. Default: 1
let g:kolor_italic=1

" Enable bold. Default: 1
let g:kolor_bold=1

" Enable underline. Default: 0
let g:kolor_underlined=0

" Gray 'MatchParen' color. Default: 0
let g:kolor_alternative_matchparen=0

" White foreground 'MatchParen' color that might work better with some terminals. Default: 0
let g:kolor_inverted_matchparen=0

"colorscheme kolor

