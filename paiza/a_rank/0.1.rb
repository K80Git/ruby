=begin
問題


=end
puts "回答--------------"

array =[]
n = 10

for pp in 0..n
  for cc in 0..(n - pp)
      gg = n - pp - cc
      num = [pp,cc,gg]
      array.push(num)
  end
end

array.each do |a|
  print "#{a} \n"
end




puts "解答--------------"
=begin 


=end