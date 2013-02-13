＜これは何？＞
vimでSKyrimのMOD用スクリプトを開発するためのプラグインです。
シンタックスハイライト、キーワードや組み込み関数の補完をサポートします。
また、vimから離れずにコンパイルできます(ノーマルモードでF7を押すだけです)。

＜使用方法＞
1.環境変数として SKYRIMDIR を定義します。
  値はSkyrimのインストールフォルダのパスです。
  Steam版なら「～\Steam\steamapps\common\Skyrim」の辺です。

2.このディレクトリにあるファイルをvimfilesに放り込みます。
  pathogenやVundleを使っている方は、然るべき場所に置いてください。

3._vimrcに以下のように追記します。
  _vimrcが無い人はvimのインストールフォルダに作成して記述してください。
  pathogenや(中略)は適当にパスを読み替えてください。

    au BufNewFile,BufRead *.psc  setf psc
    au FileType psc :set dict=~/vimfiles/dict/psc.dict

4.Skyrimのスクリプトソースファイル(拡張子psc)を開いてF7を押すと、
  開いているソールファイルが保存され、コンパイルされます。
  「%SKYRIMDIR%\Data\Scripts\」にコンパイルされたスクリプトが出力されます。
  また、コンパイラの出力がプレビューウインドウに出ます。

＜今後の予定＞
シンタックスハイライトとキーワード補完用のdictは全く充実していないので、
気が向いたらもう少し揃えます。

＜連絡先＞
不具合、感想等があれば連絡ください。
Twitter:gim_kondo

