=begin
問題

1行目に行数を表す整数 n、続く n 行で m 個の「文字」と「整数」の組が空白区切りで入力されます。
n 個の整数だけをそのまま順に出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
n
S_1 D_1
S_2 D_2
...
S_n D_n


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
n 個の整数を順に改行区切りで出力してください。
最後は改行し、余計な文字、空行を含んではいけません。

条件
・1 ≦ n ≦ 10,000
・-10,000 ≦ D_i ≦ 10,000 (ただし、1 ≦i ≦ n)
・S_iは1つの半角英文字

入力例1
4
S 1
F 2
E 5
Y 6

出力例1
1
2
5
6

入力例2
3
S -3
G -5
R -35

出力例2
-3
-5
-35

入力例3
6
A 12
E 42
G -8
R -7
Y 56
E 22

出力例3
12
42
-8
-7
56
22

=end
puts "回答--------------"

count = gets.to_i

arrays = []
for i in 1..count
  str = gets.split(" ")
  arrays.push(str)
end

arrays.each do |array|
  puts array[1]
end


puts "解答--------------"
=begin 

num = gets.chomp.to_i

num.times do
  puts gets.chomp.split(' ')[1]
end

=end