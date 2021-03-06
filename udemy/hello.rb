puts "Hello, World"

# put 10 + 3
=begin 
hello.rb:3:in `<main>': undefined method `put' for main:Object (NoMethodError)
Did you mean?  puts
               putc
=end

puts 10 + 3

#命名規則
# アルファベットの小文字または_（アンダーバー）から
# 数字は避ける。頭は数字はエラー

#定数（変更しないもの）
#定数は大文字で表示
#定数を変更する場合は、警告文が出る

#リテラル=>記述できる値
# 数値、文字列、配列、ハッシュ

#数値型
#Numeric=>数値クラス、Integer=>整数、Float＝＞小数点クラス
#Numericが大元のクラス　抽象的名クラス
# 計算結果において、整数/整数としたら、整数のみ出てくるので、
# 小数点以下が必要な場合は、整数.0/整数（両方もしくは片方）のようにする
#　変数の型を知りたい時は、変数.classでわかる

#文字列
# "",''で記述する。
# ""は文字列内に改行や式を描く場合必要
# ''は、式がそのまま出される

#文字列操作
s = "Hello World"
puts s.upcase #大文字に変更される
puts s #ただし、もとの文字列に変化は与えない

puts s.upcase! #大文字に変更されるが破壊的メソッド"!"を追加する
puts s #もとの文字列に変化があり、全部大文字で出力される

i = 2
puts i.methods
