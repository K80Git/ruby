=begin
問題
文字列が入力されるので、それらの文字を、1文字ずつ出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

s


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
文字列 s の各文字を、1文字ずつ出力してください。
1文字出力ごとに改行してください。

最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件を満たします。

1 ≦ (文字列 s の長さ) ≦ 30
s は半角英数字で構成された文字列

入力例1
read

出力例1
r
e
a
d

入力例2
scale

出力例2
s
c
a
l
e

入力例3
representative

出力例3
r
e
p
r
e
s
e
n
t
a
t
i
v
e

=end
puts "回答--------------"

line = gets.chomp

leng = line.length

for i in 0..leng
  puts line[i]
end

puts "解答--------------"
=begin 
str = gets.chomp.split('')

str.each do |char|
  puts char
end

=end