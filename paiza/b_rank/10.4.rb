=begin
問題


=end
puts "回答--------------"

yoko_array =[]
tate_array = []
for i in 1..5
  num = gets.chomp.split("")
  yoko_array.push(num)
end

sub_array = []
for j in 0..4
  a = yoko_array[0][j]
  b = yoko_array[1][j]
  c = yoko_array[2][j]
  d = yoko_array[3][j]
  e = yoko_array[4][j]
  sub_array = [a,b,c,d,e]
  tate_array.push(sub_array)
end

check_array = []
tate_array.each do |w|
  if w[0] == w[1] && w[1] == w[2] && w[2] == w[3] && w[3] == w[4] && w[0] != "."
    winer = w[0]
  else
    winer = "D"
  end
  check_array.push(winer)
end

if check_array.include?("O")
  puts "O"
elsif check_array.include?("X")
  puts "X"
else
  puts "D"
end

print check_array


  puts "解答--------------"
=begin 
board = []
result = 'D'

# 盤面の初期化
(1..5).each do
  board.push(gets.chomp.split(''))
end

(0..4).each do |i|
  o = 0
  x = 0
  board.each do |row|
    if row[i] == 'O'
      o = o + 1
    elsif row[i] == 'X'
      x = x + 1
    end
  end

  if o == 5
    result = 'O'
    break
  elsif x == 5
    result = 'X'
    break
  end
end

puts result

=end