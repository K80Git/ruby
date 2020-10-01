fibo0 = 0
fibo1 = 1

num = gets.to_i
array =[]
for i in 0..num
  if i == 0 
    int = 0
    array.push(int)
  elsif i == 1
    int = 1
    array.push(int)
  else
    int01 = array[i-2]
    int02 = array[i-1]
    int = int01+ int02
    array.push(int)
  end
end

puts array[num]


