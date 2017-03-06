#!/bin/sh 

# requirements
sudo pkg install -y curl git npm node xclip neovim python3 py35-setuptools35
sudo npm install --global postcss-cli autoprefixer
sudo easy_install-3.5 pip
sudo pip install neovim

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

# install colorscheme
pwd=`pwd`
cd ..
git clone https://github.com/joshdick/onedark.vim
cd onedark.vim/colors
ln -sf `pwd`/onedark.vim ~/.config/nvim/colors/onedark.vim
cd ~

nvim -c PlugInstall
nvim -c UpdateRemotePlugins
