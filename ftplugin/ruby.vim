" realign explicitly
nnoremap <buffer><silent> <Plug>(realign_method_chain) :<C-U>call realign#ruby_method_chain()<CR>
xnoremap <buffer><silent> <Plug>(realign_method_chain) :<C-U>call realign#ruby_method_chain()<CR>
inoremap <buffer><silent> <Plug>(realign_method_chain) <Esc>:<C-U>call realign#ruby_method_chain()<CR>a

" realign automatically
if get(g:, 'realign_ruby_electric_dot', 1)
  if maparg('.', 'i') ==# ''
    inoremap <buffer><silent><expr> . <SID>electric_dot_expr()

    func! <SID>electric_dot_expr()
      return get(b:, 'realign_electric_dot', 0) ? s:electric_dot_rhs : '.'
    endf

    let s:electric_dot_rhs = ".\<Esc>:\<C-U>call realign#ruby_method_chain()\<CR>a"
  endif
endif
