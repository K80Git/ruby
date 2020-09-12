=begin
問題

スペース区切りの2つの整数と、文字列が入力されるので、2つの整数の範囲の部分文字列を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

a b
s


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
s の文字列を a 文字目から b 文字目の範囲で切り取った文字列を出力してください。

最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件を満たします。

1 ≦ a ≦ b ≦ (文字列 s の長さ) ≦ 100
s は半角英数字で構成された文字列です。

入力例1
2 6
this is a pen

出力例1
his i

入力例2
2 6
Welcome to the paiza! I`m studying ruby!

出力例2
elcom

入力例3
1 1
Welcome to the paiza! I`m studying ruby!

出力例3
W

=end
puts "回答--------------"

count = gets.split(" ")
a = count[0].to_i - 1
b = count[1].to_i - 1

str = gets.chomp
puts str.slice(a..b)

puts "解答--------------"
=begin 

nums = gets.chomp.split(" ")
str = gets.chomp.split("")

for i in (nums[0].to_i - 1)..(nums[1].to_i - 1)
    print str[i]
end

print "\n"

=end