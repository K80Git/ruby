=begin
問題

1行目に行数を表す整数 n、続く n 行の各行で「文字」と「整数」の組が空白区切りで入力されます。
n 個の組を、「整数」の値で昇順に並べ変え、「文字」を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

n
S_1 D_1
S_2 D_2
...
S_i D_i
...
S_n D_n

S_i は「文字」で、D_i は「整数」です。
入力される文字 S_i は、同じ文字が複数入力されることはなく、整数 D_i も同様です。


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
n 個の組を、「整数」の値で昇順に並べ変え、「文字列」を1行ずつ出力してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・1 ≦ n ≦ 100
・-10,000 ≦ D_i ≦ 10,000
・S_iは半角英文字1文字
・iとjが異なるなら、D_iとD_jは異なる
・iとjが異なるなら、S_iとS_jは異なる

入力例1
2
A 1
B 2

出力例1
A
B

入力例2
3
G 0
S 3
E -2

出力例2
E
G
S

入力例3
5
H -2
R 0
W -5
A -1
E -20

出力例3
E
W
H
A
R
=end
puts "回答--------------"

count = gets.to_i

low_array =[]

for i in 1..count
  num_s = gets.split(" ")
  num = num_s[1].to_i
  word = num_s[0].to_s
  nums = [num,word]
  low_array.push(nums)
end

low_array.sort.each do |array|
  puts array[1]
end


puts "解答--------------"
=begin 

num = gets.chomp.to_i
array = {}

(1..num).each do
  line = gets.chomp.split(' ')
  array[line[1].to_i] = line[0]
end

array = array.sort

array.each do |ele|
  puts ele[1]
end
=end