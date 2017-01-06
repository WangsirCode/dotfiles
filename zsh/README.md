#zsh配置
##1.installation
1. sudo agt-get install zsh
2. chsh -s /bin/zsh
3. install oh-my-zsh


```
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
```

##2.alias
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
##3.plugin

###autojump

1. brew install autojump (mac)
  sodu apt-get install autojump(linux)
2. insert these code into .zshrc

    ```
    [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
    ```

3. Activate the plugin in ~/.zshrc:


    ```
    plugins=( [plugins...] autojump)
    ```

###zsh-syntax-highlighting

1. Clone this repository in oh-my-zsh's plugins directory

    ```
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```

2. Activate the plugin in ~/.zshrc:

    ```
    plugins=( [plugins...] zsh-syntax-highlighting)
    ```

###zsh-autosuggestions
1. Clone this repository somewhere on your machine. This guide will assume ~/.zsh/zsh-autosuggestions.

    ``` 
    git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    ```

2. Add the plugin to the list of plugins for Oh My Zsh to load:

    ```
    plugins=(zsh-autosuggestions)
    ```

