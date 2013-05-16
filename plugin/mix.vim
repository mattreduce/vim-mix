" mix.vim - Plugin for using Elixir's build tool, `mix`.
" Maintainer:   Matthew Conway <http://www.mattonrails.com/>
" Version:      0.0.1

if exists('g:loaded_mix') || &cp
  finish
endif
let g:loaded_mix = 1

function! s:Mix(...)
  if a:0 == 0
    execute '!mix'
  else
    execute '!mix '.a:1
  endif
endfunction

command! -nargs=? Mix call s:Mix(<f-args>)

function! s:Mclean()
  call s:Mix('clean')
endfunction

command! Mclean call s:Mclean()

function! s:Mcompile()
  call s:Mix('compile')
endfunction

command! Mcompile call s:Mcompile()

" vim:set ft=vim et sw=2:
