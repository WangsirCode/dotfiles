#some config files in osx
##1.vim 
###快捷键设置
```
"一些系统快捷键设置
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
 " 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" " 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" " 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" " 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
autocmd BufWritePost $MYVIMRC source $MYVIMRC
nmap <F8> :TagbarToggle<CR>

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
```
###DoxygenToolkit
comment plugin for C, C++ or Python function or class

**使用**

- :Dox command 
- :DoxAuthor command
- :Doxlic command


###youCompleteme
**配置**

```
" 跳转到定义处, 分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
```

###ctrlp

**使用**
```
Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
```

###NERDTree
**配置**

```
"open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
```

**使用**

```
ctrl + w + h 光标 focus 左侧树形目录 
ctrl + w + l 光标 focus 右侧文件显示窗口
ctrl + w + w    光标自动在左右侧窗口切换 #！！！
i split 一个新窗口打开选中文件，并跳到该窗口
t       在新 Tab 中打开选中文件/书签，并跳到新 Tab
gT 前一个 tab 
gt 后一个 tab
```

###tagList
显示文件中结构体，函数定义等信息

**配置**

```
"open taglist with Ctrl + m
 map <C-m> :TlistOpen<CR>
```
**使用**

```
:TlistOpen
```


##2.ZSH

###alias
```
alias server="ssh -i ~/Downloads/mykey ubuntu@115.159.212.140"
alias ll='ls -l'
alias python='python3'
alias -s py=vim
alias -s c=vim
alias -s zsh=vim
alias o='open'
alias v='vim'
alias p='python'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias rmpng='rm ~/Desktop/*.png'
```


