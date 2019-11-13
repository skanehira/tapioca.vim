" tapioca
" Version: 0.0.1
" Author: skanehira
" License: MIT

if exists('g:loaded_tapioca')
	finish
endif

let g:loaded_tapioca = 1

let s:save_cpo = &cpo
set cpo&vim

command TapiocaOn call tapioca#on()
command TapiocaOff call tapioca#off()

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
