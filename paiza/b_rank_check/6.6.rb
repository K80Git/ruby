=begin
問題
1行目で文字列 s、2行目で文字列 t が入力されます。
s が t の中で何回出現するかカウントして出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

s
t


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
出現回数を1行で出力してください。
最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

1 ≦ (文字列 s の長さ) ≦ 10,000
1 ≦ (文字列 t の長さ) ≦ 10,000
文字列 s, t は、半角アルファベットで構成された文字列

入力例1
AA
abdeeAAbAAAbfde

出力例1
3

入力例2
el
scale

出力例2
0

入力例3
Ji
JiJiiJiIjiIJjIJi

出力例3
4

=end
puts "回答--------------"
key = gets.chomp
line = gets.chomp
key_leng = key.length
line_leng = line.length

count = 0
for i in 0..(line_leng-key_leng)
  if line.slice(i..i+key_leng-1) == key
    count += 1
  end
end

puts count

puts "解答--------------"
=begin 

pattern = gets.chomp
string = gets.chomp

result = 0
(0..(string.size - pattern.size)).each do |i|
  substring = string.slice(i, pattern.size)

  if substring == pattern
    result += 1
  end
end

puts result

=end