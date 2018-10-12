set list
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨

set nocompatible
set lazyredraw
set wildmenu
set modeline
set softtabstop=0 expandtab shiftwidth=2 smarttab

call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'benmills/vimux'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'rking/ag.vim'
  Plug 'amadeus/vim-mjml'
  Plug 'vim-ruby/vim-ruby'
  Plug 'lifepillar/vim-solarized8'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'vim-syntastic/syntastic'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'w0rp/ale'
call plug#end()

nnoremap ; :
vnoremap ; :

nnoremap Q <Nop>
inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>

nmap , \
vmap , \

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

nmap <Leader>r :!bundle exec rspec %<CR>
nmap <Leader>R :!bundle exec rspec %\:<C-r>=line('.')<CR><CR>

nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>a :Ag<Space>
xnoremap <Leader>A y:Ag <C-r>=fnameescape(@")<CR><CR>

set timeoutlen=350
highlight ColorColumn ctermbg=Gray
set colorcolumn=80,100
set nowrap
set textwidth=80
set number
set incsearch smartcase ignorecase

set backspace=indent,eol,start

set term=xterm-256color
colorscheme solarized8_dark

set noswapfile
set nobackup

set laststatus=2
let g:airline_powerline_fonts = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

nnoremap <Leader>] :bn<CR>
inoremap <Leader>] :bn<CR>
vnoremap <Leader>] :bn<CR>
nnoremap <Leader>[ :bp<CR>
inoremap <Leader>[ :bp<CR>
vnoremap <Leader>[ :bp<CR>

nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

runtime macros/matchit.vim

autocmd BufRead {*_spec.rb,spec_helper.rb} syn keyword rubyRspec
      \ after
      \ before
      \ class_double
      \ context
      \ describe
      \ described_class
      \ double
      \ expect
      \ include_context
      \ include_examples
      \ instance_double
      \ it
      \ it_should_behave_like
      \ it_behaves_like
      \ its
      \ let
      \ object_double
      \ raise_error
      \ setup
      \ shared_context
      \ shared_examples
      \ shared_examples_for
      \ specify
      \ subject
      \ xit

highlight def link rubyRspec Function
command Q q
command W w

" Disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

nmap <silent> <leader>f :ALEFix<CR>
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>>'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \ 'javascript': ['prettier'],
      \ 'jsx': ['prettier'],
      \ 'ruby': ['rubocop']
      \ }
let g:ale_history_enabled = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1
