set nu

autocmd BufWritePost $MYVIMRC source $MYVIMRC
syntax enable
syntax on
set background=dark
colorscheme solarized
set encoding=utf-8
let g:ycm_python_binary_path = 'python'
let python_highlight_all=1
"Errors 就可以在修复错误之后自动更新它的底部描述
let g:syntastic_always_populate_loc_list = 1
"Errors 就可以在修复错误之后自动更新它的底部描述。
let g:syntastic_check_on_open = 1
"open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" 开启实时搜索功能
set incsearch
" " 搜索时大小写不敏感
set ignorecase
" " 关闭兼容模式
set nocompatible
" " vim 自身命令行模式智能补全
set wildmenu
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 自适应不同语言的智能缩进
filetype indent on
" " 将制表符扩展为空格
set expandtab
" " 设置编辑时制表符占用空格数
set tabstop=4
" " 设置格式化时制表符占用空格数
set shiftwidth=4
" " 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

"总是显示状态栏
set laststatus=2

set ruler
set hlsearch 
set cursorline
filetype on 
"开启文件检测
filetype plugin on 
"根据检测到的不同类型加载对应的插件
" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" " 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" " 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
 " 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" " 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" " 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" " 依次遍历子窗口
nnoremap nw <C-W><C-W>
" " 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
 " 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" " 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" " 定义快捷键在结对符之间跳转
nmap <Leader>M %
autocmd BufWritePost $MYVIMRC source $MYVIMRC
nmap <F8> :TagbarToggle<CR>
" vundle 环境设置
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/bundle')
Plug 'VundleVim/Vundle.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'Raimondi/delimitMate'
Plug 'vim-scripts/The-NERD-tree'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()
"filetype plugin indent on
