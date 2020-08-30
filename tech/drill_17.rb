
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

20時から翌朝7時までにオウムに喋られると問題があるのでその場合は「NG」、
それ以外は「OK」と出力するメソッドを作成します。
オウムが喋る時をtrue、喋らない時をfalseと入力することにし、時刻も同時に入力します。

呼び出し方：
parrot_trouble(talking, hour)

出力例：
parrot_trouble(true, 6) → NG
parrot_trouble(true, 7) → OK
parrot_trouble(false, 6) → OK
parrot_trouble(false, 7) → OK

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

def parrot_trouble(talking, hour)
  if (hour > 7 && hour < 20 ) || !talking
    puts "OK"
  else
    puts "NG"
  end
end

talking = true
hour = 1

parrot_trouble(talking, hour)



#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説
def parrot_trouble(talking, hour)
  if talking && (hour < 7 || hour > 20)
    puts "NG"
  else
    puts "OK"
  end
end

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
