" VIMRC
" Create by Jeoffrey Bauvin
" Modified by F�lix Baylac
" v0.2 - 22/10/2012


" Active la num�rotation des lignes
set number

" Coloration syntaxique
colorscheme koehler
filetype on
filetype plugin indent on
syntax on

" Active la souris
set mouse=a

" Montre les commandes incompl�tes
set showcmd

" Active l'autoindentation
" set autoindent

" D�sactive la compatbilit� avec l'ancien VI
" set nocompatible

" D�fini l'historique � 100
set history=100

" Afficher les parenth�ses correspondantes
set showmatch

" Active le surlignage lors des recherches
set hlsearch

" Afficher les r�sultats de la recherche au moment de la saisie
set incsearch

" Permet de revenir � la derni�re position connue quand on r�ouvre le fichier
if has("autocmd")
	filetype plugin indent on
    		autocmd FileType text setlocal textwidth=78

	" always jump to last edit position when opening a file
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
	\ endif
 endif

" Permet de surligner la ligne actuelle
set cursorline
hi Cursorline ctermbg=darkgrey guibg=#771c1c cterm=none 

" Indentation � la marque de Tab la plus proche
set shiftround

" D�sactive la casse lors de la recherche
set ignorecase

" Active la d�tection du type de fichier
filetype on

" Correction orthographique
set spelllang =fr
"set spell
set spellsuggest =5

" Raccourci (<? -> <?php)
iab <? <?php

" Ajout de l'installer vim-pathogen
execute pathogen#infect()

