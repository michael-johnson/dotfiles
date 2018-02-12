set visualbell
set noerrorbells
set ignorecase
set smartcase
set ic
set scs
set incsearch
set number
syntax on
set spelllang=en
set expandtab ts=4 sw=4 ai

" Use \p for paste in insert mode.
imap <leader>p <Esc>pa

" Use Control-A to select all.
map <C-a> <Esc>ggVG<cr>
imap <C-a> <Esc>ggVG<cr>

" Use kj or jk to leave insert mode.
imap jk <Esc>
imap kj <Esc>

" Use hj or jh to leave insert mode.
imap jh <Esc>
imap hj <Esc>

autocmd Filetype gitcommit set spell textwidth=72
autocmd InsertEnter,InsertLeave * set cul!
