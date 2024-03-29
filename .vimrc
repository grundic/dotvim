
syntax on
colorscheme molokai

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Turn on line numbers:
set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on

autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

" Taglist variables
" " Display function name in status bar:
let g:ctags_statusline=1
" " Automatically start script
let generate_tags=1
" " Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" " Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" " Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
" end of ctypes (taglist) settings

filetype plugin on " for pydiction
let g:pydiction_location = '/home/grundic/.vim/after/ftplugin/pydiction/complete-dict'

" *.pp files are ruby files
au BufNewFile,BufRead *.pp set filetype=ruby
