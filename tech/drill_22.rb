
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

任意の文字列の最後の2文字を3回繰り返し
出力するメソッドを作りましょう。

※わからない場合はAPIを利用して問題を解きましょう。
参考URL: https://docs.ruby-lang.org/ja/search/

出力例：
extra_end('Hello') → 'lololo'
extra_end('ab') → 'ababab'
extra_end('Hi') → 'HiHiHi'

include?メソッドとslice!メソッドを使いましょう。
include?
include?メソッドは指定した要素が、配列中に含まれているかを判定するメソッドです。
array = ["foo", "bar"]
puts array.include?("bar")
# => true
puts array.include?("hoge")
# => false

slice
sliceメソッドを用いることで、配列や文字列から指定した要素を取り出すことができます。
# 配列を作成します
array = [0,1,2,3,4,5,6]

# 配列から引数で指定した要素をsliceします
ele1 = array.slice(1)
puts ele1
#=> 1

# 配列番号1から4つ分の要素をsliceします
ele2 = array.slice(1,4)
puts ele2
#=> 1 2 3 4

# 配列はもとのままです
puts array 
#=> [0,1,2,3,4,5,6]

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

def extra_end(str)
  leng = str.length.to_i
  sliStr = str.slice(leng-2,2)
  puts sliStr*3
end

str = "aaaaaaaaaaaaaaaaaaldab"
extra_end(str)



#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

def extra_end(str)
  char_num = str.length
  right2 = str.slice(char_num - 2, 2)
  puts right2 * 3
end


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
