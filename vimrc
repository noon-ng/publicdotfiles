set list
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨

set nocompatible
set lazyredraw
set wildmenu
set modeline
set softtabstop=0 expandtab shiftwidth=2 smarttab

call plug#begin('~/.vim/plugged')
  Plug 'mcchrish/nnn.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'amadeus/vim-mjml'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'dense-analysis/ale'
  Plug 'janko-m/vim-test'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
  Plug 'tpope/vim-rails'
  Plug 'gabrielelana/vim-markdown'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'rizzatti/dash.vim'
  Plug 'machakann/vim-highlightedyank'
  Plug 'mtth/scratch.vim'
call plug#end()

nnoremap Q <Nop>
inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>

nmap , \
vmap , \

nmap <silent> <Leader>a :Rg<CR>
nmap <silent> <Leader>A :GitFiles<CR>
nmap <silent> <C-p> :GFiles --exclude-standard --others --cached<CR>
nmap <silent> <C-c> :Buffers<CR>

nmap <silent> <CR> :TestFile <CR>

let test#strategy = "neovim"
let test#neovim#term_position = "tab"

if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

let test#ruby#rspec#options = {'file': '--format documentation'}
let g:scratch_persistence_file = '~/.nuno/.vimscratch'

let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
let g:nnn#command = 'nnn -o'

let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-x>': 'split',
      \ '<c-v>': 'vsplit' }

set rtp+=/usr/local/opt/fzf
nmap <Leader>q :bdelete<CR>

set timeoutlen=200
highlight ColorColumn ctermbg=Gray
set colorcolumn=80,100
set nowrap
set textwidth=80
set number
set incsearch smartcase ignorecase
set rnu
set mouse=a

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

set backspace=indent,eol,start

if !has('nvim')
  set term=xterm-256color
endif

colorscheme default

set hidden " allow switching between buffers with unsaved changes
set nobackup
set noswapfile
set nowritebackup

" Auto-reload buffers when file changed on disk (does not always work in reality)
set autoread
" Save all buffers when switching between them, to avoid running tests
" with unsaved changes.
set autowrite
autocmd BufLeave,FocusLost * silent! update

set showcmd
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 0
let g:airline_section_b = ''
let g:airline_theme='bubblegum'
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
nnoremap ] 5gj
nnoremap [ 5gk
nnoremap <Down> gj
nnoremap <Up> gk

runtime macros/matchit.vim

autocmd BufRead {*_spec.rb,spec_helper.rb} syn keyword rubyRspec
      \ after
      \ aggregate_failures
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
      \ scenario
      \ setup
      \ shared_context
      \ shared_examples
      \ shared_examples_for
      \ specify
      \ subject
      \ xit

highlight def link rubyRspec Function
command! Q q
command! W w
command! Wq wq

" Disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

let g:ale_sign_error = 'e'
let g:ale_sign_warning = 'e'
let g:ale_fix_on_save = 1
let g:ale_open_list = 1
let g:ale_set_quickfix = 1
let g:ale_fixers = {
      \ 'javascript': ['prettier'],
      \ 'jsx': ['prettier'],
      \ 'ruby': ['rubocop'],
      \ }
let g:ale_history_enabled = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:airline#extensions#ale#enabled = 0

filetype plugin on

set omnifunc=LanguageClient#complete

let g:LanguageClient_serverCommands = {
      \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio']
      \ }

nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>fr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> <leader>d :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <leader>h :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <leader>m :call LanguageClient_contextMenu()<CR>
nmap <silent> <leader>d <Plug>DashSearch

set path+=app/javascript
