set runtimepath^=~/.vim runtimepath+=/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

call plug#begin('~/.vim/plugged')
" Themes
Plug 'morhetz/gruvbox'
" Syntaxis
Plug 'evanleck/vim-svelte', {'branch': 'main'} " Svelte support
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'scrooloose/nerdtree' " Lateral tree bar 
Plug 'ekalinin/Dockerfile.vim'

call plug#end()

nmap <c-b> :NERDTreeToggle<CR>
colorscheme gruvbox

