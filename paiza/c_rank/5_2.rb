puts "問題--------------"
=begin

n 人の人の名前 s_1, ..., s_n が与えられたのち、 m 回の「攻撃」に関する情報が与えられます。各行は “p_i a_i” というフォーマットで与えられ、 p_i はダメージを受けた人の名前 （s_1, ..., s_n のいずれか） 、 a_i は p_i が受けたダメージ数を表す数です。

最後に人名 S が与えられるので （S は s_1, ..., s_n のいずれか） 、 S が受けたダメージの合計を出力してください。なお、一度もダメージを受けていない人の合計ダメージは 0 とします。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

n
s_1
...
s_n
m
p_1 a_1
...
p_m a_m
S

1 行目には正整数 n が与えられ、 2 行目から (n + 1) 行目には人の名前 s_1, ..., s_n が改行区切りで与えられます。 (n + 2) 行目には正整数 m が与えられ、 (n + 3) 行目から (n + m + 2) 行目には人の名前 p_i （s_1, ..., s_n のいずれか） とその人が受けたダメージ a_i が "p_i a_i" という半角スペース区切りのフォーマットで m 行与えられます。 (n + m + 3) 行目には s_1, ..., s_n の中のいずれかの人名 S が与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
S の受けた合計ダメージを出力してください。
末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・1 ≤ n, a_i ≤ 50 （1 ≤ i ≤ n）
・各 s_i （1 ≤ i ≤ n） は大小アルファベットからなる長さ 1 以上 10 以下の文字列で、互いに全て異なる

入力例1
2
Kirishima
Kyoko
2
Kyoko 1
Kyoko 2
Kyoko

出力例1
3

入力例2
3
paiiza
paiza
paiiiza
2
paiiza 2
paiiiza 3
paiza

出力例2
0

=end

puts "回答--------------"

percount = gets.to_i
per_array = []

for i in 1..percount
  num = gets.chomp
  per_array.push(num)
end

attacount = gets.to_i
atta_array = []

for i in 1..attacount
  num = gets.split(" ")
  atta_array.push(num)
end

target = gets.chomp
damage = 0

atta_array.each do |attac|
  if attac[0] == target
    damage += attac[1].to_i
  end
end

puts damage