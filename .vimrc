"#####表示設定#####
set title "編集中のファイル名を表示
set ruler "カーソルが何行目の何列目に置かれているかを表示する。
set showcmd "コマンド (の一部) を画面の最下行に表示する。
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント
"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
 
 "#####カーソル移動#####
 nnoremap <Space>h <Home>
 nnoremap <Space>l <End>
 inoremap <Space>h <Home>
 inoremap <Space>l <End>
 inoremap <C-h> <Left>
 inoremap <C-j> <Down>
 inoremap <C-k> <Up>
 inoremap <C-l> <Right>
