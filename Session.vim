let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/dev/launch_school/sinatra_todos
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +34 todo.rb
badd +13 public/javascripts/application.js
badd +1 term://~/dev/launch_school/sinatra_todos//44296:\'/Users/wayneolson/.local/share/nvim/plugged/fzf/bin/fzf\'\ \ \'-m\'\ \'--prompt\'\ \'~/d/l/sinatra_todos/\'\ \'--preview\'\ \'\'/\'\'/Users/wayneolson/.local/share/nvim/plugged/fzf.vim/bin/preview.sh\'/\'\'\ \{}\'\ \'--bind\'\ \'ctrl-/:toggle-preview\'\ --expect=ctrl-v,ctrl-x,ctrl-t\ --no-height\ --border=rounded\ >\ /var/folders/59/vpndc67941zbj_3wzzvxg7z40000gn/T/nvim3FjzC5/6;\#FZF
badd +1 term://~/dev/launch_school/sinatra_todos//45315:/bin/zsh
badd +1 ~/.config/nvim/init.vim
badd +77 term://~/dev/launch_school/sinatra_todos//48364:/bin/zsh
badd +0 term://~/dev/launch_school/sinatra_todos//48948:/bin/zsh
badd +15 views/lists.erb
badd +0 views/list.erb
argglobal
%argdel
edit todo.rb
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 41 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 124 + 82) / 164)
exe '2resize ' . ((&lines * 41 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 39 + 82) / 164)
exe '3resize ' . ((&lines * 8 + 26) / 52)
argglobal
balt public/javascripts/application.js
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
let s:l = 47 - ((40 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 47
normal! 0
wincmd w
argglobal
if bufexists("views/list.erb") | buffer views/list.erb | else | edit views/list.erb | endif
if &buftype ==# 'terminal'
  silent file views/list.erb
endif
balt views/lists.erb
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
let s:l = 8 - ((7 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 015|
wincmd w
argglobal
if bufexists("term://~/dev/launch_school/sinatra_todos//48948:/bin/zsh") | buffer term://~/dev/launch_school/sinatra_todos//48948:/bin/zsh | else | edit term://~/dev/launch_school/sinatra_todos//48948:/bin/zsh | endif
if &buftype ==# 'terminal'
  silent file term://~/dev/launch_school/sinatra_todos//48948:/bin/zsh
endif
balt todo.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 4) / 8)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 41 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 124 + 82) / 164)
exe '2resize ' . ((&lines * 41 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 39 + 82) / 164)
exe '3resize ' . ((&lines * 8 + 26) / 52)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOF
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
