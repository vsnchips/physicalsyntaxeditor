let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/412proj
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +37 proof-of-concept/editor/index.html
badd +0 proof-of-concept/editor.js
badd +0 proof-of-concept/exampletarget/index.html
badd +0 proof-of-concept/editor/hotcode-client.js
argglobal
silent! argdel *
$argadd proof-of-concept/editor.js
edit proof-of-concept/editor/index.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 21 + 33) / 66)
exe 'vert 1resize ' . ((&columns * 39 + 92) / 184)
exe '2resize ' . ((&lines * 21 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 39 + 92) / 184)
exe '3resize ' . ((&lines * 20 + 33) / 66)
exe 'vert 3resize ' . ((&columns * 39 + 92) / 184)
exe 'vert 4resize ' . ((&columns * 144 + 92) / 184)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 23 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
wincmd w
argglobal
if bufexists('proof-of-concept/exampletarget/index.html') | buffer proof-of-concept/exampletarget/index.html | else | edit proof-of-concept/exampletarget/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((17 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 03|
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
if bufexists('proof-of-concept/editor/index.html') | buffer proof-of-concept/editor/index.html | else | edit proof-of-concept/editor/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 23 - ((22 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
wincmd w
exe '1resize ' . ((&lines * 21 + 33) / 66)
exe 'vert 1resize ' . ((&columns * 39 + 92) / 184)
exe '2resize ' . ((&lines * 21 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 39 + 92) / 184)
exe '3resize ' . ((&lines * 20 + 33) / 66)
exe 'vert 3resize ' . ((&columns * 39 + 92) / 184)
exe 'vert 4resize ' . ((&columns * 144 + 92) / 184)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 shortmess=aoO
set winminheight=0 winminwidth=0
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
