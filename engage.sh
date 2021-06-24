#!/bin/bash

echo "mac or linux?"

read VAR1


if [[ "$VAR1" == "mac" ]]
then

    cd
    which -s brew
    if [[ $? != 0 ]] ; then
        # Install Homebrew
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        brew update
    fi

    brew install zsh zsh-completions

    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

    curl -L git.io/antigen > antigen.zsh

    brew install tree exa bat neofetch tldr



elif [[ "$VAR1" == "linux" ]]
then


    cd
    sudo apt install zsh
    chsh -s /usr/bin/zsh
    sudo apt install wget git
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    

    sudo apt install bat xsel tree neofetch autojump tldr vim
    curl -L git.io/antigen > ~/antigen.zsh
fi

elif [[ "$VAR1" != "linux" && "VAR1" != "mac" ]]
then

    echo "check spelling, no caps"



cp -R .aliases .antigenrc .hushlogin .local .zshrc ~/ 
