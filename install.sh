#!/bin/sh

cp $HOME/.vimrc $HOME/.vimrc.bak
ln -sf $(pwd)/vimrc $HOME/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Run PlugInstall
# TODO: Test this to see if it gets caught up when opening vimrc for the first
# time
vim --cmd '' -c ':PlugInstall' -c 'qa!'
