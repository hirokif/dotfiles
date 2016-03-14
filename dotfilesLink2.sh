mkdir -p ~/.vim/colors
mkdir -p ~/.vim/bundle
git clone https://github.com/tomasr/molokai ~/.vim/
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
mv molokai/colors/molokai.vim ~/.vim/colors/


ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim/colors
