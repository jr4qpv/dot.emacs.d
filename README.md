dot.emacs.d
============
Emacs25 configuration files.

概要
----
Emacs25.1の`~/.emacs.d/`フォルダ、私が使ってる設定ファイル  
macOS, Windows, Linuxで共通

Emacsの初期状態ではお世辞にも使い勝手がいいとは言えませんが、ちょっと手を入れる事で驚くほどモダンで使い勝手が良くなります。  
本設定から手軽に使い始めてみるのもよいと思いますので活用ください。ここから自分の好みに変更していくのもよいです。

基本、よく使われているパッケージを利用していますが、設定については下記ブログでも紹介しています。  
<http://jr4qpv.hatenablog.com/archive/category/Emacs>

利用方法
---------
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

設定内容
---------
#### 主な利用パッケージ
* init-loader
* undo-tree
* sequential-command
* helm
* elscreen

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
