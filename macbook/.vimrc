" alvin alexander's sample .vimrc file
" https://alvinalexander.com/linux-unix/vimrc-vim-example-commands-configuration-file


" --- configure syntax highlighting ---

" possible cterm colors:
" black, blue, cyan, gray, green, magenta, red, white, yellow

" possible cterm, gui, and term settings:
" bold, underline, reverse, italic, none

" possible Groups and Colors are shown on this page:
" http://vimdoc.sourceforge.net/htmldoc/syntax.html

"colo delek

 colorscheme ron

" --- other vim configuration commands ---

" enable syntax highlighting
syntax on

" show the editing mode on the last line
set showmode

" tell vim to keep a backup file
" set backup

" tell vim where to put its backup files
"set backupdir=$HOME/private/tmp

" tell vim where to put swap files
"set dir=$HOME/private/tmp


"--- common vim commands i don't use

" i don't use autoindent, but here's how to configure it:
" set autoindent

" you can show line numbers
 set number

" highlight matching search strings
set hlsearch

" make searches case insensitive
" set ignorecase


" --- vim map (macro) commands ---
"map #1 :!more ~/.vi_help^M
"map #2 :set number
"map #3 :set nonumber
"map #4 o<table>^M  <tr>^M    <td>^M    </td>^M  </tr>^M</table>
"map #5 o<ul>^M  <li></li>^M</ul>
"map #6 o<ul>^M  <li><a href=""></a></li>^M</ul>
map! ;( \(\)<LEFT><LEFT>
map! ;w \<\w\+\><LEFT><LEFT>
cmap ;p <C-R>"

" syntax highlighting for json file, using javaScript scheme. Trick obtained
" from https://www.codeography.com/2010/07/13/json-syntax-highlighting-in-vim.html
" yanwang1
"autocmd BufNewFile,BufRead *.json set ft=javascript
" no longer need to use + for clipboard register
set clipboard=unnamed

" 设定默认解码
set fenc=utf-8
set fencs=usc-bom,utf-8,euc-jp,gb18030,gbk,gb2312,cp936

" 配置多语言环境
if has("multi_byte")
" UTF-8 编码
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=mM
set fencs=utf-8,gbk
else
echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

"设定窗口大小
set lines=50 columns=120 " 设定窗口大小

if has("gui_macvim")
"set gfn=Courier:h12\ Pitch\ 12
"set guifont=Courier:h16
set guifont=Anonymous\ Pro:h16
"set guifontwide=Libian\ SC:h16
set guifontwide=STKaiti:h18
  set linespace=2   " set the line height

  " Options for Graphic version of VIM
  set guioptions-=T "No Toolbar
  set guioptions-=L "No left hand scrollbars
  set guioptions-=r "No right hand scrollbars
  set guioptions-=m "No menu bar

  " Don't beep
  set visualbell
endif

