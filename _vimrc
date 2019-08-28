set noswapfile 
set noundofile

set number

"use 4 space tab
set expandtab 
set tabstop=4 
set smartindent

"enable mouse 
set mouse=a
"enable backspace
set backspace=indent,eol,start

"vim-plug "PowerLine if has('vim_starting')
   set rtp+=~/.vim/pligged/vim-plug 
   if !isdirectory(expand('~/.vim/plugged/vim-plug'))
       echo 'install vim-plug...' 
       call system('mkdir -p ~/.vim/plugged/vim-plug') 
       call system('git clone https://github.com/junegunn/vim-plg.git ~/.vim/plugged')
    end 
    let &t_ti.="\e[1 q" 
    let &t_SI.="\e[5 q" 
    let &t_EI.="\e[1 q" 
    let &t_te.="\e[0 q"


call plug#begin('~/.vim/plugged')
  "PowerLine 
  Plug'vim-airline/vim-airline-themes'
  Plug 'freeo/vim-kalisi'
call plug#end()

"keymap
"highlight off by double ESC 
set hlsearch 
nnoremap <ESC><ESC> :nohlsearch<CR>

"colorscheme
colorscheme kalisi
set background=dark
