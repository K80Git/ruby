=begin
問題

文字列が入力されるので、その長さを出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

s


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
文字列 s の長さを出力してください。

最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件を満たします。

1 ≦ (文字列 s の長さ) ≦ 30
s は半角英数字で構成された文字列です。

入力例1
input

出力例1
5

入力例2
abc123

出力例2
6

入力例3
0123456789

出力例3
10

=end
puts "回答--------------"

puts gets.chomp.length

puts "解答--------------"
=begin 

line = gets.chomp
puts line.size

=end