#some config files in osx
##1.vim 


###DoxygenToolkit
comment plugin for C, C++ or Python function or class

use:

- :Dox command 
- :DoxAuthor command
- :Doxlic command


###youCompleteme
设置文档跳转

```
" 跳转到定义处, 分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
```
###tagList
显示文件中结构体，函数定义灯信息

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


