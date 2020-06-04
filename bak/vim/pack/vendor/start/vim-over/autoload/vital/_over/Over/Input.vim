" ___vital___
" NOTE: lines between '" ___vital___' is generated by :Vitalize.
" Do not mofidify the code nor insert new lines before '" ___vital___'
function! s:_SID() abort
  return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze__SID$')
endfunction
execute join(['function! vital#_over#Over#Input#import() abort', printf("return map({'getchar': ''}, \"vital#_over#function('<SNR>%s_' . v:key)\")", s:_SID()), 'endfunction'], "\n")
delfunction s:_SID
" ___vital___
scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


function! s:getchar(...)
	let mode = get(a:, 1, 0)
	while 1
		" Workaround for https://github.com/osyo-manga/vital-over/issues/53
		try
			let char = call("getchar", a:000)
		catch /^Vim:Interrupt$/
			let char = 3 " <C-c>
		endtry
		" Workaround for the <expr> mappings
		if string(char) !=# "\x80\xfd`"
			return mode == 1 ? !!char
\				 : type(char) == type(0) ? nr2char(char) : char
		endif
	endwhile
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
