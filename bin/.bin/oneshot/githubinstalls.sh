#! /bin/bash

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# Vim's Bundle
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
   	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
