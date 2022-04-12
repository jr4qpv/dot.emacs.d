dot.emacs.d
============
Emacs configuration files.

概要
----
Emacs25/26/27/28の「`~/.emacs.d/`」フォルダ、私が使ってる設定ファイル  
macOS, Windows, Linuxで共通

Emacsの初期状態ではお世辞にも使い勝手がいいとは言えないが、ちょっと手を入れる事で驚くほどモダンで使い勝手が良くなります。  
本設定から手軽に使い始めてみるのもよいと思いますのでご活用ください。ここから自分の好みに変更していくのもよいです。

基本、よく使われているパッケージを利用していますが、設定については下記ブログでも紹介しています。  
<https://www.yokoweb.net/tag/emacs/>

利用方法
---------
コンソールから下記コマンドで、設定ファイル一式を `~/.emacs.d/` に取得。

```
git clone https://github.com/jr4qpv/dot.emacs.d.git ~/.emacs.d
```

### elscreenへの切り替え
本設定のタブエディター機能は、デフォルトでは「tabbar」を利用しています。
好みで「elscreen」の方がよい場合は、gitからelscreenブランチに切り替える事で、elscreenに変更できる。


動作確認したEmacs
-------------------
macOS, Windows, Linuxで共用。

1. macOS 10.13 -- Emacs26 Mac port, ATOK2017
2. Windows 10(msys2) -- NTEmacs25 + IMEパッチ, ATOK2017
3. Ubunt 18.04/16.04 LTS Server -- Emacs25
4. Ubunt 18.04/16.04 LTS Desktop（GUI） -- Emacs25
5. Windwos10 WSL Ubunt/Ubuntu 18.04 -- Emacs25

Emacs本体のインストール手順は、下記URL参照  
<https://www.yokoweb.net/2017/04/01/emacs-macos-msys2-ubuntu/>


利用している外部パッケージ
-----------------------------
MELPAからインストールしたもの。

- ag
- diminish
- egg
- eldoc-extension
- helm
- helm-ag
- helm-descbinds
- init-loader
- lispxmp
- lua-mode
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

elscreenブランチで有効になるもの

- elscreen

インストールしてあるが有効にしてないもの。

- auto-async-byte-compile
- auto-complete
- auto-install

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
|C-z C-a   |バッファー先頭に移動(beginning-of-buffer)       |
|C-z C-e   |バッファー末尾に移動(end-of-buffer)             |
|C-c z     |フレームを最小化(suspend-frame)                 |
|C-c a     |ag検索(helm-do-ag)                              |
|C-o       |ファイル履歴からファイルを開く（helm-recentf)    |
|C-c h     |ファイル履歴からファイルを開く（helm-mini)      |
|C-x f     |helmからファイルを開く（helm-find-file)         |
|C-x b     |helmでバッファー切り換え（helm-buffers-list)    |
|<help\> b |helmでキーバインド一覧表示（helm-descbinds)     |
|M-y       |helmで履歴からペースト（helm-show-kill-ring)    |
|C-x g     |Gitステータスを確認(magit-status)               |
|C-,       |左のタブへ切り換え(tabbar-backward-tab)         |
|C-.       |右のタブへ切り換え(tabbar-forward-tab)          |
|C-z p     |左のタブへ切り換え(tabbar-backward-tab)         |
|C-z n     |右のタブへ切り換え(tabbar-forward-tab)          |
|F7        |左のタブへ切り換え(tabbar-backward-tab)         |
|F8        |右のタブへ切り換え(tabbar-forward-tab)          |

### elscreenブランチにした時の関連キー定義

|キー      | 説明                               　　　     　　|
|:---------|:--------------------------------------------------|
|C-z c     | 新規スクリーンを作成して移動する(elscreen-create) |
|C-z k     | 現在のスクリーンを閉じる(elscreen-kill)           |
|C-z p     | 前のスクリーンへ(elscreen-previous)               |
|C-z n     | 次のスクリーンへ(elscreen-next)                   |
|C-z a     | 前と次のスクリーンをトグル(elscreen-toggle)       |
|C-z [0-9] | 番号のスクリーンへ(elscreen-jump-[0-9])           |
|C-z ?     | ヘルプを表示する                                  |

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
* 2017/10/24 elscreenブランチの追加
* 2022/04/12 *.elcの削除
