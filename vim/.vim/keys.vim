let mapleader = "\<Space>"

" Fast saving
nmap <leader>w :w!<cr>

" Fast closing
nmap <leader>q :q<cr>

" :W sudo saves the file
" (useful fil handling the permission-denied error)
command! W w !sudo tee % > /dev/null

" Visual mode prssing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Window navigations with alt+arrows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

map <silent> <leader>ev :e  $MYVIMRC<CR>
map <silent> <leader>sv :so $MYVIMRC<CR>

" Make
" map <leader>m :!make<CR>
nmap <leader>m :VimuxRunLastCommand<cr>
