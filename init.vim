set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation
set mouse=a
filetype plugin on

" Plugins stuff

call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'godlygeek/tabular'
Plug 'LnL7/vim-nix'
Plug 'mileszs/ack.vim'
Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
Plug 'neomake/neomake'
Plug 'neovimhaskell/haskell-vim'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'Shougo/vimproc.vim'
Plug 'tpope/vim-fugitive'
Plug 'Twinside/vim-hoogle'
Plug 'vim-syntastic/syntastic'
Plug 'vimwiki/vimwiki'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'junegunn/goyo.vim'
" Autocomplete stuff
"===================
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim'
let g:deoplete#enable_at_startup = 1
Plug 'eagletmt/neco-ghc'
call plug#end()

" Haskell Stuff
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:haskell_indent_disable = 1          " disable annoyin indent feature


" Color Theme / Styling
" ===========
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme palenight 
set cursorline "Highlight current line

" Random Usefull Bindings
" =======================
nnoremap <leader>t :split<CR> 
nnoremap <leader>q :q<CR> 
" Remaps switch pane to tab.
map <TAB> <C-w>
" Remaps terminal escape to esc.
tnoremap <Esc> <C-\><C-n>
let localleader="\\"

" Remapping stuff according to bépo keyboard layout
" [HJKL] -> {CTSR}
" ================
" {cr} = « gauche / droite »
nnoremap c h
vnoremap c h
onoremap c h
nnoremap r l
vnoremap r l
onoremap r l
" {ts} = « haut / bas »
nnoremap t j
vnoremap t j
onoremap t j
nnoremap j t
nnoremap s k
vnoremap s k
onoremap s k
" {CR} = « haut / bas de l'écran »
nnoremap C H
nnoremap R L
" {TS} = « joindre / aide »
nnoremap T J
nnoremap S K
" Corollaire : repli suivant / précédent
nnoremap zs zj
nnoremap zt zk
 
" {HJKL} <- [CTSR]
" ================
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
nnoremap è t
nnoremap È T
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
nnoremap l c
nnoremap L C
" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
nnoremap h r
vnoremap h r
" {K} = « Substitue »          (k = caractère, K = ligne)
nnoremap k s
nnoremap K S

" <> en direct
" ============
nnoremap « <
nnoremap » >

" Direct access digits
" ====================
nnoremap " 1
nnoremap 1 "
nnoremap « 2
nnoremap 2 <
nnoremap » 3
nnoremap 3 >
nnoremap ( 4
nnoremap 4 (
nnoremap ) 5
nnoremap 5 )
nnoremap @ 6
nnoremap 6 @
nnoremap + 7
nnoremap 7 +
nnoremap - 8
nnoremap 8 -
nnoremap / 9
nnoremap 9 /
nnoremap * 0
vnoremap * 0
nnoremap 0 *
vnoremap 0 *

" Remapping word modifier to smthg
" more convenient
" ===================
nnoremap é w
onoremap é w
nnoremap É W
onoremap É W

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|data'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Syntastic related config
" ========================
nmap <Leader>s :SyntasticToggleMode<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Haskell Tooling Mapping
"
" =====================
vnoremap <leader>s :!stylish-haskell<CR>
" Haskell grep hotkeys
nnoremap <leader>af :Ack -G ".*\.hs" "\b<cword>\b[ \t\n]+::"<CR>
nnoremap <leader>at :Ack -G ".*\.hs" "(data\|newtype\|type)(\ +)\b<cword>\b"<CR>
nnoremap <leader>ac :Ack -G ".*\.hs" "class(\ +)(.*)(=>)*(\ *)\b<cword>\b"<CR>
" Haskell grep commands
command! -nargs=+ -complete=file Aghf :Ack -G ".*\.hs" "\b<args>\b[ \t\n]+::"
command! -nargs=+ -complete=file Aght :Ack -G ".*\.hs" "(data\|newtype\|type)(\ +)\b<args>\b"
command! -nargs=+ -complete=file Aghc :Ack -G ".*\.hs" "class(\ +)(.*)(=>)*(\ *)\b<args>\b"
