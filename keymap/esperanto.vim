" Vim Keymap file for Esperanto ( http://www.esperanto.net/ )
" Maintainer  : Aaron Irvine
" Last Updated: Fri 09 May 2003 17:28:02
" This calls an Esperanto keyboard layout

set encoding=utf-8
let elekto = confirm( "Por tajpi en Esperanto, uzu cx gx hh jx sx uh\nPli da informoj de http://lingvo.org/klavaro", "Uzu &novan tiparon\nUzu &saman tiparon", '1', 'Info')
digr C> 264 c> 265 G> 284 g> 285 H> 292 h> 293 J> 308 j> 309 S> 348 s> 349 U< 364 u< 365 
if elekto != 2
	if has("win32")
		set guifont=Lucida\ Console
	endif
endif
function! TradukuIA5()
	silent! s/\^C/Ĉ/g
	silent! s/\^c/ĉ/g
	silent! s/\^G/Ĝ/g
	silent! s/\^g/ĝ/g
	silent! s/\^H/Ĥ/g
	silent! s/\^h/ĥ/g
	silent! s/\^J/Ĵ/g
	silent! s/\^j/ĵ/g
	silent! s/\^S/Ŝ/g
	silent! s/\^s/ŝ/g
	silent! s/\~U/Ŭ/g
	silent! s/\~u/ŭ/g
endfunction
command TradukuIA5 %call TradukuIA5()
source <sfile>:p:h/esperanto_utf-8.vim
