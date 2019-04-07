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
2wincmd h
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
exe 'vert 1resize ' . ((&columns * 70 + 73) / 147)
exe 'vert 2resize ' . ((&columns * 24 + 73) / 147)
exe '3resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 51 + 73) / 147)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 51 + 73) / 147)
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
let s:l = 91 - ((2 * winheight(0) + 38) / 77)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
91
normal! 02|
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
let s:l = 44 - ((41 * winheight(0) + 38) / 77)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 09|
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
let s:l = 2 - ((1 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
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
let s:l = 16 - ((15 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 70 + 73) / 147)
exe 'vert 2resize ' . ((&columns * 24 + 73) / 147)
exe '3resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 51 + 73) / 147)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 51 + 73) / 147)
tabnext 1
badd +1 proof-of-concept/editor.js
badd +1 ~/local/412
badd +49 proof-of-concept/editor/editor_core.js
badd +4 proof-of-concept/editor/index.html
badd +1 index.html
badd +16 proof-of-concept/package.json
badd +1 proof-of-concept
badd +40 websocket-demo/public/client.js
badd +32 websocket-demo/server.js
badd +3 websocket-demo/public/index.html
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
