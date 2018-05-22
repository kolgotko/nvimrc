#!/bin/sh 

# requirements
sudo pkg install -y curl git npm yarn node xclip neovim coreutils gsed \
python3 python py36-setuptools py27-setuptools libexo liberation-fonts-ttf global \
ctags ruby24-gems the_silver_searcher

sudo easy_install-3.6 pip
sudo easy_install-2.7 pip
sudo pip install pip --upgrade
sudo pip3.6 install pip --upgrade
sudo pip3.6 install neovim --upgrade
sudo gem install neovim --upgrade
sudo yarn global add neovim

# install plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create folders
mkdir -p ~/.config
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/colors

# install config
ln -sf `pwd`/init.vim ~/.config/nvim/init.vim
ln -sf `pwd`/ginit.vim ~/.config/nvim/ginit.vim

cd ~

nvim -c PlugUpgrade -c PlugInstall -c PlugUpdate -c q -c q
nvim -c UpdateRemotePlugins -c q -c q

echo done!
