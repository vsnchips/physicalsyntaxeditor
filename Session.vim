let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/local/412
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit proof-of-concept/editor.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 141) / 282)
exe 'vert 2resize ' . ((&columns * 83 + 141) / 282)
exe 'vert 3resize ' . ((&columns * 83 + 141) / 282)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 83 + 141) / 282)
exe '5resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 83 + 141) / 282)
argglobal
enew
file ~/local/412
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 42 - ((41 * winheight(0) + 38) / 77)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 040|
wincmd w
argglobal
if bufexists("proof-of-concept/editor/editor_core.js") | buffer proof-of-concept/editor/editor_core.js | else | edit proof-of-concept/editor/editor_core.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 38) / 77)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 06|
wincmd w
argglobal
terminal ++curwin ++cols=83 ++rows=38 
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 57 - ((25 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
57
normal! 035|
wincmd w
argglobal
if bufexists("proof-of-concept/editor/index.html") | buffer proof-of-concept/editor/index.html | else | edit proof-of-concept/editor/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 141) / 282)
exe 'vert 2resize ' . ((&columns * 83 + 141) / 282)
exe 'vert 3resize ' . ((&columns * 83 + 141) / 282)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 83 + 141) / 282)
exe '5resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 83 + 141) / 282)
tabnext 1
badd +1 index.html
badd +5 proof-of-concept/editor/index.html
badd +3 proof-of-concept/editor/editor_core.js
badd +1 proof-of-concept/editor.js
badd +4 proof-of-concept/package.json
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOcsF
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
