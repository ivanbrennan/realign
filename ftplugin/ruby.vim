" realign explicitly
nnoremap <buffer><silent> <Plug>(realign_ruby_method_chain) :<C-U>call realign#ruby_method_chain()<CR>
xnoremap <buffer><silent> <Plug>(realign_ruby_method_chain) :<C-U>call realign#ruby_method_chain()<CR>

" realign automatically
let s:ruby_electric_dot = get(g:, 'realign_ruby_electric_dot', 1)
if s:ruby_electric_dot
  if maparg('.', 'i') ==# ''
    inoremap <buffer><silent><expr> . get(b:, 'realign_electric_dot', 1) ? ".x\<Left>\<Esc>:\<C-U>call realign#ruby_method_chain()\<CR>ls" : "."
  endif
endif
