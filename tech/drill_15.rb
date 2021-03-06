
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

任意の文字列で
"hi"がいくつあるか数えてその数を出力するメソッドを作りましょう。

出力例：
count_hi('abc hi ho') → 1
count_hi('ABChi hi') → 2
count_hi('hihi') → 2

"foobarbazfoobarbaz".scan("ba")
=> ["ba", "ba", "ba", "ba"]

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------


def count_hi(string)
  puts string.scan("hi").length
end
string = 'abc hi ho'

count_hi(string)

#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

def count_hi(str)
  puts str.scan("hi").length
end

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
