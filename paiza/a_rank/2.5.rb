=begin
問題
開始時点の x , y 座標,移動の回数 N が与えられます。
続くN行で移動の向き d1 ... dN が与えられるので、与えられた順に移動をしたときの各移動後の x , y 座標 を答えてください。
移動者ははじめ北を向いています。
なお、マスの座標系は下方向が y 座標の正の向き、右方向が x 座標の正の向きとします。
移動をするごとに向く方角が変わること・移動前に向いている方角によって同じ移動の向きでも座標の変化が違うことに気をつけてください。
例えば、上の図の状態から右に移動を行った場合、下の図のような状態になります。




▼　下記解答欄にコードを記入してみよう

入力される値
X Y N       
d1      
...     
dN


・ 1 行目には、開始時点の x , y 座標を表す X , Y, 移動の回数 N が与えられます。
・ 続く N 行 (1 ≦ i ≦ N) には、盤面の i 回目の移動の向きを表す文字 d_i が与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
N 行での出力
・ 各移動後の x , y 座標を出力してください。


x_1 y_1
...
x_N y_N
条件
すべてのテストケースにおいて、以下の条件をみたします。
・ -100 ≦ X, Y ≦ 100
・ 1 ≦ N ≦ 100
・ d は、L, R のいずれかでそれぞれ 左・右 に １ マス進むことを表す。

入力例1
3 5 1
L

出力例1
2 5

入力例2
-18 45 6
L
L
R
R
L
R

出力例2
-19 45
-19 46
-20 46
-20 45
-21 45
-21 44



=end
puts "回答--------------"

str = gets.chomp.split(" ")
str_x = str[0].to_i
str_y = str[1].to_i
count = str[2].to_i
xy = [str_x,str_y]
direction = "N"

dirs_array =[]
(1..count).each do
  rl = gets.chomp
  dirs_array.push(rl)
end

dirs_array.each do |rl|
  if direction == "N"
    if rl =="R"
      xy[0] += 1
      direction = "E"
      puts "#{xy[0]} #{xy[1]}"
    else
      xy[0] -= 1
      direction = "W"
      puts "#{xy[0]} #{xy[1]}"
    end
  elsif direction == "W"
    if rl =="R"
      xy[1] -= 1
      direction = "N"
      puts "#{xy[0]} #{xy[1]}"
    else
      xy[1] += 1
      direction = "S"
      puts "#{xy[0]} #{xy[1]}"
    end
  elsif direction == "S"
    if rl =="R"
      xy[0] -= 1
      direction = "W"
      puts "#{xy[0]} #{xy[1]}"
    else
      xy[0] += 1
      direction = "E"
      puts "#{xy[0]} #{xy[1]}"
    end
  elsif direction == "E"
    if rl =="R"
      xy[1] += 1
      direction = "S"
      puts "#{xy[0]} #{xy[1]}"
    else
      xy[1] -= 1
      direction = "N"
      puts "#{xy[0]} #{xy[1]}"
    end
  end
end





=begin

def east(rl,xy,hogaku)   # rl=E
  if rl == "R"
    xy[1]+= 1
    puts "#{xy[0]} #{xy[1]}"
  else
    xy[1] -= 1
    puts "#{xy[0]} #{xy[1]}"
  end
end
def east_hoga(rl,hogaku)
  if rl == "R"
    hogaku += 90
    puts hogaku
  else
    hogaku-= 90
    puts hogaku
  end
end

def west(rl,xy,hogaku)  # rl=W
  if rl == "R"
    xy[1] -= 1
    puts "#{xy[0]} #{xy[1]}"
  else
    xy[1] += 1
    puts "#{xy[0]} #{xy[1]}"
  end
end

def west_hoga(rl,hogaku)
  if rl == "R"
    hogaku += 90
    puts hogaku
  else
    hogaku -= 90
    puts hogaku
  end
end

def south(rl,xy,hogaku) # rl=S
  if rl == "R"
    xy[0] -= 1
    puts "#{xy[0]} #{xy[1]}"
  else
    xy[0] += 1
    puts "#{xy[0]} #{xy[1]}"
  end
end
def south_hoga(rl,hogaku)
  if rl == "R"
    hogaku += 90
    puts hogaku
  else
    hogaku -= 90
    puts hogaku
  end
end

def north(rl,xy,hogaku) # rl=N
  if rl == "R"
    xy[0] += 1
    puts "#{xy[0]} #{xy[1]}"
  else
    xy[0] -= 1
    puts "#{xy[0]} #{xy[1]}"
  end
end
def north_hoga(rl,hogaku)
  if rl == "R"
    hogaku = hogaku + 90
  else
    hogaku = hogaku - 90
  end
end

dirs_array.each do |rl|
  hogaku = 0
  print "初期値：#{hogaku}\n"
  if hogaku == 90 || hogaku == -270
    east(rl,xy,hogaku)
    east_hoga(rl,hogaku)
  elsif hogaku == 180 || hogaku == -180
    west(rl,xy,hogaku)
    west_hoga(rl,hogaku)
  elsif hogaku == 270 || hogaku == -90
    south(rl,xy,hogaku)
    south_hoga(rl,hogaku)
  else
    north(rl,xy,hogaku)
    north_hoga(rl,hogaku)
  end


  print "最終値：#{hogaku}\n"

end
=end



puts "解答--------------"
=begin 


=end