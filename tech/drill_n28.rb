
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

問題.1
警察が速度違反の取り締まりをしています。
速度が60以下の場合、0 点の減点
速度が61以上80以下の場合、1点の減点
速度が81以上の場合、2点の減点
と出力するメソッドを作りましょう。

不思議なことに、誕生日は速度違反を見逃してもらえるため「0 点の減点」とします。
誕生日の場合はtrue,誕生日ではない場合はfalseで表します。

呼び出し方：
caught_speeding(speed, is_birthday)

出力例：
caught_speeding(60, false) → 0点の減点です
caught_speeding(65, false) → 1点の減点です
caught_speeding(65, true) → 0点の減点です

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

def caught_speeding(speed, is_birthday)
  if is_birthday
    puts "0点の減点です"
  else
    if speed <= 60
      puts "0点の減点です"
    elsif speed <= 80
      puts "1点の減点です"
    else
      puts "2点の減点です"
    end
  end
end


speed = 65
is_birthday = false

caught_speeding(speed, is_birthday)





#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説
def caught_speeding(speed, is_birthday)
  if is_birthday 
    point = 0
  else
    if speed <= 60
      point = 0
    elsif speed <= 80
      point = 1
    else
      point = 2
    end
  end
  puts "#{point}点の減点です"
end

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
