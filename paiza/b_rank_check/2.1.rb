=begin
問題
1つの整数nが入力されるので、そのnに1を足した値を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

n


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
nに1を足した数値を出力して下さい。
最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

-3,000,000 ≦ n ≦ 3,000,000

入力例1
-10

出力例1
-9

入力例2
0

出力例2
1

入力例3
1

出力例3
2

=end
puts "回答--------------"

num = gets.to_i

puts num +1

puts "解答--------------"
=begin 

num = gets.chomp.to_i
puts num + 1
=end