nnoremap <buffer> <Plug>(realign_toggle_electric_dot) :RealignToggleElectricDot<CR>

command RealignToggleElectricDot :
      \ let b:realign_electric_dot = !get(b:, 'realign_electric_dot', 0) |
      \ echo 'b:realign_electric_dot =' b:realign_electric_dot
