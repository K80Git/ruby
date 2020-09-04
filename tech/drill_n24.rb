
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

問題.1
平日でないまたは休日の場合は「True」と返信し、
休日ではない場合は「False」と条件分岐させるメソッドを作りましょう。

呼び出し方：
sleep_in(weekday, vacation)

出力例：
sleep_in(false, false) → True
sleep_in(true, false) → False
sleep_in(false, true) → True

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------


def sleep_in(weekday, vacation)
  if vacation == true || weekday == true
    puts "True"
  else
    puts "False"
  end
end

weekday = false
vacation = false

sleep_in(weekday, vacation)





#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

def sleep_in(is_weekday, is_vacation)
  if (is_weekday != true) || (is_vacation == true)
    puts "True"
  else
    puts "False"
  end
end

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
