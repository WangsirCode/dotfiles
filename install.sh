#!/usr/bin/env bash
install_dependace()
{
    if type $1 >/dev/null 2>&1; then 
        echo 'already installed $1' 
    else 
        if ["$(uname)"=="Darwin"];then    # Mac OS X 操作系统
            brew install $1
        elif ["$(expr substr $(uname -s) 1 5)"=="Linux"];then    # linux 
            sudo apt-get install $1
        fi
    fi
    
}

#1. install dependance
dependances=("wget" "stow" "zsh" "autojump")

for dependance in ${dependances[@]}
do
    install_dependace(dependance)
    ERROR_CODE=$?
    if [ $ERROR_CODE != 0 ]; then
		echo install $(dependance) failed!
		exit 1
	fi
done

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

#2. install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ERROR_CODE=$?
if [ $ERROR_CODE != 0 ]; then
    echo install oh-my-zsh failed!
    exit 1
fi

#3. revise zsh profile 
git clone git@github.com:WangsirCode/dotfiles.git
cd ~/.dotfiles
rm ~/.zshrc
stow zsh

echo zsh installed success!
