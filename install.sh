#!/bin/bash

depends="stow wget zsh autojump tmux thefuck"

install_dependence()
{
    which $1 > /dev/null 2>&1
    if [ $? == 0 ]; then
        return
    fi

    if [ "$(uname)" == "Darwin" ]; then
        brew install $1
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ];then   
        sudo apt-get install $1
    fi

    if [ $? -ne 0 ]; then
        echo "install $1 failed"
        exit 1
    fi
    echo "$1 install success"
}

install_dependences()
{
    for depend in $depends;  
    do  
        echo "start install $depend"
        install_dependence $depend
    done 
}

install_zsh_plugin()
{
    echo "install zsh-zyntax-highlighting"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    echo "install zsh-autosuggestions"
    git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    echo "install zsh-completions"
    git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

    echo "install zsh-you-should-use"
    git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use

}

config_zsh()
{
    if [[ $SHELL == *zsh ]]; then
        echo "alread zsh sehll"
    else
        chsh -s $(which zsh)
    fi

    if [ -d ~/.oh-my-zsh ];then
        echo "oh-zsh-zsh aleardy exist"
    else
        echo "install oh-my-zsh"
        sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
        if [ $? -ne 0 ];then 
            echo "install oh-my-zsh failed"
            exit 1
        fi
    fi

    install_zsh_plugin

    cd ~/.dotfiles
    rm ~/.zshrc
    stow zsh
    source ~/.zshrc
}

config_vim()
{
    git clone --depth=1 https://github.com/WangsirCode/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
}

install_dependences

config_zsh
config_vim