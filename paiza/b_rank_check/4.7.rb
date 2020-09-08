=begin
問題

スペース区切りの2つの整数と、文字列が入力されます。2つの整数の範囲の部分文字列を、大文字にして出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

a b
s


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
文字列 s の a 文字目から b 文字目を大文字にして、文字列 s を出力してください。
文字列 s に含まれる記号やスペースは、変形せずそのまま出力します。

最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

1 ≦ a ≦ b ≦ (文字列 s の長さ) ≦ 100
文字列 s は、半角英数字・半角記号スペースで構成されます。

入力例1
2 6
this is a pen

出力例1
tHIS Is a pen

入力例2
2 6
Welcome to the paiza! I`m studying ruby!

出力例2
WELCOMe to the paiza! I`m studying ruby!

入力例3
1 10
Welcome to the paiza! I`m studying ruby!

出力例3
WELCOME TO the paiza! I`m studying ruby!

=end
puts "回答--------------"

num = gets.split(" ")
a = num[0].to_i
b = num[1].to_i

line = gets.chomp
leng = line.length

for i in 0..leng
  if i >= a-1 && i <= b-1
    print line[i].upcase
  else
    print line[i]
  end
end

puts "\n"




puts "解答--------------"
=begin 
nums = gets.chomp.split(' ')
str = gets.chomp

(1..(str.size)).each do |i|
  if nums[0].to_i <= i && i <= nums[1].to_i
    print str[i - 1].upcase
  else
    print str[i - 1]
  end
end

print "\n"

=end