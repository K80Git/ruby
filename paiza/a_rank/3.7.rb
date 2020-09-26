=begin
問題


=end
puts "回答--------------"

num = gets.chomp.split(" ")
n = num[0].to_i * 2
k = num[1].to_i

array = (1..n).to_a
geter = (1..n).to_a

combi_array = geter.permutation(n).to_a

combi_array.each do |ca|
  ca.each_with_index do |j,i|
    if j%2 == 1
      ca[i] = "a"
    else
      ca[i] = "b"
    end
  end
end
combi_array.uniq!

count = 0
combi_array.each_with_index do |coar|
  a = []
  b = []
  coar.each_with_index do |j,i|  
    if j == "a"
      a.push(array[i])
    else
      b.push(array[i])
    end
  end
  sub = 0
  (0..(n/2 -1)).each do|i|
    sub += (a[i] - b[i]).abs
  end  
  if sub <= k
    count += 1
  end
end

puts count


puts "解答--------------"
=begin 


=end