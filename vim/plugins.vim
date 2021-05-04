call plug#begin('~/.vim/plugged')
  Plug 'mcchrish/nnn.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'amadeus/vim-mjml'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-dispatch'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'dense-analysis/ale'
  Plug 'janko-m/vim-test'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'gabrielelana/vim-markdown'
  Plug 'machakann/vim-highlightedyank'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'jxnblk/vim-mdx-js'
call plug#end()
