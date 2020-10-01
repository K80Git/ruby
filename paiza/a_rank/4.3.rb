=begin
問題


=end
puts "回答--------------"
num = gets.chomp.split(" ")
money= num[0].to_i
count = num[1].to_i
point = 0

zandaka = []
for i in 1.. count
    num = gets.to_i
    zandaka.push(num)
end

zandaka.each do |za|
  if point >= za
    point -= za
    puts "#{money} #{point.to_i}"
  else
    money-= za
    point += za*0.1
    puts "#{money} #{point.to_i}"
  end
end

  

puts "解答--------------"
=begin 



=end