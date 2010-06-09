" Load default vimrc
source ~/.vim/vimrc

" Override some settings from the loaded vimrc
set novisualbell
colorscheme tiger

if has("gui_running")
  set guifont=Liberation\ Mono\ 12
endif

" Additional key mappings
nnoremap <silent> <F4> :set list!<CR>
nnoremap <silent> <F6> :set number!<CR>

