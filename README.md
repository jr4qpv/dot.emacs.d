dot.emacs.d
============
Emacs25 configuration files.

概要
----
Emacs25.1の`~/.emacs.d/`フォルダ、私が使ってる設定ファイル  
macOS, Windows, Linuxで共通

Emacsの初期状態ではお世辞にも使い勝手がいいとは言えませんが、ちょっと手を入れる事で驚くほどモダンで使い勝手が良くなります。  
本設定から手軽に使い始めてみるのもよいと思いますのでご活用ください。ここから自分の好みに変更していくのもよいです。

基本、よく使われているパッケージを利用していますが、設定については下記ブログでも紹介しています。  
<http://jr4qpv.hatenablog.com/archive/category/Emacs>

利用方法
---------
コンソールから下記コマンドで、設定ファイル一式を`~/.emacs.d/`に取得。

```
git clone https://github.com/jr4qpv/dot.emacs.d.git ~/.emacs.d
```

動作確認したEmacs
-------------------
macOS, Windows, Linuxで共用です。

#### １）macOS 10.12 -- Emacs25.1 Mac port, ATOK2015
Emacs本体のインストール手順は、下記URL参照  
<http://jr4qpv.hatenablog.com/entry/2016/12/13/094231>

Osaka等幅フォントになるように、アプリケーション→Font Book→Osaka  
レギュラーを選択し右クリックで「使用停止」して使っています。

#### ２）Windows 10(msys2) -- NTEmacs25.1 + IMEパッチ, ATOK2015
Emacs本体のインストール手順は、下記URL参照  
<http://jr4qpv.hatenablog.com/entry/2016/12/23/122533>

#### ３）Ubunt 16.04 LTS Server -- Emacs25.1
Emacs本体のインストール手順は、下記URL参照  
<http://jr4qpv.hatenablog.com/entry/2016/12/30/131411>

利用している外部パッケージ
-----------------------------
MELPAからインストールしたもの。

* init-loader
* undo-tree
* sequential-command
* helm
* elscreen
* helm-ag
* ag
* eldoc-extension
* paredit
* lispxmp
* open-junk-file
* recentf-ext
* egg
* diminish
* markdown-mode
* package-utuls
* magit
* auto-complete  (有効にしていない)
* auto-async-byte-compile  (有効にしていない)
* auto-install  (有効にしていない)

設定ファイル構成
------------------
フォルダ構成は下記。設定ファイルは[init-loader](http://jr4qpv.hatenablog.com/entry/2017/01/08/171320)を使っているので、`~/.emacs.d/inits/`フォルダに機能分割して記述した複数ファイルで構成される。

```
~/.emacs.d/
├── .gitignore                     ･･･Git無視設定ファイル
├── README.md                      ･･･本説明ファイル 
├── custom-file.el                 ･･･カスタム設定
├── elisp                          ･･･自作elisp置き場
├── elpa                           ･･･パッケージ関連ファイル
├── etc                            ･･･起動スクリプトファイルなど
├── init.el                        ･･･Emcas設定ファイル（親）
├── inits                          ･･･init-loader設定ファイル
│   ├── 00_environment.el          ･･･番号の小さい順に実行される
│   ├── 01_backup.el
│   ├        ･･･
│   ├── 99_keybind.el
│   ├── cocoa-emacs-01_ime.el      ･･･macOS専用設定ファイル
│   ├        ･･･
│   ├── windows-00_custom-set.el   ･･･Window専用設定ファイル
│   └        ･･･
└── themes                         ･･･自作テーマ置き場
     └── my-manoj-dark-theme.el
```

カスタマイズした主なキー定義
-------------------------------
カスタマイズしてよく使うキー覧が下記。

|キー      | 説明                                           |
|:---------|:-----------------------------------------------|
|C-h       |一文字消去（delete-backward-char)               |
|C-t       |ウィンドウ切り換え(other-windows)               |
|C-c C-SPC |選択リージョンのコピー(kill-ring-saves)         |
|C-c z     |フレームを最小化(suspend-frame)                 |
|C-c h     |ファイル履歴からファイルを開く（helm-mini)      |
|C-x f     |helmからファイルを開く（helm-find-file)         |
|C-x b     |helmでバッファー切り換え（helm-buffers-list)    |
|C-z C-f   |新しいタブでファイルを開く(elscreen-find-file)  |
|F9        |タブ切り換え(elscreen-toggle)                   |
|C-z k     |タブを閉じる(elscreen-kill)                     |
|C-z d     |新しいelscreenでdiredを開く(elscreen-dired)     |
|C-x g     |Gitステータスを確認(magit-status)               |

免責
----
本ソフトの使用にあたっては、使用者自身の責任で行ってください。作者は何の保証もしないし、本プログラムを利用した上で生じたいかなる障害や損害についても、作者は責任を負いません。

作者関連サイト
---------------
* [Around the modern stone age.](http://jr4qpv.hatenablog.com/)

履歴
----
* 2016/12/12 作業開始
* 2017/01/24 公開
