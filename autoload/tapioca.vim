let s:ignore_char = ['\n', '\r\n', '\r', '	', '\b', ' ', '　']

function! s:tapioca() abort
	for char in s:ignore_char
		if char == v:char
			return
		endif
	endfor
	let v:char = '●'
endfunction

function! tapioca#on() abort
	augroup tapioca
		au!
		au InsertCharPre <buffer> call s:tapioca()
	augroup END
endfunction

function! tapioca#off() abort
	augroup tapioca
		au!
	augroup END
endfunction
