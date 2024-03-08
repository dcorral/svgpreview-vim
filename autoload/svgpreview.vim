" autoload/mysvgpreview.vim
function! mysvgpreview#Preview()
  let l:current_file = expand('%:p')
  if l:current_file =~ '\.svg$'
    " Determine the appropriate command based on the OS
    if has('macunix')
      let l:cmd = 'open'
    elseif has('unix')
      let l:cmd = 'xdg-open'
    elseif has('win32') || has('win64')
      let l:cmd = 'start'
    else
      echo "Unsupported OS."
      return
    endif

    " Check if the command exists
    if executable(l:cmd)
      execute '!' . l:cmd . ' ' . shellescape(l:current_file)
    else
      echo l:cmd . " command not found."
    endif
  else
    echo "Current file is not an SVG."
  endif
endfunction

