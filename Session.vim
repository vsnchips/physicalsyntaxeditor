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
tabnew
tabrewind
edit proof-of-concept/editor/index.html
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
4wincmd k
wincmd w
wincmd w
wincmd w
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
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 3 + 11) / 23)
exe 'vert 1resize ' . ((&columns * 72 + 122) / 245)
exe '2resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 2resize ' . ((&columns * 72 + 122) / 245)
exe '3resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 3resize ' . ((&columns * 72 + 122) / 245)
exe '4resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 4resize ' . ((&columns * 72 + 122) / 245)
exe '5resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 5resize ' . ((&columns * 72 + 122) / 245)
exe '6resize ' . ((&lines * 9 + 11) / 23)
exe 'vert 6resize ' . ((&columns * 49 + 122) / 245)
exe '7resize ' . ((&lines * 9 + 11) / 23)
exe 'vert 7resize ' . ((&columns * 122 + 122) / 245)
exe '8resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 8resize ' . ((&columns * 83 + 122) / 245)
exe '9resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 9resize ' . ((&columns * 88 + 122) / 245)
exe '10resize ' . ((&lines * 9 + 11) / 23)
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
let s:l = 38 - ((2 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 08|
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
if bufexists("proof-of-concept/exampletarget/index.html") | buffer proof-of-concept/exampletarget/index.html | else | edit proof-of-concept/exampletarget/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 23 - ((3 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 07|
wincmd w
argglobal
if bufexists("proof-of-concept/exampletarget/sketch.js") | buffer proof-of-concept/exampletarget/sketch.js | else | edit proof-of-concept/exampletarget/sketch.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((1 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
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
let s:l = 16 - ((1 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 031|
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
let s:l = 19 - ((5 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 05|
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
let s:l = 110 - ((1 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
110
normal! 029|
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
setlocal fen
silent! normal! zE
let s:l = 111 - ((1 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
111
normal! 017|
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
let s:l = 11 - ((4 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 023|
wincmd w
10wincmd w
exe '1resize ' . ((&lines * 3 + 11) / 23)
exe 'vert 1resize ' . ((&columns * 72 + 122) / 245)
exe '2resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 2resize ' . ((&columns * 72 + 122) / 245)
exe '3resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 3resize ' . ((&columns * 72 + 122) / 245)
exe '4resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 4resize ' . ((&columns * 72 + 122) / 245)
exe '5resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 5resize ' . ((&columns * 72 + 122) / 245)
exe '6resize ' . ((&lines * 9 + 11) / 23)
exe 'vert 6resize ' . ((&columns * 49 + 122) / 245)
exe '7resize ' . ((&lines * 9 + 11) / 23)
exe 'vert 7resize ' . ((&columns * 122 + 122) / 245)
exe '8resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 8resize ' . ((&columns * 83 + 122) / 245)
exe '9resize ' . ((&lines * 1 + 11) / 23)
exe 'vert 9resize ' . ((&columns * 88 + 122) / 245)
exe '10resize ' . ((&lines * 9 + 11) / 23)
tabnext
edit proof-of-concept/exampletarget/sketch.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 101 + 122) / 245)
exe 'vert 2resize ' . ((&columns * 144 + 122) / 245)
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
let s:l = 18 - ((17 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
wincmd w
argglobal
if bufexists("proof-of-concept/hotfolder/sketch.js") | buffer proof-of-concept/hotfolder/sketch.js | else | edit proof-of-concept/hotfolder/sketch.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 101 + 122) / 245)
exe 'vert 2resize ' . ((&columns * 144 + 122) / 245)
tabnext 1
badd +38 Session.vim
badd +11 proof-of-concept/editor.js
badd +23 proof-of-concept/editor/index.html
badd +39 proof-of-concept/exampletarget/index.html
badd +20 proof-of-concept/exampletarget/sketch.js
badd +1 proof-of-concept/editor/hotcode-client.js
badd +28 proof-of-concept/editor/hotcode.js
badd +49 proof-of-concept/editor/editor_core.js
badd +25 proof-of-concept/hotfolder/index.html
badd +20 proof-of-concept/package.json
badd +1 editor/index.html
badd +0 proof-of-concept/hotfolder/sketch.js
badd +1 proof-of-concept/exampletarget
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
