nmap Y y$

nmap , \
vmap , \

nmap <Leader>q :bdelete<CR>

nnoremap <M-]> :bn<CR>
vnoremap <M-]> :bn<CR>
nnoremap <M-[> :bp<CR>
vnoremap <M-[> :bp<CR>

map <silent> <m-h> <C-w>h
map <silent> <m-j> <C-w>j
map <silent> <m-k> <C-w>k
map <silent> <m-l> <C-w>l

nmap <silent> <Leader>a :Rg<CR>
nmap <silent> <Leader>A :GitFiles<CR>
nmap <silent> <C-p> :GFiles --exclude-standard --others --cached<CR>
nmap <silent> <C-c> :Buffers<CR>

nmap <silent> <CR> :TestFile <CR>

nmap <silent> <F5> :TestNearest <CR>

nnoremap Q <Nop>

command! Q q
command! Qa qa
command! W w
command! Wq wq
command! WQ wq

if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

nnoremap <leader>n :NnnPicker '%:p:h'<CR>

nmap <silent> <Leader>p :PromoteToLet<CR>
nmap <silent> <Leader>l :DemoteToAssignment<CR>
nmap <silent> <Leader>m :PromoteToMethod<CR>

nmap <silent> <C-a> :A<CR>

nmap <leader>] :call fzf#vim#ag(expand('<cword>'))<CR>
