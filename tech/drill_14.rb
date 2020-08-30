
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題
あなたは警官です。aとb二人の容疑者の取り調べをしています。
どちらも証言がTrue、またはFalseであればその証言はTrueです。
しかしどちらかがFalseでTrueであればその証言はFalse、と出力するメソッドを論理演算子を用いて作りましょう。

呼び出し方：
police_trouble(a, b)

出力例：
police_trouble(true, false) → False
police_trouble(false, false) → True
police_trouble(true, true) → True

# aもbもtrueの場合にtrue 
a && b

# aかbのどちらかがtrueの場合にtrue
a || b 

# aがtrueの場合にfalse、aがfalseの場合にtrue
!a


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

def police_trouble(a, b)
  if a && b
    puts "True"
  elsif !a && !b
    puts "True"
  else
    puts "false"
  end
end

a = false
b = false

police_trouble(a, b)


#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

def police_trouble(a, b)
  if (a && b) || (!a && !b)
    puts "True"
  else
    puts "False"
  end
end


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
