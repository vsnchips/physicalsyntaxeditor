let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <D-BS> 
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <D-Down> <C-End>
inoremap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
inoremap <silent> <Plug>(complete_parameter#overload_up) :call cmp#overload_next(0)
inoremap <silent> <Plug>(complete_parameter#overload_down) :call cmp#overload_next(1)
inoremap <silent> <Plug>(complete_parameter#goto_previous_parameter) :call cmp#goto_next_param(0)
inoremap <silent> <Plug>(complete_parameter#goto_next_parameter) :call cmp#goto_next_param(1)
inoremap <silent> <Plug>(matchup-c_g%) :call matchup#motion#insert_mode()
inoremap <silent> <expr> <Plug>(asyncomplete_force_refresh) asyncomplete#force_refresh()
inoremap <expr> <PageUp> pumvisible() ? "\<PageUp>\\" : "\<PageUp>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\\" : "\<PageDown>"
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
imap <silent> <expr> <S-Tab> SpaceVim#mapping#shift_tab()
inoremap <S-CR> o
inoremap <silent> <C-S-Up> :m .-2==gi
inoremap <silent> <C-S-Down> :m .+1==gi
noremap <expr>  max([winheight(0) - 2, 1]) ."\".(line('w0') <= 1 ? "H" : "L")
nnoremap <silent>  :call zvim#util#CopyToClipboard()
noremap <expr>  (line("w$") >= line('$') ? "j" : "3\")
noremap <expr>  max([winheight(0) - 2, 1]) ."\".(line('w$') >= line('$') ? "L" : "H")
smap <expr> 	 neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : (complete_parameter#jumpable(1) ? "\<Plug>(complete_parameter#goto_next_parameter)" : "\	")
nnoremap <silent> 	 :wincmd w
xnoremap 	 >gv
nnoremap <silent>  
vnoremap  :w
nnoremap  :w
nnoremap <silent>  x
noremap <expr>  (line("w0") <= 1         ? "k" : "3\")
tnoremap <silent>  
vmap   [SPC]
nmap   [SPC]
omap <silent> % <Plug>(matchup-%)
xmap <silent> % <Plug>(matchup-%)
nmap <silent> % <Plug>(matchup-%)
xmap , [SPC]l
nmap , [SPC]l
nnoremap <silent> ,  :silent! keeppatterns %substitute/\s\+$//e
nnoremap < <<_
xnoremap < <gv
nnoremap > >>_
xnoremap > >gv
imap <expr> ¯ neosnippet#expandable() ? "\<Plug>(neosnippet_expand)" : ""
omap F <Plug>(clever-f-F)
xmap F <Plug>(clever-f-F)
nmap F <Plug>(clever-f-F)
vmap <silent> J <Plug>(jplus)
nmap <silent> J <Plug>(jplus)
xmap S <Plug>VSurround
omap T <Plug>(clever-f-T)
xmap T <Plug>(clever-f-T)
nmap T <Plug>(clever-f-T)
xmap V <Plug>(expand_region_shrink)
omap <silent> [% <Plug>(matchup-[%)
xmap <silent> [% <Plug>(matchup-[%)
nmap <silent> [% <Plug>(matchup-[%)
nnoremap <silent> [SPC]as :Startify | doautocmd WinEnter
nnoremap <silent> [SPC]tmT :if &laststatus == 2 | let &laststatus = 0 | else | let &laststatus = 2 | endif
nnoremap <silent> [SPC]tmp :call SpaceVim#layers#core#statusline#toggle_section("cursorpos")
nnoremap <silent> [SPC]tmt :call SpaceVim#layers#core#statusline#toggle_section("time")
nnoremap <silent> [SPC]tmi :call SpaceVim#layers#core#statusline#toggle_section("input method")
nnoremap <silent> [SPC]tmd :call SpaceVim#layers#core#statusline#toggle_section("date")
nnoremap <silent> [SPC]tmb :call SpaceVim#layers#core#statusline#toggle_section("battery status")
nnoremap <silent> [SPC]tmM :call SpaceVim#layers#core#statusline#toggle_section("major mode")
nnoremap <silent> [SPC]tmm :call SpaceVim#layers#core#statusline#toggle_section("minor mode lighters")
nmap <silent> [SPC]; <Plug>CommentOperator
xmap <silent> [SPC]cP <Plug>CommentParagraphs
nmap <silent> [SPC]cP <Plug>CommentParagraphs
xmap <silent> [SPC]cp <Plug>CommentParagraphsInvert
nmap <silent> [SPC]cp <Plug>CommentParagraphsInvert
xmap <silent> [SPC]cT <Plug>CommentToLine
nmap <silent> [SPC]cT <Plug>CommentToLine
xmap <silent> [SPC]ct <Plug>CommentToLineInvert
nmap <silent> [SPC]ct <Plug>CommentToLineInvert
xmap <silent> [SPC]c$ <Plug>NERDCommenterToEOL
nmap <silent> [SPC]c$ <Plug>NERDCommenterToEOL
xmap <silent> [SPC]cY <Plug>NERDCommenterYank
nmap <silent> [SPC]cY <Plug>NERDCommenterYank
xmap <silent> [SPC]cs <Plug>NERDCommenterSexy
nmap <silent> [SPC]cs <Plug>NERDCommenterSexy
xmap <silent> [SPC]cv <Plug>NERDCommenterInvertgv
nmap <silent> [SPC]cv <Plug>NERDCommenterInvertgv
xmap <silent> [SPC]cu <Plug>NERDCommenterUncomment
nmap <silent> [SPC]cu <Plug>NERDCommenterUncomment
xmap <silent> [SPC]cL <Plug>NERDCommenterComment
nmap <silent> [SPC]cL <Plug>NERDCommenterComment
xmap <silent> [SPC]cl <Plug>NERDCommenterInvert
nmap <silent> [SPC]cl <Plug>NERDCommenterInvert
nnoremap <silent> [SPC]qt :tabclose!
nnoremap <silent> [SPC]qr :
nnoremap <silent> [SPC]qR :
nnoremap <silent> [SPC]qQ :qa!
nnoremap <silent> [SPC]qq :qa
nnoremap <silent> [SPC]p/ :Grepper
nnoremap <silent> [SPC]pp :call SpaceVim#plugins#projectmanager#list()
nnoremap <silent> [SPC]pk :call SpaceVim#plugins#projectmanager#kill_project()
nnoremap <silent> [SPC]pt :call SpaceVim#plugins#projectmanager#current_root()
nnoremap <silent> [SPC]fvd :SPConfig
nnoremap <silent> [SPC]fvv :let @+=g:spacevim_version | echo g:spacevim_version
nnoremap <silent> [SPC]fy :call zvim#util#CopyToClipboard()
nnoremap <silent> [SPC]bt :VimFilerBufferDir -no-toggle
nnoremap <silent> [SPC]fo :VimFiler -find
nnoremap <silent> [SPC]fT :VimFiler -no-toggle | doautocmd WinEnter
nnoremap <silent> [SPC]ft :VimFiler | doautocmd WinEnter
nnoremap <silent> [SPC]f/ :call SpaceVim#plugins#find#open()
nnoremap <silent> [SPC]fF :normal! gf
nnoremap <silent> [SPC]fCu :update | e ++ff=dos | setlocal ff=unix | w
nnoremap <silent> [SPC]fCd :update | e ++ff=dos | w
nnoremap <silent> [SPC]fb :BookmarkShowAll
nnoremap <silent> [SPC]bNn :enew
nnoremap <silent> [SPC]bNl :rightbelow vertical new
nnoremap <silent> [SPC]bNk :new
nnoremap <silent> [SPC]bNj :rightbelow new
nnoremap <silent> [SPC]bNh :topleft vertical new
nnoremap <silent> [SPC]bw :setl readonly!
nnoremap <silent> [SPC]bY :normal! ggVG"+y``
nnoremap <silent> [SPC]bP :normal! ggdG"+P
nnoremap <silent> [SPC]bh :Startify
nnoremap <silent> [SPC]bc :call SpaceVim#mapping#clear_saved_buffers()
nnoremap <silent> [SPC]b :call SpaceVim#mapping#clearBuffers()
nnoremap <silent> [SPC]bD :call SpaceVim#mapping#kill_visible_buffer_choosewin()
nnoremap <silent> [SPC]bd :call SpaceVim#mapping#close_current_buffer()
nnoremap <silent> [SPC]	 :try | b# | catch | endtry
nnoremap <silent> [SPC]jo ik$
nnoremap <silent> [SPC]jn i
nmap <silent> [SPC]jq <Plug>(easymotion-overwin-line)
nmap <silent> [SPC]jw <Plug>(easymotion-overwin-w)
nmap <silent> [SPC]jv <Plug>(easymotion-overwin-line)
nmap <silent> [SPC]jl <Plug>(easymotion-overwin-line)
nnoremap <silent> [SPC]jk j==
nmap <silent> [SPC]jJ <Plug>(easymotion-overwin-f2)
nmap <silent> [SPC]jj <Plug>(easymotion-overwin-f)
nnoremap <silent> [SPC]jD :VimFiler
nnoremap <silent> [SPC]jd :VimFiler -no-split
nnoremap <silent> [SPC]jf 	
nnoremap <silent> [SPC]jb 
nnoremap <silent> [SPC]j$ m`g_
nnoremap <silent> [SPC]j0 m`^
nnoremap <silent> [SPC]hk :LeaderGuide "[KEYs]"
nnoremap <silent> [SPC]hm :Unite manpage
nnoremap <silent> [SPC]hL :SPRuntimeLog
nnoremap <silent> [SPC]hl :SPLayer -l
nnoremap <silent> [SPC]hI :call SpaceVim#issue#report()
nnoremap <silent> [SPC]fS :wall
nnoremap <silent> [SPC]fs :write
nnoremap <silent> [p P
nnoremap <silent> [t :tabprevious
nnoremap <silent> [l :lprevious
nnoremap <silent> [b :bN | stopinsert
nnoremap <silent> [e :execute 'move -1-'. v:count1
nnoremap <silent> [  :put! =repeat(nr2char(10), v:count1)
nnoremap <silent> [SPC]tW :setlocal wrap!
nnoremap <silent> [SPC]tl :setlocal list!
nnoremap <silent> [SPC]TF <F11>
nnoremap <silent> [SPC]thc :set cursorcolumn!
nnoremap <silent> [SPC]tt :call SpaceVim#plugins#tabmanager#open()
nnoremap <silent> [SPC]tb :call ToggleBG()
nnoremap <silent> [SPC]iu :Unite unicode
vnoremap <silent> [SPC]xwc :normal! :'<,'>s/\w\+//gn
vnoremap <silent> [SPC]xU gU
vnoremap <silent> [SPC]xu gu
nnoremap <silent> [SPC]xdw :StripWhitespace
xnoremap <silent> [SPC]xa[SPC] :Tabularize /\s\ze\S/l0
nnoremap <silent> [SPC]xa[SPC] :Tabularize /\s\ze\S/l0
xnoremap <silent> [SPC]xa| :Tabularize /|
nnoremap <silent> [SPC]xa| :Tabularize /|
xnoremap <silent> [SPC]xa¦ :Tabularize /¦
nnoremap <silent> [SPC]xa¦ :Tabularize /¦
xnoremap <silent> [SPC]xao :Tabularize /&&\|||\|\.\.\|\*\*\|<<\|>>\|\/\/\|[-+*/.%^><&|?]/l1r1
nnoremap <silent> [SPC]xao :Tabularize /&&\|||\|\.\.\|\*\*\|<<\|>>\|\/\/\|[-+*/.%^><&|?]/l1r1
xnoremap <silent> [SPC]xa= :Tabularize /===\|<=>\|\(&&\|||\|<<\|>>\|\/\/\)=\|=\~[#?]\?\|=>\|[:+/*!%^=><&|.?-]\?=[#?]\?/l1r1
nnoremap <silent> [SPC]xa= :Tabularize /===\|<=>\|\(&&\|||\|<<\|>>\|\/\/\)=\|=\~[#?]\?\|=>\|[:+/*!%^=><&|.?-]\?=[#?]\?/l1r1
xnoremap <silent> [SPC]xa; :Tabularize /;
nnoremap <silent> [SPC]xa; :Tabularize /;
xnoremap <silent> [SPC]xa: :Tabularize /:
nnoremap <silent> [SPC]xa: :Tabularize /:
xnoremap <silent> [SPC]xa. :Tabularize /.
nnoremap <silent> [SPC]xa. :Tabularize /.
xnoremap <silent> [SPC]xa, :Tabularize /,
nnoremap <silent> [SPC]xa, :Tabularize /,
xnoremap <silent> [SPC]xa} :Tabularize /}
nnoremap <silent> [SPC]xa} :Tabularize /}
xnoremap <silent> [SPC]xa{ :Tabularize /{
nnoremap <silent> [SPC]xa{ :Tabularize /{
xnoremap <silent> [SPC]xa] :Tabularize /]
nnoremap <silent> [SPC]xa] :Tabularize /]
xnoremap <silent> [SPC]xa[ :Tabularize /[
nnoremap <silent> [SPC]xa[ :Tabularize /[
xnoremap <silent> [SPC]xa) :Tabularize /)
nnoremap <silent> [SPC]xa) :Tabularize /)
xnoremap <silent> [SPC]xa( :Tabularize /(
nnoremap <silent> [SPC]xa( :Tabularize /(
xnoremap <silent> [SPC]xa& :Tabularize /&
nnoremap <silent> [SPC]xa& :Tabularize /&
xmap <silent> [SPC]xc <Plug>CountSelectionRegion
nmap <silent> [SPC]xc <Plug>CountSelectionRegion
nnoremap <silent> [SPC]bf :Neoformat
nnoremap <silent> [SPC]eh :
nnoremap <silent> [SPC]is :Unite neosnippet
nnoremap <silent> [SPC]hdk :call SpaceVim#plugins#help#describe_key()
nnoremap <silent> [SPC]hdb :call SpaceVim#plugins#help#describe_bindings()
nnoremap <silent> [SPC]sh :call SpaceVim#plugins#highlight#start(0)
nnoremap <silent> [SPC]sH :call SpaceVim#plugins#highlight#start(1)
xmap <silent> [SPC]se <Plug>SpaceVim-plugin-iedit
nmap <silent> [SPC]se <Plug>SpaceVim-plugin-iedit
nnoremap <silent> [SPC]sc :noh
nnoremap <silent> [SPC]s/ :call SpaceVim#plugins#flygrep#open({})
nnoremap <silent> [SPC]sgG :call SpaceVim#plugins#flygrep#open({})
nnoremap <silent> [SPC]stJ :call SpaceVim#plugins#searcher#find(expand("<cword>"), "pt")
nnoremap <silent> [SPC]stj :call SpaceVim#plugins#searcher#find("", "pt")
nnoremap <silent> [SPC]stF :call SpaceVim#mapping#search#grep("t", "F")
nnoremap <silent> [SPC]stf :call SpaceVim#mapping#search#grep("t", "f")
nnoremap <silent> [SPC]stP :call SpaceVim#mapping#search#grep("t", "P")
nnoremap <silent> [SPC]stp :call SpaceVim#mapping#search#grep("t", "p")
nnoremap <silent> [SPC]stD :call SpaceVim#mapping#search#grep("t", "D")
nnoremap <silent> [SPC]std :call SpaceVim#mapping#search#grep("t", "d")
nnoremap <silent> [SPC]stB :call SpaceVim#mapping#search#grep("t", "B")
nnoremap <silent> [SPC]stb :call SpaceVim#mapping#search#grep("t", "b")
nnoremap <silent> [SPC]siJ :call SpaceVim#plugins#searcher#find(expand("<cword>"), "findstr")
nnoremap <silent> [SPC]sij :call SpaceVim#plugins#searcher#find("", "findstr")
nnoremap <silent> [SPC]siF :call SpaceVim#mapping#search#grep("i", "F")
nnoremap <silent> [SPC]sif :call SpaceVim#mapping#search#grep("i", "f")
nnoremap <silent> [SPC]siP :call SpaceVim#mapping#search#grep("i", "P")
nnoremap <silent> [SPC]sip :call SpaceVim#mapping#search#grep("i", "p")
nnoremap <silent> [SPC]siD :call SpaceVim#mapping#search#grep("i", "D")
nnoremap <silent> [SPC]sid :call SpaceVim#mapping#search#grep("i", "d")
nnoremap <silent> [SPC]siB :call SpaceVim#mapping#search#grep("i", "B")
nnoremap <silent> [SPC]sib :call SpaceVim#mapping#search#grep("i", "b")
nnoremap <silent> [SPC]srJ :call SpaceVim#plugins#searcher#find(expand("<cword>"), "rg")
nnoremap <silent> [SPC]srj :call SpaceVim#plugins#searcher#find("", "rg")
nnoremap <silent> [SPC]srF :call SpaceVim#mapping#search#grep("r", "F")
nnoremap <silent> [SPC]srf :call SpaceVim#mapping#search#grep("r", "f")
nnoremap <silent> [SPC]srP :call SpaceVim#mapping#search#grep("r", "P")
nnoremap <silent> [SPC]srp :call SpaceVim#mapping#search#grep("r", "p")
nnoremap <silent> [SPC]srD :call SpaceVim#mapping#search#grep("r", "D")
nnoremap <silent> [SPC]srd :call SpaceVim#mapping#search#grep("r", "d")
nnoremap <silent> [SPC]srB :call SpaceVim#mapping#search#grep("r", "B")
nnoremap <silent> [SPC]srb :call SpaceVim#mapping#search#grep("r", "b")
nnoremap <silent> [SPC]skJ :call SpaceVim#plugins#searcher#find(expand("<cword>"), "ack")
nnoremap <silent> [SPC]skj :call SpaceVim#plugins#searcher#find("", "ack")
nnoremap <silent> [SPC]skF :call SpaceVim#mapping#search#grep("k", "F")
nnoremap <silent> [SPC]skf :call SpaceVim#mapping#search#grep("k", "f")
nnoremap <silent> [SPC]skP :call SpaceVim#mapping#search#grep("k", "P")
nnoremap <silent> [SPC]skp :call SpaceVim#mapping#search#grep("k", "p")
nnoremap <silent> [SPC]skD :call SpaceVim#mapping#search#grep("k", "D")
nnoremap <silent> [SPC]skd :call SpaceVim#mapping#search#grep("k", "d")
nnoremap <silent> [SPC]skB :call SpaceVim#mapping#search#grep("k", "B")
nnoremap <silent> [SPC]skb :call SpaceVim#mapping#search#grep("k", "b")
nnoremap <silent> [SPC]sgJ :call SpaceVim#plugins#searcher#find(expand("<cword>"), "grep")
nnoremap <silent> [SPC]sgj :call SpaceVim#plugins#searcher#find("", "grep")
nnoremap <silent> [SPC]sgF :call SpaceVim#mapping#search#grep("g", "F")
nnoremap <silent> [SPC]sgf :call SpaceVim#mapping#search#grep("g", "f")
nnoremap <silent> [SPC]sgP :call SpaceVim#mapping#search#grep("g", "P")
nnoremap <silent> [SPC]sgp :call SpaceVim#mapping#search#grep("g", "p")
nnoremap <silent> [SPC]sgD :call SpaceVim#mapping#search#grep("g", "D")
nnoremap <silent> [SPC]sgd :call SpaceVim#mapping#search#grep("g", "d")
nnoremap <silent> [SPC]sgB :call SpaceVim#mapping#search#grep("g", "B")
nnoremap <silent> [SPC]sgb :call SpaceVim#mapping#search#grep("g", "b")
nnoremap <silent> [SPC]saJ :call SpaceVim#plugins#searcher#find(expand("<cword>"), "ag")
nnoremap <silent> [SPC]saj :call SpaceVim#plugins#searcher#find("", "ag")
nnoremap <silent> [SPC]saF :call SpaceVim#mapping#search#grep("a", "F")
nnoremap <silent> [SPC]saf :call SpaceVim#mapping#search#grep("a", "f")
nnoremap <silent> [SPC]saP :call SpaceVim#mapping#search#grep("a", "P")
nnoremap <silent> [SPC]sap :call SpaceVim#mapping#search#grep("a", "p")
nnoremap <silent> [SPC]saD :call SpaceVim#mapping#search#grep("a", "D")
nnoremap <silent> [SPC]sad :call SpaceVim#mapping#search#grep("a", "d")
nnoremap <silent> [SPC]saB :call SpaceVim#mapping#search#grep("a", "B")
nnoremap <silent> [SPC]sab :call SpaceVim#mapping#search#grep("a", "b")
nnoremap <silent> [SPC]sl :call SpaceVim#plugins#searcher#list()
nnoremap <silent> [SPC]sJ :call SpaceVim#plugins#searcher#find(expand("<cword>"),SpaceVim#mapping#search#default_tool()[0])
nnoremap <silent> [SPC]sj :call SpaceVim#plugins#searcher#find("", SpaceVim#mapping#search#default_tool()[0])
nnoremap <silent> [SPC]sP :call SpaceVim#plugins#flygrep#open({'input' : expand("<cword>"), 'dir' : get(b:, "rootDir", getcwd())})
nnoremap <silent> [SPC]sp :call SpaceVim#plugins#flygrep#open({'input' : input("grep pattern:"), 'dir' : get(b:, "rootDir", getcwd())})
nnoremap <silent> [SPC]sF :call SpaceVim#plugins#flygrep#open({'input' : expand("<cword>"), 'dir' : input("arbitrary dir:", '', 'dir')})
nnoremap <silent> [SPC]sf :call SpaceVim#plugins#flygrep#open({'input' : input("grep pattern:"), 'dir' : input("arbitrary dir:", '', 'dir')})
nnoremap <silent> [SPC]sD :call SpaceVim#plugins#flygrep#open({'input' : expand("<cword>"), 'dir' : fnamemodify(expand('%'), ':p:h')})
nnoremap <silent> [SPC]sd :call SpaceVim#plugins#flygrep#open({'input' : input("grep pattern:"), 'dir' : fnamemodify(expand('%'), ':p:h')})
nnoremap <silent> [SPC]sB :call SpaceVim#plugins#flygrep#open({'input' : expand("<cword>"), 'files':'@buffers'})
nnoremap <silent> [SPC]sb :call SpaceVim#plugins#flygrep#open({'input' : input("grep pattern:"), 'files':'@buffers'})
nnoremap <silent> [SPC]sS :call SpaceVim#plugins#flygrep#open({'input' : expand("<cword>"), 'files': bufname("%")})
nnoremap <silent> [SPC]ss :call SpaceVim#plugins#flygrep#open({'input' : input("grep pattern:"), 'files': bufname("%")})
nnoremap <silent> [SPC]tn :setlocal nonumber! norelativenumber!
nnoremap <silent> [SPC]bp :bp
nnoremap <silent> [SPC]bn :bnext
nnoremap <silent> [SPC]wU :call SpaceVim#plugins#windowsmanager#RedoQuitWin()
nnoremap <silent> [SPC]wu :call SpaceVim#plugins#windowsmanager#UndoQuitWin()
nnoremap <silent> [SPC]wW :ChooseWin
nnoremap <silent> [SPC]ww :wincmd w
nnoremap <silent> [SPC]w= :wincmd =
nnoremap <silent> [SPC]wV :bel vs
nnoremap <silent> [SPC]w3 :silent only | vs | vs | wincmd H
nnoremap <silent> [SPC]w2 :silent only | vs | wincmd w
nnoremap <silent> [SPC]wS :bel split
nnoremap <silent> [SPC]ws :bel split | wincmd w
nnoremap <silent> [SPC]w- :bel split | wincmd w
nnoremap <silent> [SPC]wv :belowright vsplit | wincmd w
nnoremap <silent> [SPC]w/ :belowright vsplit | wincmd w
nnoremap <silent> [SPC]wo :tabnext
nnoremap <silent> [SPC]wM :ChooseWinSwap
nnoremap <silent> [SPC]wm :only
nnoremap <silent> [SPC]wL :wincmd L
nnoremap <silent> [SPC]wK :wincmd K
nnoremap <silent> [SPC]wJ :wincmd J
nnoremap <silent> [SPC]wH :wincmd H
nnoremap <silent> [SPC]wl :wincmd l
nnoremap <silent> [SPC]wk :wincmd k
nnoremap <silent> [SPC]wj :wincmd j
nnoremap <silent> [SPC]wh :wincmd h
nnoremap <silent> [SPC]wf :tabnew
nnoremap <silent> [SPC]wD :ChooseWin | close | wincmd w
nnoremap <silent> [SPC]wd :close
nnoremap <silent> [SPC]w	 :wincmd w
nnoremap <silent> [SPC]9 :call SpaceVim#layers#core#statusline#jump(9)
nnoremap <silent> [SPC]8 :call SpaceVim#layers#core#statusline#jump(8)
nnoremap <silent> [SPC]7 :call SpaceVim#layers#core#statusline#jump(7)
nnoremap <silent> [SPC]6 :call SpaceVim#layers#core#statusline#jump(6)
nnoremap <silent> [SPC]5 :call SpaceVim#layers#core#statusline#jump(5)
nnoremap <silent> [SPC]4 :call SpaceVim#layers#core#statusline#jump(4)
nnoremap <silent> [SPC]3 :call SpaceVim#layers#core#statusline#jump(3)
nnoremap <silent> [SPC]2 :call SpaceVim#layers#core#statusline#jump(2)
nnoremap <silent> [SPC]1 :call SpaceVim#layers#core#statusline#jump(1)
vnoremap <nowait> <silent> [SPC] :LeaderGuideVisual " "
nnoremap <nowait> <silent> [SPC] :LeaderGuide " "
nnoremap <nowait> <silent> [z] :LeaderGuide "z"
nnoremap <nowait> <silent> [g] :LeaderGuide "g"
nnoremap <silent> [Window]c :call SpaceVim#mapping#clearBuffers()
nnoremap <silent> [Window]q :call SpaceVim#mapping#close_current_buffer()
nnoremap <silent> [Window]Q :close
nnoremap <silent> [Window]\ :b#
nnoremap <silent> [Window]x :call zvim#util#BufferEmpty()
nnoremap <silent> [Window]o :only | doautocmd WinEnter
nnoremap <silent> [Window]t :tabnew
nnoremap <silent> [Window]G :vsplit +bp
nnoremap <silent> [Window]g :vsplit
nnoremap <silent> [Window]V :split +bp
nnoremap <silent> [Window]v :split
nnoremap <nowait> <silent> [Window] :LeaderGuide "s"
map \\ <Plug>(easymotion-prefix)
nmap \+ :bnext
nmap \- :bprevious
nmap <silent> \9 :call SpaceVim#layers#core#tabline#jump(9)
nmap <silent> \8 :call SpaceVim#layers#core#tabline#jump(8)
nmap <silent> \7 :call SpaceVim#layers#core#tabline#jump(7)
nmap <silent> \6 :call SpaceVim#layers#core#tabline#jump(6)
nmap <silent> \5 :call SpaceVim#layers#core#tabline#jump(5)
nmap <silent> \4 :call SpaceVim#layers#core#tabline#jump(4)
nmap <silent> \3 :call SpaceVim#layers#core#tabline#jump(3)
nmap <silent> \2 :call SpaceVim#layers#core#tabline#jump(2)
nmap <silent> \1 :call SpaceVim#layers#core#tabline#jump(1)
vnoremap <silent> \ :LeaderGuideVisual get(g:, 'mapleader', '\')
nnoremap <nowait> <silent> \ :LeaderGuide get(g:, 'mapleader', '\')
nnoremap <silent> \qc :call setqflist([])
nnoremap <silent> \qr q
nnoremap \ql :copen
nnoremap \qp :cprev
nnoremap \qn :cnext
xnoremap \P "*P
xnoremap \p "*p
nnoremap \P "*P
nnoremap \p "*p
xnoremap \d "*d
xnoremap \y "*y
omap <silent> ]% <Plug>(matchup-]%)
xmap <silent> ]% <Plug>(matchup-]%)
nmap <silent> ]% <Plug>(matchup-]%)
nnoremap <silent> ]p p
nnoremap <silent> ]t :tabnext
nnoremap <silent> ]l :lnext
nnoremap <silent> ]b :bn | stopinsert
nnoremap <silent> ]e :execute 'move +'. v:count1
nnoremap <silent> ]  :put =repeat(nr2char(10), v:count1)
vnoremap <silent> ]<Home> dggP``
vnoremap <silent> ]<End> dGp``
nnoremap <silent> ]<Home> ddggP``
nnoremap <silent> ]<End> ddGp``
omap al <Plug>(textobj-line-a)
xmap al <Plug>(textobj-line-a)
omap ai <Plug>(textobj-indent-a)
xmap ai <Plug>(textobj-indent-a)
omap aI <Plug>(textobj-indent-same-a)
xmap aI <Plug>(textobj-indent-same-a)
omap ae <Plug>(textobj-entire-a)
xmap ae <Plug>(textobj-entire-a)
omap <silent> a% <Plug>(matchup-a%)
xmap <silent> a% <Plug>(matchup-a%)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap <silent> d<Plug>(easymotion-prefix)l <Plug>(easyoperator-line-delete)
omap f <Plug>(clever-f-f)
xmap f <Plug>(clever-f-f)
nmap f <Plug>(clever-f-f)
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
omap <silent> g% <Plug>(matchup-g%)
xmap <silent> g% <Plug>(matchup-g%)
nmap <silent> g% <Plug>(matchup-g%)
nnoremap <silent> <expr> gp '`['.strpart(getregtype(), 0, 1).'`]'
nnoremap <silent> gd :call SpaceVim#mapping#gd()
nnoremap g g
nnoremap gv gv
nnoremap gs gs
nnoremap go go
nnoremap gm gm
nnoremap gg gg
nnoremap ga ga
nnoremap g~ g~
nnoremap g_ g_
nnoremap g^ g^
nnoremap g] g]
nnoremap gt gt
nnoremap gT gT
nnoremap gR gR
nnoremap gq gq
nnoremap gQ gQ
nnoremap gn gn
nnoremap gN gN
nnoremap gJ gJ
nnoremap gi gi
nnoremap gI gI
nnoremap gh gh
nnoremap gH gH
nnoremap gU gU
nnoremap gE gE
nnoremap gu gu
nnoremap gk gk
nnoremap gj gj
nnoremap gF gF
nnoremap gf gf
nnoremap g< g<
nnoremap ge ge
nnoremap g<Home> g<Home>
nnoremap g<End> g<End>
nnoremap g@ g@
nnoremap g; g;
nnoremap g, g,
nnoremap g- g-
nnoremap g+ g+
nnoremap g` g`
nnoremap g' g'
nnoremap g& g&
nnoremap g g
nmap g [g]
nnoremap <silent> g= :call zvim#format()
nnoremap <silent> gr :tabprevious
nnoremap g$ g$
nnoremap g0 g0
omap il <Plug>(textobj-line-i)
xmap il <Plug>(textobj-line-i)
omap ii <Plug>(textobj-indent-i)
xmap ii <Plug>(textobj-indent-i)
omap iI <Plug>(textobj-indent-same-i)
xmap iI <Plug>(textobj-indent-same-i)
omap ie <Plug>(textobj-entire-i)
xmap ie <Plug>(textobj-entire-i)
omap <silent> i% <Plug>(matchup-i%)
xmap <silent> i% <Plug>(matchup-i%)
nnoremap <silent> q :call zvim#util#SmartClose()
nmap s [Window]
omap t <Plug>(clever-f-t)
xmap t <Plug>(clever-f-t)
nmap t <Plug>(clever-f-t)
xmap v <Plug>(expand_region_expand)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nmap <silent> y<Plug>(easymotion-prefix)l <Plug>(easyoperator-line-yank)
omap <silent> z% <Plug>(matchup-z%)
xmap <silent> z% <Plug>(matchup-z%)
nmap <silent> z% <Plug>(matchup-z%)
nnoremap zx zx
nnoremap zv zv
nnoremap zt zt
nnoremap zs zs
nnoremap zr zr
nnoremap zo zo
nnoremap zn zn
nnoremap zm zm
nnoremap z<Right> zl
nnoremap zl zl
nnoremap zK zkzx
nnoremap zk zk
nnoremap zJ zjzx
nnoremap zj zj
nnoremap zi zi
nnoremap z<Left> zh
nnoremap zh zh
nnoremap zg zg
nnoremap zf zf
nnoremap ze ze
nnoremap zd zd
nnoremap zc zc
nnoremap zb zb
nnoremap za za
nnoremap zX zX
nnoremap zW zW
nnoremap zR zR
nnoremap zO zO
nnoremap zN zN
nnoremap zM zM
nnoremap zL zL
nnoremap zH zH
nnoremap zG zG
nnoremap zF zF
nnoremap zE zE
nnoremap zD zD
nnoremap zC zC
nnoremap zA zA
nnoremap z= z=
nnoremap z. z.
nnoremap z^ z^
nnoremap z- z-
nnoremap z+ z+
nnoremap z z
nmap z [z]
nnoremap zz zz
nnoremap <silent> <Plug>(vimfiler_simple) :VimFilerSimple
nnoremap <silent> <Plug>(vimfiler_create) :VimFilerCreate
nnoremap <silent> <Plug>(vimfiler_switch) :VimFiler
nnoremap <silent> <Plug>(vimfiler_split_create) :VimFilerSplit
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <D-Right> <End>
noremap <D-Left> <Home>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <Plug>(expand_region_shrink) :call expand_region#next('v', '-')
xnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('v', '+')
nnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('n', '+')
xmap <silent> <Plug>(easymotion-prefix)l <Plug>(easyoperator-line-select)
omap <silent> <Plug>(easymotion-prefix)l <Plug>(easyoperator-line-select)
nnoremap <Plug>(easyoperator-line-yank) :call easyoperator#line#selectlinesyank()
nnoremap <Plug>(easyoperator-line-delete) :call easyoperator#line#selectlinesdelete()
xnoremap <Plug>(easyoperator-line-select) :call easyoperator#line#selectlines()
onoremap <Plug>(easyoperator-line-select) :call easyoperator#line#selectlines()
nnoremap <Plug>(easyoperator-line-select) :call easyoperator#line#selectlines()
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)k <Plug>(easymotion-k)
map <silent> <Plug>(easymotion-prefix)j <Plug>(easymotion-j)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)s <Plug>(easymotion-s)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(1)
nnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
snoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
onoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
noremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat()
xnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(1)
nnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
snoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
onoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
xnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(1,1)
nnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
snoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
onoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
xnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(1,0)
nnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
snoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
onoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
xnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(1,0)
nnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
snoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
onoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
xnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(1,0)
nnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
snoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
onoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
xnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
snoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
onoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
xnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(1,1)
nnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
snoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
onoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
xnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(1,1)
nnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
snoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
onoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
xnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(1,0)
nnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
snoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
onoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
xnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(1,1)
nnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
snoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
onoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
xnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
snoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
onoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(1,0,1)
nnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
snoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
onoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
xnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(1,0,0)
nnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
snoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
onoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
xnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(1,2,0)
nnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
snoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
onoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
xnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(1,1,1)
nnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
snoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
onoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
xnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(1,1,0)
nnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
snoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
onoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
xnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(1,0)
nnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
snoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
onoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
xnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(1,1)
nnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
snoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
onoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
xnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(1,0)
nnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
snoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
onoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
xnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(1,1)
nnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
snoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
onoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
xnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(1,0)
nnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
snoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
onoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(1,2)
nnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
snoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
onoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(1,2)
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(1,2)
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
xnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(1,1)
nnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
snoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
onoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
xnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(1,0)
nnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
snoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
onoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
xnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
snoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
onoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
xnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(1,1)
nnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
snoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
onoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
xnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(1,0)
nnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
snoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
onoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
xnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
snoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
onoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
xnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(1,1)
nnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
snoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
onoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
xnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(1,0)
nnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
snoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
onoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(1,2)
nnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
snoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
onoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
xnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(1,1)
nnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
snoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
onoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
xnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(1,0)
nnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
snoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
onoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(1,2)
nnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
snoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
onoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
xnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(1,1)
nnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
snoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
onoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
nnoremap <silent> <Plug>(easymotion-overwin-w) :call EasyMotion#overwin#w()
nnoremap <silent> <Plug>(easymotion-overwin-line) :call EasyMotion#overwin#line()
nnoremap <silent> <Plug>(easymotion-overwin-f2) :call EasyMotion#OverwinF(2)
nnoremap <silent> <Plug>(easymotion-overwin-f) :call EasyMotion#OverwinF(1)
xnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,1,0)
nnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
snoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
onoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
xnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,1,0)
nnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
snoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
onoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
xnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
snoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
onoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
xnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,1,0)
nnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
snoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
onoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
xnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
snoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
onoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
xnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,1,0)
nnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
snoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
onoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,1,0)
nnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
snoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
onoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
snoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
onoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
xnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,1,0)
nnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
snoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
onoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
xnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,1,0)
nnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
snoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
onoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
xnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
snoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
onoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
xnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,1,0)
nnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
snoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
onoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,1,1)
nnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
snoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
onoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,1,1)
nnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
snoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
onoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
xnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
xnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
snoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
onoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
snoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
onoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,1,1)
nnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
snoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
onoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,1,1)
nnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
snoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
onoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
snoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
onoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
xnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
snoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
onoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
nnoremap <silent> <Plug>(choosewin) :call choosewin#start(range(1, winnr('$')))
noremap <silent> <expr> <Plug>(clever-f-repeat-back) clever_f#repeat(1)
noremap <silent> <expr> <Plug>(clever-f-repeat-forward) clever_f#repeat(0)
noremap <silent> <expr> <Plug>(clever-f-reset) clever_f#reset()
noremap <silent> <expr> <Plug>(clever-f-T) clever_f#find_with('T')
noremap <silent> <expr> <Plug>(clever-f-t) clever_f#find_with('t')
noremap <silent> <expr> <Plug>(clever-f-F) clever_f#find_with('F')
noremap <silent> <expr> <Plug>(clever-f-f) clever_f#find_with('f')
snoremap <silent> <Plug>(complete_parameter#overload_up) :call cmp#overload_next(0)
nnoremap <silent> <Plug>(complete_parameter#overload_up) :call cmp#overload_next(0)
snoremap <silent> <Plug>(complete_parameter#overload_down) :call cmp#overload_next(1)
nnoremap <silent> <Plug>(complete_parameter#overload_down) :call cmp#overload_next(1)
snoremap <silent> <Plug>(complete_parameter#goto_previous_parameter) :call cmp#goto_next_param(0)
nnoremap <silent> <Plug>(complete_parameter#goto_previous_parameter) :call cmp#goto_next_param(0)
snoremap <silent> <Plug>(complete_parameter#goto_next_parameter) :call cmp#goto_next_param(1)
nnoremap <silent> <Plug>(complete_parameter#goto_next_parameter) :call cmp#goto_next_param(1)
nmap <silent> <2-LeftMouse> <Plug>(matchup-double-click)
nnoremap <Plug>(matchup-reload) :MatchupReload
nnoremap <silent> <Plug>(matchup-double-click) :call matchup#text_obj#double_click()
onoremap <silent> <Plug>(matchup-a%) :call matchup#text_obj#delimited(0, 0, 'delim_all')
onoremap <silent> <Plug>(matchup-i%) :call matchup#text_obj#delimited(1, 0, 'delim_all')
xnoremap <silent> <Plug>(matchup-a%) :call matchup#text_obj#delimited(0, 1, 'delim_all')
xnoremap <silent> <Plug>(matchup-i%) :call matchup#text_obj#delimited(1, 1, 'delim_all')
onoremap <silent> <Plug>(matchup-z%) :call matchup#motion#op('z%')
xnoremap <silent> <SNR>103_(matchup-z%) :call matchup#motion#jump_inside(1)
nnoremap <silent> <Plug>(matchup-z%) :call matchup#motion#jump_inside(0)
onoremap <silent> <Plug>(matchup-[%) :call matchup#motion#op('[%')
onoremap <silent> <Plug>(matchup-]%) :call matchup#motion#op(']%')
xnoremap <silent> <SNR>103_(matchup-[%) :call matchup#motion#find_unmatched(1, 0)
xnoremap <silent> <SNR>103_(matchup-]%) :call matchup#motion#find_unmatched(1, 1)
nnoremap <silent> <Plug>(matchup-[%) :call matchup#motion#find_unmatched(0, 0)
nnoremap <silent> <Plug>(matchup-]%) :call matchup#motion#find_unmatched(0, 1)
onoremap <silent> <Plug>(matchup-g%) :call matchup#motion#op('g%')
xnoremap <silent> <SNR>103_(matchup-g%) :call matchup#motion#find_matching_pair(1, 0)
onoremap <silent> <Plug>(matchup-%) :call matchup#motion#op('%')
xnoremap <silent> <SNR>103_(matchup-%) :call matchup#motion#find_matching_pair(1, 1)
nnoremap <silent> <Plug>(matchup-g%) :call matchup#motion#find_matching_pair(0, 0)
nnoremap <silent> <Plug>(matchup-%) :call matchup#motion#find_matching_pair(0, 1)
nnoremap <silent> <expr> <SNR>103_(wise) empty(g:v_motion_force) ? 'v' : g:v_motion_force
nnoremap <silent> <Plug>(matchup-hi-surround) :call matchup#matchparen#highlight_surrounding()
tnoremap <silent> <M-Right> :bnext
tnoremap <silent> <M-Left> :bprev
tnoremap <silent> <C-Down> :wincmd j
tnoremap <silent> <C-Up> :wincmd k
tnoremap <silent> <C-Left> :wincmd h
tnoremap <silent> <C-Right> :wincmd l
xnoremap <silent> <Plug>(openbrowser- :call dein#autoload#_on_map('<Plug>(openbrowser-', 'open-browser.vim','x')
nnoremap <silent> <Plug>(openbrowser- :call dein#autoload#_on_map('<Plug>(openbrowser-', 'open-browser.vim','n')
nnoremap <silent> <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
noremap <silent> <F2> :TagbarToggle
vnoremap <C-Space> <Plug>(wildfire-water)
xnoremap <silent> <Plug>(jplus :call dein#autoload#_on_map('<Plug>(jplus', 'vim-jplus','x')
nnoremap <silent> <Plug>(jplus :call dein#autoload#_on_map('<Plug>(jplus', 'vim-jplus','n')
xnoremap <silent> <Plug>(wildfire- :call dein#autoload#_on_map('<Plug>(wildfire-', 'wildfire.vim','x')
nnoremap <silent> <Plug>(wildfire- :call dein#autoload#_on_map('<Plug>(wildfire-', 'wildfire.vim','n')
xnoremap <silent> <Plug>SpaceVim-plugin-iedit :call SpaceVim#plugins#iedit#start(1)
nnoremap <silent> <Plug>SpaceVim-plugin-iedit :call SpaceVim#plugins#iedit#start()
nnoremap <silent> <S-Tab> :wincmd p
noremap <M-Left> <C-Left>
noremap <M-Right> <C-Right>
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
xnoremap <S-Tab> <gv
vnoremap <silent> <C-S-Up> :m '<-2gv=gv
vnoremap <silent> <C-S-Down> :m '>+1gv=gv
nnoremap <silent> <C-S-Up> :m .-2==
nnoremap <silent> <C-S-Down> :m .+1==
nnoremap <silent> <C-Down> :wincmd j
nnoremap <silent> <C-Up> :wincmd k
nnoremap <silent> <C-Left> :wincmd h
nnoremap <silent> <C-Right> :wincmd l
vmap <BS> "-d
cnoremap  <Home>
cnoremap  <Left>
cnoremap  <Right>
imap S <Plug>ISurround
imap s <Plug>Isurround
imap <silent> % <Plug>(matchup-c_g%)
imap <silent> <expr> 	 SpaceVim#mapping#tab()
imap <silent> <expr>  pumvisible() ? "\" : "\"
imap  <Plug>Isurround
cnoremap  w
imap <expr> ( pumvisible() ? complete_parameter#pre_complete("()") : (len(maparg('<Plug>delimitMate(', 'i')) == 0) ? "\<Plug>delimitMate(" : '('
nnoremap <silent> ã :call chat#chatting#OpenMsgWin()
nnoremap <silent> ÷ :call chat#weixin#OpenMsgWin()
nnoremap <silent> ø :call chat#qq#OpenMsgWin()
inoremap <silent> \	 =MyLeaderTabfunc()
inoremap jk 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.cache/SpaceVim/backup
set cindent
set comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
set complete=.,w,b,u,t
set completeopt=menuone,noinsert,noselect
set cpoptions=aABceFsd
set directory=~/.cache/SpaceVim/swap
set display=lastline
set expandtab
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fillchars=vert:│,fold:·
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11
set guioptions=g
set guitablabel=%M%t
set helplang=en
set hidden
set hlsearch
set incsearch
set langmenu=none
set laststatus=2
set listchars=
set matchtime=0
set mouse=nv
set nrformats=bin,hex
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set pumheight=15
set pythondll=/usr/local/Frameworks/Python.framework/Versions/2.7/Python
set pythonhome=/usr/local/Frameworks/Python.framework/Versions/2.7
set pyxversion=3
set ruler
set runtimepath=
set runtimepath+=~/.SpaceVim.d/
set runtimepath+=~/.SpaceVim/
set runtimepath+=~/.cache/vimfiles/repos/github.com/Yggdroot/indentLine
set runtimepath+=~/.cache/vimfiles/repos/github.com/prabirshrestha/asyncomplete-buffer.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/prabirshrestha/asyncomplete.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/yami-beta/asyncomplete-omni.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/neomake/neomake
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/neosnippet-snippets
set runtimepath+=~/.cache/vimfiles/repos/github.com/andymass/vim-matchup
set runtimepath+=~/.cache/vimfiles/repos/github.com/morhetz/gruvbox
set runtimepath+=~/.cache/vimfiles/repos/github.com/tenfyzhong/CompleteParameter.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/unite.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/rhysd/clever-f.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/Raimondi/delimitMate
set runtimepath+=~/.cache/vimfiles/repos/github.com/t9md/vim-choosewin
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/vimproc.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/tenfyzhong/tagbar-proto.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/godlygeek/tabular
set runtimepath+=~/.cache/vimfiles/repos/github.com/mhinz/vim-startify
set runtimepath+=~/.cache/vimfiles/repos/github.com/tenfyzhong/tagbar-makefile.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/dein.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/neoformat/neoformat
set runtimepath+=~/.cache/vimfiles/repos/github.com/editorconfig/editorconfig-vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/scrooloose/nerdcommenter
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/vimfiler.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/neosnippet.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/neopairs.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/neoinclude.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/context_filetype.vim
set runtimepath+=~/.cache/vimfiles/repos/github.com/ujihisa/neco-look
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/neco-syntax
set runtimepath+=~/.cache/vimfiles/repos/github.com/honza/vim-snippets
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/echodoc.vim
set runtimepath+=~/.cache/vimfiles/.cache/vimrc/.dein
set runtimepath+=/Volumes/MacVim/MacVim.app/Contents/Resources/vim/runtime
set runtimepath+=~/.cache/vimfiles/repos/github.com/Yggdroot/indentLine/after
set runtimepath+=~/.cache/vimfiles/repos/github.com/andymass/vim-matchup/after
set runtimepath+=~/.cache/vimfiles/repos/github.com/tenfyzhong/CompleteParameter.vim/after
set runtimepath+=~/.cache/vimfiles/repos/github.com/godlygeek/tabular/after
set runtimepath+=~/.cache/vimfiles/.cache/vimrc/.dein/after
set runtimepath+=~/.cache/vimfiles/repos/github.com/Shougo/dein.vim
set scrolloff=1
set noshelltemp
set shiftwidth=2
set shortmess=filnxtToOcsF
set showmatch
set noshowmode
set showtabline=0
set sidescrolloff=5
set smartindent
set smarttab
set softtabstop=2
set tabline=%!SpaceVim#layers#core#tabline#get()
set tabstop=2
set termencoding=utf-8
set termguicolors
set ttimeout
set ttimeoutlen=50
set undodir=~/.cache/SpaceVim/undofile
set undofile
set wildignore=*/tmp/*,*.so,*.swp,*.zip,*.class,tags,*.jpg,*.ttf,*.TTF,*.png,*/target/*,.git,.svn,.hg,.DS_Store,*.svg
set wildignorecase
set wildmenu
set window=94
set nowritebackup
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
2wincmd k
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
exe '1resize ' . ((&lines * 37 + 47) / 95)
exe 'vert 1resize ' . ((&columns * 46 + 106) / 213)
exe '2resize ' . ((&lines * 31 + 47) / 95)
exe 'vert 2resize ' . ((&columns * 46 + 106) / 213)
exe '3resize ' . ((&lines * 12 + 47) / 95)
exe 'vert 3resize ' . ((&columns * 46 + 106) / 213)
exe '4resize ' . ((&lines * 35 + 47) / 95)
exe 'vert 4resize ' . ((&columns * 75 + 106) / 213)
exe '5resize ' . ((&lines * 35 + 47) / 95)
exe 'vert 5resize ' . ((&columns * 90 + 106) / 213)
exe '6resize ' . ((&lines * 46 + 47) / 95)
exe 'vert 6resize ' . ((&columns * 87 + 106) / 213)
exe '7resize ' . ((&lines * 46 + 47) / 95)
exe 'vert 7resize ' . ((&columns * 78 + 106) / 213)
exe '8resize ' . ((&lines * 10 + 47) / 95)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ) <Plug>delimitMate)
imap <buffer> < <Plug>delimitMate<
imap <buffer> > <Plug>delimitMate>
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t
setlocal concealcursor=niv
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=SpaceVim#default#Customfoldtext()
setlocal foldtext=SpaceVim#default#Customfoldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%#SpaceVim_statusline_ia#\ %{\ SpaceVim#layers#core#statusline#winnr(get(w:,\ \"winid\",\ winnr()))\ }\ %#SpaceVim_statusline_ia_SpaceVim_statusline_b#%#SpaceVim_statusline_b#%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 33\ ?\ \"\"\ :\ (\"\ 1.1k\ index.html\ \ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 42\ ?\ \"\"\ :\ (\"\ \ html\ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 56\ ?\ \"\"\ :\ (\"\ \ ❖\ ⓢ\ \ \ \")}
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 23 - ((2 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
wincmd w
argglobal
if bufexists("proof-of-concept/exampletarget/index.html") | buffer proof-of-concept/exampletarget/index.html | else | edit proof-of-concept/exampletarget/index.html | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ) <Plug>delimitMate)
imap <buffer> < <Plug>delimitMate<
imap <buffer> > <Plug>delimitMate>
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t
setlocal concealcursor=niv
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=SpaceVim#default#Customfoldtext()
setlocal foldtext=SpaceVim#default#Customfoldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%#SpaceVim_statusline_ia#\ %{\ SpaceVim#layers#core#statusline#winnr(get(w:,\ \"winid\",\ winnr()))\ }\ %#SpaceVim_statusline_ia_SpaceVim_statusline_b#%#SpaceVim_statusline_b#%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 38\ ?\ \"\"\ :\ (\"\ 875\ bytes\ index.html\ \ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 47\ ?\ \"\"\ :\ (\"\ \ html\ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 61\ ?\ \"\"\ :\ (\"\ \ ❖\ ⓢ\ \ \ \")}
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 32 - ((26 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 03|
wincmd w
argglobal
enew
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nnoremap <buffer> <silent> q :cclose:lclose
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=quickfix
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t
setlocal concealcursor=niv
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'qf'
setlocal filetype=qf
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=SpaceVim#default#Customfoldtext()
setlocal foldtext=SpaceVim#default#Customfoldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%#SpaceVim_statusline_ia#\ %{\ SpaceVim#layers#core#statusline#winnr(get(w:,\ \"winid\",\ winnr()))\ }\ %#SpaceVim_statusline_ia_SpaceVim_statusline_b#%#SpaceVim_statusline_b#%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 25\ ?\ \"\"\ :\ (\"\ No\ Name\ \ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 32\ ?\ \"\"\ :\ (\"\ \ qf\ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 46\ ?\ \"\"\ :\ (\"\ \ ❖\ ⓢ\ \ \ \")}
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'qf'
setlocal syntax=qf
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal winfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
if bufexists("proof-of-concept/editor/hotcode-client.js") | buffer proof-of-concept/editor/hotcode-client.js | else | edit proof-of-concept/editor/hotcode-client.js | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=niv
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=SpaceVim#default#Customfoldtext()
setlocal foldtext=SpaceVim#default#Customfoldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%#SpaceVim_statusline_ia#\ %{\ SpaceVim#layers#core#statusline#winnr(get(w:,\ \"winid\",\ winnr()))\ }\ %#SpaceVim_statusline_ia_SpaceVim_statusline_b#%#SpaceVim_statusline_b#%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 45\ ?\ \"\"\ :\ (\"\ 745\ bytes\ hotcode-client.js\ \ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 60\ ?\ \"\"\ :\ (\"\ \ javascript\ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 74\ ?\ \"\"\ :\ (\"\ \ ❖\ ⓢ\ \ \ \")}
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 031|
wincmd w
argglobal
if bufexists("proof-of-concept/editor/hotcode.js") | buffer proof-of-concept/editor/hotcode.js | else | edit proof-of-concept/editor/hotcode.js | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=niv
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=SpaceVim#default#Customfoldtext()
setlocal foldtext=SpaceVim#default#Customfoldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%#SpaceVim_statusline_ia#\ %{\ SpaceVim#layers#core#statusline#winnr(get(w:,\ \"winid\",\ winnr()))\ }\ %#SpaceVim_statusline_ia_SpaceVim_statusline_b#%#SpaceVim_statusline_b#%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 38\ ?\ \"\"\ :\ (\"\ 596\ bytes\ hotcode.js\ \ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 53\ ?\ \"\"\ :\ (\"\ \ javascript\ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 67\ ?\ \"\"\ :\ (\"\ \ ❖\ ⓢ\ \ \ \")}%=%{\"\ \"\ .\ &ff\ .\ \"|\"\ .\ (&fenc!=\"\"?&fenc:&enc)\ .\ \"\ \"}\ %P\ 
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 30 - ((29 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 0
wincmd w
argglobal
if bufexists("proof-of-concept/editor.js") | buffer proof-of-concept/editor.js | else | edit proof-of-concept/editor.js | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=niv
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=SpaceVim#default#Customfoldtext()
setlocal foldtext=SpaceVim#default#Customfoldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%#SpaceVim_statusline_a#%{SpaceVim#layers#core#statusline#mode(mode())}\ %{\ SpaceVim#layers#core#statusline#winnr(get(w:,\ \"winid\",\ winnr()))\ }\ %#SpaceVim_statusline_a_SpaceVim_statusline_b#%#SpaceVim_statusline_b#%{\ &modified\ ?\ '\ *\ '\ :\ '\ -\ '}4.7k\ editor.js\ %#SpaceVim_statusline_b_SpaceVim_statusline_c#%#SpaceVim_statusline_c#%{empty(&ft)?\ \"\"\ :\ \"\ \"\ .\ &ft\ .\ \"\ \"}%#SpaceVim_statusline_c_SpaceVim_statusline_b#%#SpaceVim_statusline_b#\ ❖\ ⓢ\ \ %#SpaceVim_statusline_b_SpaceVim_statusline_c#%#SpaceVim_statusline_b_SpaceVim_statusline_z#%#SpaceVim_statusline_z#%=%#SpaceVim_statusline_z#%{SpaceVim#layers#core#statusline#_current_tag()}%#SpaceVim_statusline_b_SpaceVim_statusline_z#%#SpaceVim_statusline_b#%{\"\ \"\ .\ g:_spacevim_statusline_fileformat\ .\ \"\ |\ \"\ .\ (&fenc!=\"\"?&fenc:&enc)\ .\ \"\ \"}%#SpaceVim_statusline_c_SpaceVim_statusline_b#%#SpaceVim_statusline_c#\ %l:%c\ %#SpaceVim_statusline_b_SpaceVim_statusline_c#
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 118 - ((37 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
118
normal! 07|
wincmd w
argglobal
if bufexists("proof-of-concept/editor/editor_core.js") | buffer proof-of-concept/editor/editor_core.js | else | edit proof-of-concept/editor/editor_core.js | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=niv
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=SpaceVim#default#Customfoldtext()
setlocal foldtext=SpaceVim#default#Customfoldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%#SpaceVim_statusline_ia#\ %{\ SpaceVim#layers#core#statusline#winnr(get(w:,\ \"winid\",\ winnr()))\ }\ %#SpaceVim_statusline_ia_SpaceVim_statusline_b#%#SpaceVim_statusline_b#%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 37\ ?\ \"\"\ :\ (\"\ 1.8k\ editor_core.js\ \ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 52\ ?\ \"\"\ :\ (\"\ \ javascript\ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 66\ ?\ \"\"\ :\ (\"\ \ ❖\ ⓢ\ \ \ \")}
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 58 - ((35 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 012|
wincmd w
argglobal
if bufexists("proof-of-concept/editor.js") | buffer proof-of-concept/editor.js | else | edit proof-of-concept/editor.js | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=niv
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=SpaceVim#default#Customfoldtext()
setlocal foldtext=SpaceVim#default#Customfoldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%#SpaceVim_statusline_ia#\ %{\ SpaceVim#layers#core#statusline#winnr(get(w:,\ \"winid\",\ winnr()))\ }\ %#SpaceVim_statusline_ia_SpaceVim_statusline_b#%#SpaceVim_statusline_b#%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 32\ ?\ \"\"\ :\ (\"\ 4.7k\ editor.js\ \ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 47\ ?\ \"\"\ :\ (\"\ \ javascript\ \")}%{\ get(w:,\ \"winwidth\",\ 150)\ <\ 61\ ?\ \"\"\ :\ (\"\ \ ❖\ ⓢ\ \ \ \")}%=%{\"\ \"\ .\ &ff\ .\ \"|\"\ .\ (&fenc!=\"\"?&fenc:&enc)\ .\ \"\ \"}\ %P\ 
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
6wincmd w
exe '1resize ' . ((&lines * 37 + 47) / 95)
exe 'vert 1resize ' . ((&columns * 46 + 106) / 213)
exe '2resize ' . ((&lines * 31 + 47) / 95)
exe 'vert 2resize ' . ((&columns * 46 + 106) / 213)
exe '3resize ' . ((&lines * 12 + 47) / 95)
exe 'vert 3resize ' . ((&columns * 46 + 106) / 213)
exe '4resize ' . ((&lines * 35 + 47) / 95)
exe 'vert 4resize ' . ((&columns * 75 + 106) / 213)
exe '5resize ' . ((&lines * 35 + 47) / 95)
exe 'vert 5resize ' . ((&columns * 90 + 106) / 213)
exe '6resize ' . ((&lines * 46 + 47) / 95)
exe 'vert 6resize ' . ((&columns * 87 + 106) / 213)
exe '7resize ' . ((&lines * 46 + 47) / 95)
exe 'vert 7resize ' . ((&columns * 78 + 106) / 213)
exe '8resize ' . ((&lines * 10 + 47) / 95)
tabnext 1
badd +97 proof-of-concept/editor.js
badd +39 proof-of-concept/exampletarget/index.html
badd +25 proof-of-concept/hotfolder/index.html
badd +1 proof-of-concept/editor/hotcode-client.js
badd +28 proof-of-concept/editor/hotcode.js
badd +20 proof-of-concept/package.json
badd +49 proof-of-concept/editor/editor_core.js
badd +20 proof-of-concept/exampletarget/sketch.js
badd +1 proof-of-concept/editor/index.html
badd +1 editor/index.html
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
