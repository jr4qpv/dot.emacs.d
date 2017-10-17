dot.emacs.d
============
Emacs25 configuration files.

概要
----
Emacs25の`~/.emacs.d/`フォルダ、私が使ってる設定ファイル  
macOS, Windows, Linuxで共通

Emacsの初期状態ではお世辞にも使い勝手がいいとは言えないが、ちょっと手を入れる事で驚くほどモダンで使い勝手が良くなります。  
本設定から手軽に使い始めてみるのもよいと思いますのでご活用ください。ここから自分の好みに変更していくのもよいです。

基本、よく使われているパッケージを利用していますが、設定については下記ブログでも紹介しています。  
<https://www.yokoweb.net/tag/emacs/>

利用方法
---------
コンソールから下記コマンドで、設定ファイル一式を`~/.emacs.d/`に取得。

```
git clone https://github.com/jr4qpv/dot.emacs.d.git ~/.emacs.d
```

動作確認したEmacs
-------------------
macOS, Windows, Linuxで共用です。

#### １）macOS 10.12 -- Emacs25 Mac port, ATOK2015
Emacs本体のインストール手順は、下記URL参照  
<https://www.yokoweb.net/2016/12/13/macos-emacs-25-install/>

Osaka等幅フォントになるように、アプリケーション→Font Book→Osaka  
レギュラーを選択し右クリックで「使用停止」して使っています。

#### ２）Windows 10(msys2) -- NTEmacs25 + IMEパッチ, ATOK2015
Emacs本体のインストール手順は、下記URL参照  
<https://www.yokoweb.net/2017/05/31/msys2-emacs-25-2-install/>  
<https://www.yokoweb.net/2016/12/23/msys2-emacs-25-install/>

#### ３）Ubunt 16.04 LTS Server -- Emacs25
Emacs本体のインストール手順は、下記URL参照  
<https://www.yokoweb.net/2017/03/19/emacs-25-apt-install/>

利用している外部パッケージ
-----------------------------
MELPAからインストールしたもの。

- ag
- auto-async-byte-compile
- diminish
- egg
- eldoc-extension
- helm
- helm-ag
- helm-descbinds
- init-loader
- lispxmp
- magit
- markdown-mode
- migemo
- open-junk-file
- package-utils
- paredit
- recentf-ext
- sequential-command
- tabbar
- undo-tree

インストールしてあるが有効にしてないもの。

- auto-complete
- auto-install
- elscreen

設定ファイル構成
------------------
フォルダ構成は下記。設定ファイルは[init-loader](https://www.yokoweb.net/2017/01/08/emacs-init-loader/)を使っているので、`~/.emacs.d/inits/`フォルダに機能分割して記述した複数ファイルで構成される。

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
カスタマイズしたよく使うキー覧が下記。

|キー      | 説明                                           |
|:---------|:-----------------------------------------------|
|C-c ?     |ヘルプ(help-command)                            |
|C-h       |一文字消去（delete-backward-char)               |
|C-t       |ウィンドウ切り換え(other-windows)               |
|C-c l     |行折り返し表示切り替え(toggle-truncate-lines)   |
|C-a C-a   |バッファー先頭に移動                            |
|C-e C-e   |バッファー末尾に移動                            |
|C-c z     |フレームを最小化(suspend-frame)                 |
|C-c a     |ag検索(helm-do-ag)                              |
|C-o       |ファイル履歴からファイルを開く（helm-mini)      |
|C-c h     |ファイル履歴からファイルを開く（helm-mini)      |
|C-x f     |helmからファイルを開く（helm-find-file)         |
|C-x b     |helmでバッファー切り換え（helm-buffers-list)    |
|<help> b  |helmでキーバインド一覧表示（helm-descbinds)     |
|M-y       |helmで履歴からペースト（helm-show-kill-ring)    |
|C-x g     |Gitステータスを確認(magit-status)               |
|C-z C-p   |左のタブへ切り換え(tabbar-backward-tab)         |
|C-z C-n   |右のタブへ切り換え(tabbar-forward-tab)          |
|F9        |左のタブへ切り換え(tabbar-backward-tab)         |
|F10       |右のタブへ切り換え(tabbar-forward-tab)          |

免責
----
本ソフトの使用にあたっては、使用者自身の責任で行ってください。作者は何の保証もしないし、本プログラムを利用した上で生じたいかなる障害や損害についても、作者は責任を負いません。

作者関連サイト
---------------
- [GitHub - jr4qpv](https://github.com/jr4qpv/)
- [The modern stone age.](https://www.yokoweb.net/)

来歴
----
* 2016/12/12 作業開始
* 2017/01/24 公開
