let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Content/TheWorks/Output/DoneWeb/Tom\ White\'s\ Creative\ Code\ Class/pj2Master
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/local/412/babel_proj/moriscript/moriscript.js
edit ~/local/412/babel_proj/moriscript/run.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 15 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 29 + 68) / 137)
exe '2resize ' . ((&lines * 27 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 29 + 68) / 137)
exe 'vert 3resize ' . ((&columns * 1 + 68) / 137)
exe 'vert 4resize ' . ((&columns * 105 + 68) / 137)
argglobal
enew
file ~/Content/TheWorks/Output/DoneWeb/Tom\ White\'s\ Creative\ Code\ Class/pj2Master
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
let s:l = 19 - ((16 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
wincmd w
argglobal
if bufexists("~/local/412/babel_proj/moriscript/moriscript.js") | buffer ~/local/412/babel_proj/moriscript/moriscript.js | else | edit ~/local/412/babel_proj/moriscript/moriscript.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 14 - ((1 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 03|
wincmd w
argglobal
if bufexists("sketch2.js") | buffer sketch2.js | else | edit sketch2.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 15 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 29 + 68) / 137)
exe '2resize ' . ((&lines * 27 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 29 + 68) / 137)
exe 'vert 3resize ' . ((&columns * 1 + 68) / 137)
exe 'vert 4resize ' . ((&columns * 105 + 68) / 137)
tabnext 1
badd +1 ~/local/412/babel_proj/Session.vim
badd +1 ~/local/412/babel_proj/moriscript/moriscript.js
badd +1 ~/local/412/babel_proj/moriscript/run.js
badd +1 ~/local/412/babel_proj/case.ms
badd +3 ~/local/412/babel_proj/run.js
badd +0 ~/Content/Thumbs.db
badd +1 sketch.html
badd +1 README.md
badd +0 sketch2.js
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
