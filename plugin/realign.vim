nnoremap <Plug>(realign_toggle_electric_dot) :RealignToggleElectricDot<CR>
inoremap <Plug>(realign_toggle_electric_dot) <Esc>:RealignToggleElectricDot<CR>gi

command RealignToggleElectricDot call RealignToggleElectricDot()

func! RealignToggleElectricDot()
  let b:realign_electric_dot = !get(b:, 'realign_electric_dot', 0)
  echo 'b:realign_electric_dot =' b:realign_electric_dot
endf
