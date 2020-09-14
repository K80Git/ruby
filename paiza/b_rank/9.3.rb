=begin
問題
英大文字の文字列が入力されます。
文字列の先頭1文字が、末尾1文字よりもアルファベット順で先に出現するならば、"true"を出力し、そうでなければ"false"を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
1行の文字列が入力されます。


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
"true"または"false"を出力してください。

条件
・最初のアルファベットは、最後のアルファベットと異なる文字
・文字列は半角英大文字で構成される
・1 ≦ (文字列の長さ) ≦10

入力例1
GINO

出力例1
true

入力例2
CZ

出力例2
true

入力例3
VIOLIN

出力例3
false

=end
puts "回答--------------"

line = gets.chomp.split("")
leng = line.length
st = line[0]
fi = line[leng-1]

array = [st,fi]
puts array == array.sort

puts "解答--------------"
=begin 
string = gets.chomp

puts string[0].ord < string[string.size - 1].ord

=end