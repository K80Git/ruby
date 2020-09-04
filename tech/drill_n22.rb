
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

count_evens([2, 1, 2, 3, 4]) → 3
count_evens([2, 2, 0]) → 3
count_evens([1, 3, 5]) → 0

10.even?    
# => true

5.even?    
# => false

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
array = [1, 3, 5]

def count_evens(array) 
  countArray = []
  array.each do |int|
    if int.even?
      countArray.push(int)
    end
  end
  puts countArray.length
end

count_evens(array) 





#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

def count_evens(nums)
  count = 0
  nums.each do |num|
    if num.even?
      count += 1
    end     
  end
  puts count
end

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
