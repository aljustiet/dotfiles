" Set no highlight search by default
syntax on
set nohlsearch
set number

" Key mappings
nnoremap T I
nnoremap S A
vnoremap T I
vnoremap S A
nnoremap .h :set hlsearch<CR>
nnoremap .n :set nohlsearch<CR>
nnoremap .r :source ~/.config/nvim/init.vim<CR>
nnoremap .y "+y
vnoremap .y "+y
nnoremap e k
nnoremap i l
nnoremap a j
nnoremap t i
nnoremap s a
nnoremap f d
nnoremap l e
nnoremap m x
vnoremap m x
nnoremap i l
nnoremap a j
vnoremap i l
vnoremap a j
vnoremap e k

" Auto commands
autocmd BufRead,BufNewFile *.conf set filetype=conf
autocmd BufRead,BufNewFile *.yuck,*.kdb set filetype=lisp
