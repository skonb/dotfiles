#created on 2019/05/23
#for macos

#dotFilesを展開
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/_vimrc ~/_vimrc

#ターミナル起動時に自動実行されるshellスクリプト
ln -sf ~/dotfiles/moveGif.sh  ~/.moveGif.sh
ln -sf ~/dotfiles/moveScreenshot.sh  ~/.moveScreenshot.sh
ln -sf ~/dotfiles/moveMd.sh  ~/.moveMd.sh

#vimの設定ファイル用フォルダを作成
mkdir ~/.vim
#カラースキームの保存先フォルダを作成
mkdir ~/.vim/colors

#plug.vimのダウンロード&autoloadに配置
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#colorscheme kalisi をダウンロード & 配置
git clone https://github.com/freeo/vim-kalisi ~/.vim/colors/kalisi
mv ~/.vim/colors/kalisi/colors/kalisi.vim ~/.vim/colors/kalisi.vim
rm -rf ~/.vim/colors/kalisi
