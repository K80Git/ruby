=begin
問題
スペース区切りの2つの整数が入力されるので、それらを足して出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

a b


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
a と b を足した値を出力してください。

最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

-100,000 ≦ a ≦ 100,000
-100,000 ≦ b ≦ 100,000

入力例1
0 0

出力例1
0

入力例2
1 2

出力例2
3

入力例3
10 20

出力例3
30

=end
puts "回答--------------"

num = gets.split(" ")

puts num[0].to_i + num[1].to_i

puts "解答--------------"
=begin 

nums = gets.split(' ')
puts nums[0].to_i + nums[1].to_i

=end