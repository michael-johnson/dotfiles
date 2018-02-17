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

" Use hj or jh to leave insert mode.
imap jh <Esc>
imap hj <Esc>

" Set the cursor to block in visual mode, underlined I in insert mode.
autocmd InsertEnter,InsertLeave * set cul!
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Reset cursor to block on vim start
autocmd VimEnter * silent !echo -ne "\e[2 q"
" Reset cursor to blinking bar on vim exit.
autocmd VimLeave * silent !echo -ne "\e[5 q"

autocmd Filetype gitcommit set spell textwidth=72
