set nu
syntax enable
syntax on
set background=dark
colorscheme solarized
set encoding=utf-8
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
"总是显示状态栏
set laststatus=2

set ruler
set hlsearch
set cursorline
filetype on
"开启文件检测
filetype plugin on

" 设置格式化时制表符占用空格数
set shiftwidth=4
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4



"YCM相关设置
let g:ycm_python_binary_path = 'python'
let python_highlight_all=1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>


"systastic 相关设置
"Errors 就可以在修复错误之后自动更新它的底部描述
let g:syntastic_always_populate_loc_list = 1
"Errors 就可以在修复错误之后自动更新它的底部描述。
let g:syntastic_check_on_open = 1



"NERDTree 相关设置
"open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"taglist 相关设置
"open taglist with Ctrl + m
map <C-m> :TlistOpen<CR>



"一些系统快捷键设置
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
autocmd BufWritePost $MYVIMRC source $MYVIMRC
nmap <F8> :TagbarToggle<CR>
nmap <Leader>, :bp<CR>
nmap <Leader>. :bn<CR>
" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>




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
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/The-NERD-tree'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()
"filetype plugin indent on
