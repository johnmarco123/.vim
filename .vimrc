filetype plugin on
let mapleader = " " " map leader to Space
set shiftwidth=4
set number
set relativenumber " the weird numbery thing that makes it so you cant read lines

set incsearch " highlights whats being searched

set splitright " makes new vim tabs split to right
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap " no wrapping text
set scrolloff=8

nmap Y yg$
nmap J J_
nmap <C-s> :w<CR>

" centers screen when scrolling up and down with control d and u
nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz

" moves highlighted area up and down
vmap J :m '>+1<CR>gv=gv
vmap K :m '<-2<CR>gv=gv

" save current session
nmap <leader>vs :mksession! ~/.saveSession.vim<CR>"
nmap <leader>vl :source ~/.saveSession.vim<CR>"

" need clipboard support to use these commands..
nmap <leader>ve :edit ~/.vimrc<CR>
nmap <leader>td :edit ~/todo.txt<CR>
nmap <leader>tr :edit /trainingInfo/info.txt<CR>
" nmap <leader>nt :edit /mnt/c/sites/lchh_blank<CR> <- go to your notes
nmap <leader>pv :w<CR> :Explore<CR>

nmap <leader>c :%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left>
nmap <leader>x :!chmod +x %<CR>"

" cursor changing on insert and normal mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)

" Pluggins!
call plug#begin()

" List your plugins here
Plug 'machakann/vim-highlightedyank'

call plug#end()

" highlighting things
colorscheme pablo
syntax on

let g:highlightedyank_highlight_duration = 50
highlight HighlightedyankRegion ctermfg=black ctermbg=darkred
