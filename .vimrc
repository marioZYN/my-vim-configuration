set nocompatible " 关闭与vi的兼容模式
set number " 显示行号
set showmatch " 显示匹配的行号
set encoding=utf-8 " 编码
syntax on  " 语法高亮
set tabstop=4 " 设置tab宽度
set shiftwidth=4 " 设置indent宽度，影响>等命令
set expandtab " 用space代替tab
set autoindent " 换行后自动缩进

" set up Vundle
filetype off "按照Vundle的说法必须

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage
Plugin 'VundleVim/Vundle.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'

" YCM
Plugin 'Valloric/YouCompleteMe'

" indentLine
Plugin 'Yggdroot/indentLine'

" All of Plugins must be added before the following line
call vundle#end()
filetype plugin indent on " required

" set up keyborad shortcuts

" NERDTREE
map <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close nerdtree panel when only it is left
let NERDTreeNodeDelimiter = "\t" " current NerdTree bug
