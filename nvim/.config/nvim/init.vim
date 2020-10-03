" Nvim Config
"Done!
" ~/.config/nvim/init.vimDone!Done!
"
"
" install vim-plug with
"
"
" then:
"     curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" then:
"      mkdir -p ~/.config/nvim/init.vim
"
"
" ///////////////////////////////////////






" ///////////
"
"   Config
"
" ///////////

" Enabled Line Numberings
set nu

" Encoding
set encoding=UTF-8



" ///////////////
"
"      Plug
"
" ///////////////


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/site/plugged')

" Declare the list of plugins.
Plug 'itchyny/lightline.vim'

" Vim airline plugin
"
"  to enable themes
" :AirlineTheme
"Plug 'vim-airline/vim-airline'
"Plug  'vim-airline/vim-airline-themes'

" Tabs at top
"Plug 'mgee/lightline-bufferline'



" Limelight plugin
" limelight for code 
" type LimeLight(0,1,!)
Plug 'junegunn/limelight.vim'

" Peakaboo
" quick add text
" hit @ or "
Plug 'junegunn/vim-peekaboo'




" Layout
Plug 'auxiliary/vim-layout'







" //////////////////
"
" Vim complete
"
" //////////////////


"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Nvim LSP
"Plug 'neovim/nvim-lspconfig
" Deoplet
"Plug 'Shougo/deoplete.nvim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'lighttiger2505/deoplete-vim-lsp'
" Deoplete jedi
"Plug 'deoplete-plugins/deoplete-jedi'

"Plug 'davidhalter/jedi-vim'
"Plug 'zchee/deoplete-jedi'
"Plug 'ajh17/VimCompletesMe'
Plug 'nvim-lua/completion-nvim'

lua require'nvim_lsp'.pyls.setup{on_attach=require'completion'.on_attach}






" Which key
"
" :WhichKey and :WhichKeyVisual are the primary way of interacting with this plugin.
"
" To register the descriptions when using the on-demand load feature,
" use the autocmd hook to call which_key#register(), e.g., register for the Space key:
" autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }





" Smooth Scroll
Plug 'terryma/vim-smooth-scroll'


" File Manager Nerd Tree
Plug 'preservim/nerdtree'

" Nerd Tree icons
Plug 'ryanoasis/vim-devicons'

" Color theme plugins
Plug 'henrynewcomer/vim-theme-papaya'
Plug 'severij/vadelma'
"Plug 'joshdick/onedark.vim
Plug 'jnurmine/zenburn'
Plug 'sainnhe/vim-color-forest-night'
Plug 'chriskempson/base16-vim'
Plug 'zeis/vim-kolor'



" List ends here. Plugins become visible to Vim after this call.
call plug#end()



" ///////////////


"Forest night
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



" ////////
"
"  clr scheme
"
" ////////

syntax on

colorscheme kolor
set background=dark

let g:lightline = {'colorscheme': 'wombat'}
"let g:airline#extensions#tabline#enabled = 1




" ///////
"
" Scroll
"
" ///////
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>










" Config

" Which Key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"let g:neocomplete#enable_at_startup = 1
"autocmd FileType vim let b:vcm_tab_complete = 'vim'
"let g:deoplete#enable_at_startup = 1


let g:deoplete#enable_at_startup = 1


