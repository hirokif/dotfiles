mkdir ~/.vim  
cd ~/.vim  
mkdir colors  
git clone https://github.com/tomasr/molokai  
mv molokai/colors/molokai.vim ~/.vim/colors/  
vi ~/.vimrc  

# neobundle
mkdir -p ~.vim/bundle  
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim  

# dotfiles
dotfilesLink.sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc  
ln -sf ~/dotfiles/colors ~/.vim/colors
