syntax on
set relativenumber
set rtp+=/opt/homebrew/opt/fzf
hi MatchParen cterm=none ctermbg=red ctermfg=red

" 代码折叠
set foldmethod=manual
nnoremap <space> za

" 回到上一次编辑时的位置
" restore place in file from previous session
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Set cursor to block in Normal mode
let &t_EI = "\<Esc>[2 q"
" Set cursor to vertical bar in Insert mode
let &t_SI = "\<Esc>[5 q"

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'preservim/nerdtree'
call plug#end()

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
