"** システム設定 **
set nocompatible
set noswapfile                      "swpの作成無効化
set nobackup                        "~の作成無効化
set writebackup                     "上書き成功時に~を削除
set clipboard+=unnamed,autoselect   "クリップボードを共有

"** 文字コード設定 **
set encoding=utf-8                  "vim
set fileencoding=utf-8              "保存するファイル
set fencs=iso-2022-jp,enc-jp,cp932  "開くファイル

"** 表示設定 **
syntax on                           "ハイライト表示
set title                           "タイトル
set number                          "行番号

"** カラースキーマ設定 **
set t_Co=256
colorscheme molokai
let g:molokai_original=1
set background=dark

set tabstop=2                       "タブ文字幅
set shiftwidth=2                    "インデント幅
set noexpandtab                     "挿入モードでタブ文字有効
set smartindent
set smarttab

"**　バックアップファイルを作成しない **
:set nobackup

"** ファイル別設定 **
filetype on
autocmd FileType c,cpp,perl,html set cindent

if has('vim_starting')
  set nocompatible               " Be iMproved
 
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
 
" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
 
call neobundle#end()
 
" Required:
filetype plugin indent on
 
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
