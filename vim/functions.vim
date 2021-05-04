function! PromoteToLet()
  :normal! dd
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
command! PromoteToLet :call PromoteToLet()

function! DemoteLetToAssignment()
  :normal! dd
  :normal! P
  :.s/let(:\(.*\)) { \(.*\) }/\1 = \2/
  :normal ==
endfunction
command! DemoteToAssignment :call DemoteLetToAssignment()

function! PromoteToMethod()
  :normal! dd
  :normal! P
  :.s/\(\w*\) = \(.*\)$/def \1\r\2\rend/
  :normal =3k3j
endfunction
command! PromoteToMethod :call PromoteToMethod()
