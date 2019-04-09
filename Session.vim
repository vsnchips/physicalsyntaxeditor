let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/412proj
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd proof-of-concept/editor.js
edit proof-of-concept/exampletarget/index.html
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe '1resize ' . ((&lines * 1 + 50) / 101)
exe 'vert 1resize ' . ((&columns * 53 + 80) / 161)
exe '2resize ' . ((&lines * 80 + 50) / 101)
exe 'vert 2resize ' . ((&columns * 53 + 80) / 161)
exe '3resize ' . ((&lines * 41 + 50) / 101)
exe 'vert 3resize ' . ((&columns * 53 + 80) / 161)
exe '4resize ' . ((&lines * 41 + 50) / 101)
exe 'vert 4resize ' . ((&columns * 53 + 80) / 161)
exe '5resize ' . ((&lines * 40 + 50) / 101)
exe 'vert 5resize ' . ((&columns * 107 + 80) / 161)
exe '6resize ' . ((&lines * 15 + 50) / 101)
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
let s:l = 26 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 07|
wincmd w
argglobal
if bufexists("proof-of-concept/hotfolder/index.html") | buffer proof-of-concept/hotfolder/index.html | else | edit proof-of-concept/hotfolder/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 39 - ((38 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
39
normal! 0
wincmd w
argglobal
if bufexists("proof-of-concept/editor/hotcode-client.js") | buffer proof-of-concept/editor/hotcode-client.js | else | edit proof-of-concept/editor/hotcode-client.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
argglobal
if bufexists("proof-of-concept/editor/hotcode.js") | buffer proof-of-concept/editor/hotcode.js | else | edit proof-of-concept/editor/hotcode.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 29 - ((28 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 0
wincmd w
argglobal
if bufexists("proof-of-concept/editor.js") | buffer proof-of-concept/editor.js | else | edit proof-of-concept/editor.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("proof-of-concept/editor.js") | buffer proof-of-concept/editor.js | else | edit proof-of-concept/editor.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 123 - ((1 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
123
normal! 03|
wincmd w
exe '1resize ' . ((&lines * 1 + 50) / 101)
exe 'vert 1resize ' . ((&columns * 53 + 80) / 161)
exe '2resize ' . ((&lines * 80 + 50) / 101)
exe 'vert 2resize ' . ((&columns * 53 + 80) / 161)
exe '3resize ' . ((&lines * 41 + 50) / 101)
exe 'vert 3resize ' . ((&columns * 53 + 80) / 161)
exe '4resize ' . ((&lines * 41 + 50) / 101)
exe 'vert 4resize ' . ((&columns * 53 + 80) / 161)
exe '5resize ' . ((&lines * 40 + 50) / 101)
exe 'vert 5resize ' . ((&columns * 107 + 80) / 161)
exe '6resize ' . ((&lines * 15 + 50) / 101)
tabnext 1
badd +82 proof-of-concept/editor.js
badd +20 proof-of-concept/package.json
badd +26 proof-of-concept/exampletarget/index.html
badd +0 proof-of-concept/hotfolder/index.html
badd +28 proof-of-concept/editor/hotcode.js
badd +1 proof-of-concept/editor/hotcode-client.js
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
