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
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-rails'
  Plug 'gabrielelana/vim-markdown'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'rizzatti/dash.vim'
  Plug 'machakann/vim-highlightedyank'
  Plug 'mtth/scratch.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
