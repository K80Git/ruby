count = gets.to_i

array = []
for i in 1..count
  num = gets.split(" ")
  array.push(num)
end

a = array[0][0]
b = array[count-1][1]

c_array = []
array.each do |j|
  cj = j[2]
  c_array.push(cj.to_i)
end

c = c_array.sort.reverse[0]

d_array = []
array.each do |k|
  dk = k[3]
  d_array.push(dk.to_i)
end

d = d_array.sort[0]

puts "#{a} #{b} #{c} #{d} "