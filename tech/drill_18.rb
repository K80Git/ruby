
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

配列にある値の中から偶数の数をカウントして出力するメソッドを作りましょう。

出力例：
count_evens([2, 1, 2, 3, 4]) → 3
count_evens([2, 2, 0]) → 3
count_evens([1, 3, 5]) → 0

ヒント
even?というメソッドを使いましょう。

10.even?
#=> true

5.even?
#=> false

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

def count_evens(arrays)
  counter = 0
  arrays.each do |array|
    if array.even?
      counter += 1
    end
  end
  puts @counter
end

arrays = [4,5,3,4,4,4,4]

count_evens(arrays)







#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

def count_evens(arrays)
  counter = 0
  arrays.each do |array|
    if array.even?
      counter += 1
    end
  end
  puts @counter
end
=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------