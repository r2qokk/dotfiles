let mapleader=","

" Fix keybind name for Ctrl+Spacebar
map <Nul> <C-Space>
map! <Nul> <C-Space>

"}}}
" Global niceties {{{
" ---------------
" Use tab for indenting in visual mode
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nnoremap > >>_
nnoremap < <<_

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Disable EX-mode
nnoremap Q <Nop>
nnoremap gQ <Nop>

" Disable recording
nnoremap q <Nop>

" Navigation in command line
cnoremap <C-j> <Left>
cnoremap <C-k> <Right>
cnoremap <C-h> <Home>
cnoremap <C-l> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-d> <C-w>

" }}}
" Editor UI {{{
" ---------

" Toggle editor visuals
nmap <Leader>ts :setlocal spell!<cr>
nmap <Leader>tn :setlocal nonumber! norelativenumber!<CR>
nmap <Leader>tl :setlocal nolist!<CR>
nmap <Leader>th :nohlsearch<CR>
nmap <Leader>tw :setlocal wrap! breakindent!<CR>

" Tabs
nnoremap <silent> g0 :<C-u>tabfirst<CR>
nnoremap <silent> g$ :<C-u>tablast<CR>
nnoremap <silent> gr :<C-u>tabprevious<CR>

" }}}
" Totally Custom {{{
" --------------

" Remove spaces at the end of lines
nnoremap <silent> <Leader><Space> :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>

" " Diff
" nnoremap <silent> <expr> <Leader>d ":\<C-u>".(&diff?"diffoff":"diffthis")."\<CR>"

" Location list movement
nmap <Leader>j :lnext<CR>
nmap <Leader>k :lprev<CR>

" Source line and selection in vim
vnoremap <Leader>S y:execute @@<CR>:echo 'Sourced selection.'<CR>
nnoremap <Leader>S ^vg_y:execute @@<CR>:echo 'Sourced line.'<CR>

" " Yank buffer's absolute path to X11 clipboard
" nnoremap <Leader>y :let @+=expand("%:p")<CR>:echo 'Copied to clipboard.'<CR>

" " Drag current line/s vertically and auto-indent
" noremap  <Leader>mk :m-2<CR>==
" noremap  <Leader>mj :m+<CR>==
" vnoremap <Leader>mk :m-2<CR>gv=gv
" vnoremap <Leader>mj :m'>+<CR>gv=gv

" vim: set ts=2 sw=2 tw=80 et :
