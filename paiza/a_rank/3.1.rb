=begin
問題
マップの行数 H と列数 W ,障害物を # で、移動可能な場所を . で表したH行W列のマップ S_1 ... S_H が与えられます。
続けて現在の座標 sy , sx ,１マス移動する方角 m が与えられるので、移動が可能かどうかを判定してください。
移動可能であるということは、以下の図の通り「移動先が障害物でない　かつ　移動先がマップの範囲外でない」ということを意味します。
なお、マスの座標系は左上端のマスの座標を ( y , x ) = ( 0 , 0 ) とし、
下方向が y 座標の正の向き、右方向が x 座標の正の向きとします。




▼　下記解答欄にコードを記入してみよう

入力される値
H W sy sx m     
S_0    
...     
S_(H-1)


・ 1 行目には盤面の行数を表す整数 H , 盤面の列数を表す整数 W , 現在の y, x 座標を表す sy sx , 1 マス移動する方角 m が与えられます。
・ 続く H 行のうち i 行目 (0 ≦ i < H) には、盤面の i 行目の文字をまとめた文字列 S_i が与えられ、 S_i の j 文字目は、盤面の i 行目の j 列目に書かれている文字を表します。(0 ≦ j < W)

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
移動が可能である場合 "Yes" を、不可能である場合 "No" を出力してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ H, W ≦ 20
・ 0 ≦ sy < H , 0 ≦ sx < W
・ S_i は W 文字の文字列
・ マップ上の(sy, sx)のマスは必ず '.'
・ S の各文字は '.' または '#'
・ m は、N, S, E, W のいずれかであり、それぞれ 北・南・東・西 を意味します。

入力例1
3 3 1 1 E
..#
..#
...

出力例1
No

入力例2
9 2 4 0 S
#.
#.
..
##
..
..
.#
..
.#

出力例2
Yes


=end
puts "回答--------------"
joken = gets.chomp.split(" ")
h = joken[0].to_i
w = joken[1].to_i
y = joken[2].to_i
x = joken[3].to_i
move = joken[4].to_s

map =[]
(1..h).each do 
  temp = gets.chomp.split("")
  map.push(temp)  
end

if move == "N"
  y -= 1
  x = x
  if y >=0 && map[y][x] != "#"
    puts "Yes"
  else
    puts "No"
  end 
elsif move == "E"
  y = y
  x += 1
  if x <= w && map[y][x] != "#"
    puts "Yes"
  else
    puts "No"
  end 
elsif move == "W"
  y = y
  x -= 1
  if x >= 0 && map[y][x] != "#"
    puts "Yes"
  else
    puts "No"
  end 
elsif move == "S"
  y += 1
  x = 1
  if y <= h && map[y][x] != "#"
    puts "Yes"
  else
    puts "No"
  end 
end

puts "解答--------------"
=begin 


=end