puts "問題--------------"
=begin
m 個の文字 c_1, ..., c_m と、 n 個の文字列 S_1, ..., S_n が与えられます。各 c_i （1 ≤ i ≤ m） について、各 S_j （1 ≤ j ≤ n） に c_i が出現するかをそれぞれ調べ、出現する場合は "YES" を、そうでない場合には "NO" を、そのつど出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

m
c_1
...
c_m
n
S_1
...
S_n

1 行目に正整数 m が、 2 行目から (m + 1) 行目では文字 c_1, ...,c_m が、 (m + 2) 行目に正整数 n が、 (m + 3) 行目から ( m + n + 2) 行目では文字列 S_1, ..., S_n が、それぞれ改行区切りで与えられます（入力は全部で (m + n + 2) 行）。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
c_1 が S_1 に出現するかどうか、 c_1 が S_2 に出現するかどうか、 ... 、 c_1 が S_n に出現するかどうか、 c_2 が S_1 に出現するかどうか、 c_2 が S_2 に出現するかどうか、 ... 、 c_2 が S_n に出現するかどうか、 ... 、 c_m が S_1 に出現するかどうか、 c_m が S_2 に出現するかどうか、 ... 、 c_m が S_n に出現するかどうか、という順番で m * n 回出力してください。
末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・1 ≤ m, n ≤ 50
・各 c_i, S_j (1 ≤ i ≤ m, 1 ≤ j ≤ n） はそれぞれアルファベット大文字あるいは小文字からなる文字、文字列
・各 S_j （1 ≤ j ≤ n） の長さは 1 以上 10 以下

入力例1
1
a
2
paiza
kyoko

出力例1
YES
NO

入力例2
2
c
d
2
cat
dog

出力例2
YES
NO
NO
YES
=end

puts "回答--------------"

count_key = gets.to_i

key_array = []
for i in 1..count_key
  key = gets.chomp
  key_array.push(key)
end

count_word = gets.to_i
word_array = []

for i in 1..count_word
  word = gets.chomp
  word_array.push(word)
end

key_array.each do |k|
  word_array.each do |w|
    if w.include?(k)
      puts "YES"
    else
      puts "NO"
    end
  end
end

