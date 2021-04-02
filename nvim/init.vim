" ==================================plugins==============================
call plug#begin('~/local/share/nvim/plugged')

Plug 'hzchirs/vim-material'
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'   " plugin de nerdtree para integrarlo con git
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot' 
Plug 'rust-lang/rust.vim' " pluign para rust
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " Resaltado para python
Plug 'airblade/vim-gitgutter' " Mostrar cambios con gitdigite una palabra o texto
Plug 'nikvdp/neomux' " terminal integra en neo vim
Plug 'sainnhe/sonokai' 
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'dikiaap/minimalist'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set title 
set number
set mouse=a

set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

"===========================Configuracion de plugins===============================
set updatetime=250

" ====================================NERD TREE====================================
let g:NERDTreeChDirMode = 2 
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusUseNerdFonts = 1 " Activar nerdfont para gir nerdtree

" ====================================IDENTACION===============================
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

"===================================TEMAS, COLORES=============================
set termguicolors
set t_Co=256
syntax on
colorscheme minimalist 
" ====================================AIRLINE==================================
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo


" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

let g:airline_theme='minimalist'

" ===============Coc Vim================== 
command! -nargs=0 Format :call CocAction('format')


" ================================ATAJOS DE TECLADO======================
let g:mapleader = ' '  " Definir espacio como la tecla líder

nnoremap <leader>s :w<CR>  " Guardar con <líder> + s

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <líder> + e

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>

