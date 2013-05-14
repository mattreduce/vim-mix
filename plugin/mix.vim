" mix.vim - Plugin for using Elixir's build tool, `mix`.
" Maintainer:   Matthew Conway <http://www.mattonrails.com/>
" Version:      1.0

function! s:Mix()
  execute '!mix'
endfunction

command! Mix call s:Mix()

" vim:set ft=vim et sw=2:
