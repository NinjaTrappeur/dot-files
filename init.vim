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
set mouse=n
filetype on

" Plugins stuff

call plug#begin('~/.config/nvim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'vim-syntastic/syntastic'
call plug#end()

"Remaps switch pane to tab.
map <TAB> <C-w>

"Remaps terminal escape to esc.
tnoremap <Esc> <C-\><C-n>

let localleader="\\"

" Remapping stuff according to bépo keyboard layout
" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t j
noremap s k
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « joindre / aide »
noremap T J
noremap S K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk
 
" {HJKL} <- [CTSR]
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap è t
noremap È T
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
noremap l c
noremap L C
" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S

" <> en direct
" ————————————
noremap « <
noremap » >

" Direct access digits
" ————————————————————————
noremap " 1
noremap 1 "
noremap « 2
noremap 2 <
noremap » 3
noremap 3 >
noremap ( 4
noremap 4 (
noremap ) 5
noremap 5 )
noremap @ 6
noremap 6 @
noremap + 7
noremap 7 +
noremap - 8
noremap 8 -
noremap / 9
noremap 9 /
noremap * 0
noremap 0 *

" Remapping word modifier to smthg
" more convenient
" ===================
noremap é w
noremap É W

" Syntastic related config
" ========================
map <Leader>s :SyntasticToggleMode<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
