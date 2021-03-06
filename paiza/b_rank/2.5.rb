=begin
問題

スペース区切りの2つの整数がn行与えられるので、2つの整数をそれぞれ足し合わせて、さらに、その結果をすべての行について足し合わせて出力してください。
ただし、2つの整数が同じだった場合は、2つの整数を掛け合わせてから、その結果を足し合わせてください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

n
a_1 b_1
...
a_n b_n

nは与えられる2つの整数の行数です。
a_iとb_iはそれぞれが整数です。


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
各行の計算結果を足し合わせた値を出力してください。
最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件を満たします。

1 ≦ n ≦ 50
-100000 ≦ a_n ≦ 100000
-100000 ≦ b_n ≦ 100000

入力例1
5
2 1
3 6
4 2
4 4
4 70

出力例1
108

入力例2
1
0 0

出力例2
0

入力例3
3
1 2
3 4
5 6

出力例3
21

=end
puts "回答--------------"

count = gets.to_i

sum = 0
for i in 1..count
  num = gets.split(" ")
  x = num[0].to_i
  y = num[1].to_i

  if x == y
    sum += (x*y)
  else
    sum += x + y
  end
end

puts sum

puts "解答--------------"
=begin 

count = gets.chomp.to_i
sum = 0

(1..count).each { |i|
    line = gets.chomp.split(" ")
    if line[0].to_i == line[1].to_i
        sum += line[0].to_i * line[1].to_i
    else
        sum += line[0].to_i + line[1].to_i
    end
}

puts sum

=end