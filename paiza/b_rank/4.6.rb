=begin
問題
スペース区切りの2つの整数が入力されるので、その区間の全ての整数を順に表示してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

a b


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
a と b の間の全ての整数を順に表示してください。

最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件を満たします。

0 ≦ a ≦ b ≦ 100

入力例1
0 10

出力例1
0
1
2
3
4
5
6
7
8
9
10

入力例2
5 10

出力例2
5
6
7
8
9
10

入力例3
3 3

出力例3
3

=end
puts "回答--------------"

num = gets.split(" ")

a = num[0].to_i
b = num[1].to_i
for i in a..b
  puts i
end


puts "解答--------------"
=begin 

nums = gets.chomp.split(' ')

for i in nums[0]..nums[1]
  puts i
end
=end