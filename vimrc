" Plugin installation directives.
source ~/.nunopublic/vim/plugins.vim

" Base configs.
source ~/.nunopublic/vim/settings.vim
source ~/.nunopublic/vim/autocmds.vim
source ~/.nunopublic/vim/functions.vim

" Plugin-specific configs.
source ~/.nunopublic/vim/vim-test.vim
source ~/.nunopublic/vim/nnn.vim
source ~/.nunopublic/vim/lightline.vim
source ~/.nunopublic/vim/vimscratch.vim
source ~/.nunopublic/vim/ctrlp.vim
source ~/.nunopublic/vim/ruby.vim
source ~/.nunopublic/vim/ale.vim
source ~/.nunopublic/vim/coc.vim

runtime macros/matchit.vim

" Load this last so everything we might want
" to map is available
source ~/.nunopublic/vim/mappings.vim
