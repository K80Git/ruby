
for i in 1..30
  if i % 3 == 0 && i % 5 == 0
    puts "#{i}:FizzBuzz"
  elsif i % 3 ==0
    puts "#{i}:Fizz"
  elsif i % 5 == 0
    puts "#{i}:Buzz"
  else
    puts i 
  end
end

for i in 1..30 
  fiz =""
  buz =""
  colon =""
  if i % 3 == 0 
    fiz = "Fizz"
  end
  
  if i % 5 == 0
    buz = "Buzz"
  end

  if fiz + buz != ""
    colon = ":"
  end

  puts "#{i.to_s+colon+fiz+buz}"
end

