""" Copy from /etc/vimrc

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencoding=utf-8
   set fileencodings=ucs-bom,utf-8,gbk,utf-16,big5,latin1
endif

if v:lang =~ "gbk$" || v:lang =~ "GBK$" || v:lang =~ "gb2312$" || v:lang =~ "GB2312$" || v:lang =~ "gb18030$" || v:lang =~ "GB18030$"
   set fileencoding=gbk
   set fileencodings=gbk,utf-8,utf-16,big5,latin1
endif


set nocompatible  " Use Vim defaults (much better!)
set bs=indent,eol,start   " allow backspacing over everything in insert mode
"set ai     " always set autoindenting on
"set backup   " keep a backup file
set viminfo='20,\"50  " read/write a .viminfo file, don't store more
      " than 50 lines of registers
set history=50    " keep 50 lines of command line history
set ruler   " show the cursor position all the time

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin on

if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
endif

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"


"insert 2 spaces for a tab"
set tabstop=2
"set expandtab option to insert space characters whenever the tab key is pressed "
set expandtab
set smartindent
" key '>>' to indentation "
set shiftwidth=2

syntax on

""" keymap
:nnoremap i k
:nnoremap k j
:nnoremap j h
:nnoremap o w
:nnoremap u b
:nnoremap h 0
:nnoremap ; $
:nnoremap <c-a> 0
:nnoremap <c-e> $
:nnoremap [ gg
:nnoremap ] G
:nnoremap n <c-d>
:nnoremap p <c-u>
:vnoremap i k
:vnoremap k j
:vnoremap j h
:vnoremap o w
:vnoremap u b
:vnoremap h 0
:vnoremap ; $
:vnoremap [ gg
:vnoremap ] G
:vnoremap n <c-d>
:vnoremap p <c-u>

:nnoremap 5 x

:nnoremap f i

:nnoremap 6 X

:nnoremap m v
:vnoremap m v

:vnoremap c y
:nnoremap v p
:vnoremap x d
:nnoremap y u

" use 'exit' to quit shell
:nnoremap z :shell<cr>

:nnoremap <tab> >>

:nnoremap 1 <c-w><c-w>:close<cr>
:nnoremap 3 :vsplit<cr>
:nnoremap 4 :split<cr>
:nnoremap w <c-w><c-w>

:nnoremap sf :w<cr>
:nnoremap ss n

:nnoremap ef :e 
:nnoremap ek :bd<cr>
:nnoremap 2 :ls<cr>
:nnoremap b :b
:nnoremap bn :bn<cr>
:nnoremap bp :bp<cr>

" replace all tab to space
:nnoremap ,t :%retab!<cr>
:nnoremap ,h :help

:nnoremap <c-x><c-c> :q

:inoremap jj <esc>
:inoremap <home> <esc>
