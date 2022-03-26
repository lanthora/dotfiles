" 设置编码字符集 "
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
" 显示行号 "
set number
" 空格代替制表符 "
set expandtab
" 不适用vi键盘 "
set nocompatible
" 自动缩进 "
set autoindent
" Tab键的宽度 "
set tabstop=8
" 统一缩进为4 "
set softtabstop=4
set shiftwidth=4
" 光标移动到buffer的顶部和底部时保持5行距离 "
set scrolloff=5
" 自动判断换行格式 "
set fileformats=unix,dos
" 不换行显示
set nowrap

set laststatus=2
set backspace=indent,eol,start

if has("autocmd")
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    autocmd BufWritePost *.py exe "Autoformat"
    autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
endif

syntax on
" 插件管理 "
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()
filetype plugin indent on

highlight CursorLine   cterm=NONE ctermbg=darkgray guibg=NONE guifg=NONE
" 高亮代码冲突标记
match ErrorMsg '^\(<\||\|=\|>\)\{7\}\([^=].\+\)\?$'

let g:formatdef_llvm = '"clang-format --style=LLVM"'
let g:formatters_cpp = ['llvm']

