set autoread " Save buffers when switching them, to avoid running tests without unsaved changes
set autowrite
set backspace=indent,eol,start
set colorcolumn=80,100
set hidden " Allow switching between buffers with unsaved changes
set ignorecase
set incsearch
set lazyredraw
set list
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set modeline
set mouse=a
set nobackup
set nocompatible
set noswapfile
set nowrap
set nowritebackup
set number
set path+=app/javascript
set rnu
set rtp+=/usr/local/opt/fzf
set showcmd
set smartcase
set softtabstop=0 expandtab shiftwidth=2 smarttab
set textwidth=80
set timeoutlen=200
set wildmenu

filetype plugin on
highlight ColorColumn ctermbg=Gray
colorscheme default

if !has('nvim')
  set term=xterm-256color
endif

if has('nvim')
  set inccommand=split
endif

" Disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

let g:python3_host_prog='/usr/local/bin/python3'
