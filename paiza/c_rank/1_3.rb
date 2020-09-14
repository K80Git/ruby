puts "問題--------------"
=begin

下記の問題をプログラミングしてみよう！
整数 n と n 個の整数 a_1, ..., a_n が改行区切りで与えられるので、 a_1, ..., a_n を与えられた順に、改行区切りで出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

n
a_1
...
a_n

1 行目には整数 n が与えられ、2 行目から (n+1) 行目にかけては n 個の整数 a_1, ..., a_n が改行区切りで与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
a_1, ..., a_n を入力された順に改行区切りで出力してください。

a_1
...
a_n

末尾に改行を入れ、余計な文字、空行を含んではいけません。
条件
すべてのテストケースにおいて、以下の条件をみたします。

・1 ≦ n ≦ 50
・各 a_i（1 ≦ i ≦ n）について 1 ≦ a_i ≦ 50

入力例1
2
1
2

出力例1
1
2

入力例2
3
10
5
39

出力例2
10
5
39

=end

puts "回答--------------"

count = gets.to_i

for i in 1..count
    num =  gets.to_i
    puts num
end