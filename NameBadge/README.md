# 名札

SIJP スタッフ用の名札です。
以下のファイルを公開しています。

 * 印刷用STLファイル (*.stl)
 * 編集用の[OpenSCAD](http://www.openscad.org/)ソースコード(*.scad)
    * 編集用の[IPAexゴシックフォント](http://ipafont.ipa.go.jp/)IPAexゴシックフォント

![サンプル/sample](PrintSample.jpg)

## 印刷方法

このモデルは一色印刷用です。STLファイルを開いて印刷します。Raft/Support 等は不要です。

## 編集方法

文字数に応じて 2文字版、3文字版、4文字版の関数が定義されています。
フォントの文字によって左右方向の位置を微調整したい場合は offsetN (N=1,2,3...) という引数に指定してください。
