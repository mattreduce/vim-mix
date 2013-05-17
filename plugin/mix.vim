" mix.vim - Plugin for using Elixir's build tool, `mix`.
" Maintainer:   Matthew Conway <http://www.mattonrails.com/>
" Version:      0.1.0

if exists('g:loaded_mix') || &cp
  finish
endif
let g:loaded_mix = 1

function! s:Mix(...)
  if a:0 == 0
    execute '!mix'
  elseif a:0 == 1
    " Execute a top-level mix command
    execute '!mix ' . a:1
  else
    " Execute a subcommand, which is separated by a dot
    execute '!mix ' . a:1 . '.' . a:2
  endif
endfunction

" TODO: support command options
command! -nargs=? Mix call s:Mix(<f-args>)

function! s:Mclean()
  call s:Mix('clean')
endfunction

command! Mclean call s:Mclean()

function! s:Mcompile()
  call s:Mix('compile')
endfunction

command! Mcompile call s:Mcompile()

function! s:Mdeps(...)
  if a:0 == 0
    call s:Mix('deps')
  else
    call s:Mix('deps', a:1)
  endif
endfunction

command! -nargs=? Mdeps call s:Mdeps(<f-args>)

function! s:Mtest()
  " TODO: load failures into the QuickFix list
  call s:Mix('test')
endfunction

command! Mtest call s:Mtest()

" vim:set ft=vim et sw=2:
