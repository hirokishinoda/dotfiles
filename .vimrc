
" vimの設定ファイル

""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" ファイルをtree表示してくれる
Plug 'scrooloose/nerdtree'

" インデントに色を付けて見やすくする
Plug 'nathanaelkane/vim-indent-guides'
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

" 行末の半角スペースを可視化
Plug 'bronson/vim-trailing-whitespace'

" Gitを便利に使う
Plug 'tpope/vim-fugitive'
" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

" 自作チートシートの表示
Plug 'reireias/vim-cheatsheet'
" チートシートのパス
let g:cheatsheet#cheat_file = '~/.cheatsheet.md'

" MarkDownリアルタイムプレビュー
Plug 'iamcco/markdown-preview.vim'

" コメントON/OFFを手軽に実行
Plug 'tomtom/tcomment_vim'

call plug#end()

" ステータス行に現在のgitブランチを表示する
if isdirectory(expand('~/.vim/bundle/vim-fugitive'))
  set statusline+=%{fugitive#statusline()}
endif

""""""""""""""""""""""""""""""
" 標準設定
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
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
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

"-------------------
" ステータスバー関連
"-------------------

" ステータスバーの表示(0:非表示,1:2ウィンドウ以上で表示,2:表示)
set laststatus=2

" ファイル名表示
set statusline=%F

" 読み込み専用か
set statusline+=%m

" これ以降は右寄せ表示
set statusline+=%=

" file encoding
set statusline+=[ENC=%{&fileencoding}]

" 現在行数/全行数
set statusline+=[LOW=%l/%L]

" gitのブランチ名
set statusline+=%{fugitive#statusline()}

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

"------------------------
" 自動的に閉じ括弧を入力
"------------------------
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

"------------------------------------------
" 挿入モード時、ステータスラインの色を変更
"------------------------------------------
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction

"--------------------
" 全角スペースの表示
"--------------------
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
