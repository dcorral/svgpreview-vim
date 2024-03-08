" autoload/mysvgpreview.vim
function! mysvgpreview#Preview()
  let l:current_file = expand('%')
  if l:current_file =~ '\.svg$'
    if has('mac')
      let l:opener = 'open'
    elseif has('unix')
      " Most Linux distributions and possibly other Unix systems
      let l:opener = 'xdg-open'
    elseif has('win32') || has('win64')
      let l:opener = 'start'
    else
      echo "Unsupported OS."
      return
    endif

    " Check if the command exists
    if executable(l:opener)
      execute '!' . l:opener . ' ' . shellescape(l:current_file)
    else
      echo "Command to open SVG files not found."
    endif
  else
    echo "Current file is not an SVG."
  endif
endfunction

