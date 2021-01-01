let g:ale_sign_error = 'e'
let g:ale_sign_warning = 'e'
let g:ale_fix_on_save = 1
let g:ale_open_list = 0
let g:ale_set_quickfix = 1
let g:ale_fixers = {
      \ 'javascript': ['prettier'],
      \ 'jsx': ['prettier'],
      \ 'ruby': ['rubocop'],
      \ }
let g:ale_history_enabled = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 0
