" 项目: gvim 配置文件
" 作者: yonsan
" 安装: sudo apt-get install vim-gtk
" 用法: 将本文件(.vimrc)拷贝到$HOME/

" 使用 murphy 调色板
"colo murphy
"colo molokai
colo obsidian
"colo ironman
"colo neverland
"colo mustang
" 设置用于GUI图形用户界面的字体列表。
"set guifont=SimSun\ 10
"set guifont=Envy\ Code\ R\ 11
"set guifontwide=Yahei\ Mono\ 11 
set guifont=明兰_Code\ 9
"set guifont=Terminus\ 9
"set guifont=ProFontWindows\ 9
set guifontwide=明兰_Code\ 9
"
set nocompatible
" 设定文件浏览器目录为当前目录
set bsdir=buffer
set autochdir
" 设置编码
set enc=utf-8
" 设置文件编码
set fenc=utf-8
" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" 指定菜单语言
set langmenu=zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 设置语法高亮度
set syn=cpp
"显示行号
set nu!
" 查找结果高亮度显示
set hlsearch
" tab宽度
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
" C/C++注释
set comments=://
" 修正自动C式样注释功能 <2005/07/16>
set comments=s1:/*,mb:*,ex0:/
" 增强检索功能
set tags=./tags,./../tags,./**/tags
" 保存文件格式
set fileformats=unix,dos
" 键盘操作
map <Up> gk
map <Down> gj
" 命令行高度
set cmdheight=1
" 中文帮助
if version > 603
set helplang=cn
endi

"用空格键来开关折叠（说明西方“"”后面的内容为注释，不会被VIM所识别）
set foldenable
set foldmethod=indent
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"set fdm=marker
set fdm=indent
set autoindent

if has("gui_running")
	winpos 735 235
endif

set lines=55 columns=108 

"开启语法高亮
syntax enable
syntax on

"检测文件的类型
"允许使用ftplugin目录下的文件类型特定脚本
"允许使用indent目录下的文件类型缩进
filetype on
filetype plugin on
filetype indent on

"显示行号
set number


"显示匹配括号
:set showmatch


"当右键单击窗口的时候， 弹出快捷菜单
:set mousemodel=popup


"<F3><F4>大小写转换
map <F3> gu
map <F4> gU

set nobackup "取消自动备份
setlocal noswapfile "不要生成swap文件

"设置以缩进的方式自动折叠和设置快捷方式
map <F3>    zO   "打开折叠
map <F4>    zc   "关闭折叠
map <F5>    zR    "打开所有折叠
map <F6>    zM   "关闭所有折叠

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%79v.*/

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>
