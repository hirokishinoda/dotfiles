# Vimチートシート

## 標準コマンド

###モード切替
- i : 挿入モード
- o : 1行下げて挿入モード
- a : 後ろの文字から挿入モード
- A : 行の末尾から挿入モード
- R : 上書きモード
- v : visualモード
- ctl + v : 矩形選択visualモード
- ESC : コマンドモードへ

### ファイル
- :w : 保存
- :q : 終了
- :q! : 強制終了
- e : ファイルを開く
- ctl+u : undo
- ctl+r : redo

### カーソル・画面移動
- w : 次の単語に移動
- b : 前の単語に移動
- 0 : 行頭
- $ : 行末
- % : 対応する()に移動
- ctl + u : 半画面上移動
- ctl + d : 半画面下移動
- ctl + b : 1画面上に移動
- ctl + f : 1画面下に移動
- gg : 最初の行
- G : 最終行
- 10G : 10行目に移動
- H : 画面の先頭行
- M : 画面の中央行
- L : 画面の最終行
- vs : 画面分割(横並べ)
- ctl+w+w:次の画面に移動

### コピー・ペースト・削除
- p : ペースト
- yy : コピー
- dd : 切り取り
- x : 1文字削除

### 入力
- ctl + p : 単語補完


## プラグインコマンド

### ファイルをtree表示
- :NERDTree : tree表示

### チートシートの表示
- :Cheat : チートシート表示・非表示

### コメント・アンコメント
- ctl+- * 2 : コメント・アンコメント

### Markdownのプレビュー表示
- :MarkdownPreview : プレビュー表示
- :MarkdownPreviewStop : プレビュー非表示