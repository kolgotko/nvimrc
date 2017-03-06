#!/bin/sh 

# requirements
sudo pkg istall -y curl git nmp node xclip
sudo npm install --global postcss-cli autoprefixer

# install plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create folders
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/colors

# install config
ln -s init.vim ~/.config/nvim/init.vim
ln -s ginit.vim ~/.config/nvim/ginit.vim

# install colorscheme
pwd=`pwd`
cd ..
git clone https://github.com/joshdick/onedark.vim
cd onedark/colors
ln -s onedark.vim ~/.config/nvim/colors/onedark.vim
cd $pwd

nvim -c PlugInstall
