
" vimの設定ファイル

""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" ファイルオープンを便利に
Plug 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
Plug 'Shougo/neomru.vim'
" ...省略

call plug#end()
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" 以下標準設定
""""""""""""""""""""""""""""""
"-------------------------------
" テーマ                       -
"-------------------------------

" カラースキームを設定
colorscheme default
"colorscheme blue
"colorscheme darkblue
"colorscheme koehler
"colorscheme delek
"colorscheme desert
"colorscheme elflord
"colorscheme evening
"colorscheme morning
"colorscheme shine

" 背景色が黒を適用
set background=dark

" 色を適用
syntax on

"-------------------------------
" ファイル関係                 -
"-------------------------------

" 文字コードをutf-8に設定
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" スワップファイルを作らない
set noswapfile

" 編集中のファイルが変更されたら自動で読み直す
set autoread

" バッファが編集中でもその他のファイルを編集できるようにする
set hidden


"-------------------------------
" 表示関係                     -
"-------------------------------

" 行番号の表示
set number

" タイトルの表示
set title

" (),{},etc 対応カッコを表示
set showmatch

" 入力中のコマンドをステータスに表示する
set showcmd

" カーソルのある行の強調
"set cursorline

" 行末の1文字先までカーソル移動
set virtualedit=onemore

" tab設定
set expandtab
set tabstop=2
set shiftwidth=2

"-------------------------------
" 検索関係                     -
"-------------------------------

" 検索文字が小文字のみなら大文字と区別せずに検索
set ignorecase

" 検索文字に大文字が含まれていたら小文字と区別して検索
set smartcase

" リアルタイム検索
set incsearch

" 一番下まで検索したら最初に戻る
set wrapscan

" 検索結果をハイライト表示
set hlsearch
