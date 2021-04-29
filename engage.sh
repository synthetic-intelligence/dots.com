
if [[ "$OSTYPE" == "darwin"* ]]
then


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

    brew install tree exa bat 



elif [[ "$OSTYPE" == "linux-gnu" ]]
then


    sudo apt install zsh
    chsh -s /usr/bin/zsh $USER
    sudo apt install wget git
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh


    curl -L git.io/antigen > antigen.zsh
    sudo apt install batcat exa xsel tree
fi


#cp -R  ../dots.com/* ../dots.com/.* ~/









echo $SHELL
