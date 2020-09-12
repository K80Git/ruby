=begin
問題
1行目の文字が、2行目の文字列の中に何個出現するかをカウントして出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

c
s


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
文字列 s の中に、文字 c が出現する個数を数えて出力してください。

最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件を満たします。

c は1つの文字
1 ≦ (文字列 s の長さ) ≦ 30
c, s は、半角文字で構成された文字列

入力例1
A
abdeeAAbAAAbfde

出力例1
5

入力例2
1
abc123

出力例2
1

入力例3
5
122333444455555

出力例3
5

=end
puts "回答--------------"

key = gets.chomp
line = gets.chomp
leng = line.length

count = 0

for i in 0..leng
  if line[i] == key
    count += 1
  end
end

puts count


puts "解答--------------"
=begin 

query = gets.chomp
source = gets.chomp

puts source.count(query)

=end