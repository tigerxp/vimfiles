" Load default vimrc
source ~/.vim/vimrc

" Override some settings from the loaded vimrc
set novisualbell
colorscheme tiger

if has("gui_running")
  set guifont=Liberation\ Mono\ 11
endif

" Additional key mappings
nmap <silent> <F4> :set list!<CR>
nmap <silent> <F6> :set number!<CR>
" nnoremap <silent> <F2> :w<CR>

" Fix the inconsistent Y to yank to the end of line instead of
" yanking the whole line
nmap Y y$

" Move by visual lines
imap <up> <C-O>gk
imap <down> <C-O>gj
nmap <up> gk
nmap <down> gj 
vmap <up> gk
vmap <down> gj

" In Insert mode type jj instead of ESC to leave Insert mode
imap jj <Esc>

" Crtl-S saves the current file 
if has("gui_running")
  " If the current buffer has never been saved, it will have no name,
  " call the file browser to save it, otherwise just save it.
  map <silent> <C-S> :if expand("%") == ""<CR>:browse confirm w<CR>:else<CR>:confirm w<CR>:endif<CR>
else
  map <silent> <C-S> :confirm w
endif

" In Insert mode, save and return back to insert mode
imap <c-s> <c-o><c-s>

