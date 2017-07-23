" realign explicitly
nnoremap <buffer><silent> <Plug>(realign_ruby_method_chain) :<C-U>call realign#ruby_method_chain()<CR>
xnoremap <buffer><silent> <Plug>(realign_ruby_method_chain) :<C-U>call realign#ruby_method_chain()<CR>

" realign automatically
let s:ruby_electric_dot = get(g:, 'realign_ruby_electric_dot', 1)
if s:ruby_electric_dot
  if !hasmapto('<Plug>(realign_ruby_electric_dot)') && maparg('.', 'i') ==# ''
    inoremap <buffer><silent><script> . .<Plug>(realign_ruby_electric_dot)
  endif
endif
inoremap <buffer><silent> <Plug>(realign_ruby_electric_dot) x<Esc>:<C-U>call realign#ruby_method_chain()<CR>s
