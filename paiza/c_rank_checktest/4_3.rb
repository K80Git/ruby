puts "問題--------------"
=begin
下記の問題をプログラミングしてみよう！
正整数 n が与えられ、数のペアが n 個与えられます。各ペアの最初の数はりんごの個数を、その次の数はバナナの個数を表しています。これらの数のペアを以下の規則に従って、偉い順に並び替えてください。

1. ふたつのペアのりんごの数が異なる場合、りんごの数が多い方が偉い（この際、バナナの数は関係ない）。
2. りんごの数が同じである場合、バナナの数が多い方が偉い。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

n
a_1 b_1
...
a_n b_n

1 行目に正整数 n が、 2 行目から (n + 1) 行目には半角スペース区切りの数のペア a_1 b_1, ..., a_n b_n が、それぞれ改行区切りで与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
ペアを偉い順に並べ替え、改行区切りで n 行、順に出力してください。出力の各行は入力と同じく、 "a_i b_i" のように、りんごの個数とバナナの数が、この順に、半角スペースで区切られているものとします。
末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≤ n , a_i, b_i ≤ 50 （1 ≤ i ≤ n）

入力例1
2
1 3
2 2

出力例1
2 2
1 3

入力例2
3
2 2
2 3
3 1

出力例2
3 1
2 3
2 2
=end

puts "回答--------------"

count = gets.to_i

array = []

for i in 1..count
  num = gets.split(" ")
  a = num[0].to_i
  b = num[1].to_i
  new_num = [b,a]
  array.push(new_num)
end

array.sort.reverse.each do |i|
  puts "#{i[1]} #{i[0]}"
end
