 #!/usr/bin/env bash

# git clone https://github.com/synthetic-intelligence/dots.com.git .prefs
cd .prefs

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
curl -L git.io/antigen > ~/.antigen.zsh

cp -R .aliases .antigenrc .local .zshrc .vimrc .choices ~/


chsh -s /bin/zsh
exec su -l $USER

source ~/.zshrc

chown $(whoami) ~/.antigen
chmod -R 755 ~/.antigen
