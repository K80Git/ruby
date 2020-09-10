=begin
問題
5行5列の五目並べの盤面が与えられます。

盤面の各マスには、"O"か"X"か"."が書かれています。

"O"と"X"は、それぞれプレイヤーの記号を表します。

入力された値をそのまま表示してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

s_1
s_2
s_3
s_4
s_5


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
標準入力から入力されたデータをそのまま出力

条件
すべてのテストケースにおいて、以下の条件をみたします。

・s_iの文字数は5文字
・s_iに含まれる文字は"O"か"X"か"."のいずれか
・勝者が2人になる盤面が、与えられることはありません。

入力例1
XXOXO
OXOXX
OOOOO
OXOX.
XOXXO

出力例1
XXOXO
OXOXX
OOOOO
OXOX.
XOXXO

入力例2
XXOXO
OXOXX
.OXXO
OXOO.
XXXXX

出力例2
XXOXO
OXOXX
.OXXO
OXOO.
XXXXX

入力例3
...X.
...X.
...X.
...X.
OOOO.

出力例3
...X.
...X.
...X.
...X.
OOOO.

=end
puts "回答--------------"

for i in 1..5
  line = gets.chomp
  puts line
end



puts "解答--------------"
=begin 

5.times do
  puts gets.chomp
end
=end