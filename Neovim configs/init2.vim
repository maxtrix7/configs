" --------------------Plugins----------------------------- "

call plug#begin()

Plug 'vifm/vifm.vim'        "Gestor de ficheros
Plug 'dikiaap/minimalist'   "Esquema de color
Plug 'vim-utils/vim-man'    "Manual de Vim
Plug 'tpope/vim-markdown'
Plug 'ap/vim-css-color'     "Colores previstos en CSS
Plug 'jremmen/vim-ripgrep'  "Grep (expresiones regulares) mejorado

call plug#end()

"Plug 'git@github.com:Valloric/YouCompleteMe.git'

" -----------------Configuración General----------------"
syntax on
colorscheme minimalist

set encoding=UTF-8
set nu                      "número de líneas
set cursorline              "resaltado de línea actual
"set nowrap
set t_Co=256
set tabstop=4
set softtabstop=4
set noerrorbells
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set noswapfile
"mset nobackup
"set undodir=~/.vim/undodir
"set undofile
set incsearch
"set colorcolumn=90
"highlight ColorColumn ctermbg=0 guibg=black

" ----------------Línea de Estado---------------------
set statusline=
set statusline+=%#DiffText#
set statusline+=\ %M        "Muestra un + si hay modificaciones
set statusline+=\ %y        "Muestra la extensión del archivo
set statusline+=\ %r        "Muestra si es solo lectura
set statusline+=\ %F        "Muestra el path completo del archivo
set statusline+=%=      "Esto muestra a la derecha lo siguiente:
set statusline+=\ [%n]      "Número del ventana de Vim
set statusline+=\ %c:%l/%L  "Número de columna:fila/fila total

" ------------------Teclas--------------------------"
let mapleader = ","
inoremap ´p [
inoremap ´´ ]
inoremap ñl (
inoremap ññ )
"Remapeo en modo de inserción: Salir con kj 
inoremap kj <esc>
"Remapeo de tecla = en ¿
inoremap ¿ =
inoremap = ¿

" -----------------Mapeo de teclas------------------"

"--------------Modo normal----------------

"j izquierda, k arriba, l abajo, ñ derecha, h : de comandos 
nnoremap ñ l
nnoremap l j
nnoremap j h
nnoremap h :

"--------------Modo visual----------------

"j izquierda, k arriba, l abajo, ñ derecha, h : de comandos 
vnoremap ñ l
vnoremap l j
vnoremap j h
vnoremap h :
vnoremap kj <esc> 

"Gestor de ficheros con Control n:
map <C-n> :EditVifm .<CR>

