let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/React/first\ react\ app/moz-todo-react
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +12 term://~/Documents/React/first\ react\ app/moz-todo-react//233:/bin/bash
badd +66 README.md
badd +1 term://~/Documents/React/first\ react\ app/moz-todo-react//523:/bin/bash
badd +1 term://~/Documents/React/first\ react\ app/moz-todo-react//702:/bin/bash
badd +1 src/App.js
badd +1 .gitignore
badd +25 src/components/Form.js
badd +76 ~/.config/nvim/init.vim
badd +1 NERD_tree_3
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabrewind
argglobal
if bufexists(fnamemodify("term://~/Documents/React/first\ react\ app/moz-todo-react//523:/bin/bash", ":p")) | buffer term://~/Documents/React/first\ react\ app/moz-todo-react//523:/bin/bash | else | edit term://~/Documents/React/first\ react\ app/moz-todo-react//523:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/Documents/React/first\ react\ app/moz-todo-react//523:/bin/bash
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 12 - ((11 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
tabnext
edit src/App.js
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/.config/nvim/init.vim
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 26 - ((25 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 26
normal! 024|
lcd ~/Documents/React/first\ react\ app/moz-todo-react
tabnext 2
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
