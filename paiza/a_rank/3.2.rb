=begin
問題

マップの行数 H と列数 W ,障害物を # ,移動可能な場所を . で表した H 行 W 列のマップ S_1 ... S_H が与えられます。
続けて現在の座標 sy , sx ,現在向いている方角 d ,１マス移動する方向 m が与えられるので、移動が可能かどうかを判定してください。
移動可能であるということは、以下の図の通り __「移動先が障害物でない　かつ　移動先がマップの範囲外でない」__ ということを意味します。
なお、マスの座標系は左上端のマスの座標を ( y , x ) = ( 0 , 0 ) とし、
下方向が y 座標の正の向き、右方向が x 座標の正の向きとします。




▼　下記解答欄にコードを記入してみよう

入力される値
H W　sy sx d m      
S_0     
...     
S_(H-1)


・ 1 行目には盤面の行数を表す整数 H , 盤面の列数を表す整数 W , 現在の y, x 座標を表す sy sx , 現在向いている方角 d , 1 マス移動する方向 m が与えられます。
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
・ d は、 N, S, E, W のいずれかであり、それぞれ 北・南・東・西 を意味します。
・ m は、 L, R のいずれかであり、それぞれ 左・右 を意味します。

入力例1
2 6 0 4 E L
####..
##..#.

出力例1
No

入力例2
7 9 6 0 S R
..#.#..##
..#..#...
#.......#
#.#...###
#.##....#
.....#...
..##..#.#

出力例2
No
=end
puts "回答--------------"
joken = gets.chomp.split(" ")
h = joken[0].to_i
w = joken[1].to_i
sy = joken[2].to_i
sx = joken[3].to_i
d = joken[4].to_s
m = joken[5].to_s

#print joken

map = []

(1..h).each do
  temp = gets.chomp.split("")
  map.push(temp)
end

#print map

if d == "N"
  if m == "R"
    sy = sy 
    sx += 1
    if sx <= w && map[sy][sx] != "#"
      puts "Yes"
    else
      puts "No"
    end
  else
    sy = sy 
    sx -= 1
    if sx >= 0 && map[sy][sx] != "#"
      puts "Yes"
    else
      puts "No"
    end
  end
elsif d == "S"
  if m == "R"
    sy = sy 
    sx -= 1
    if sx >= 0 && map[sy][sx] != "#"
      puts "Yes"
    else
      puts "No"
    end
  else
    sy = sy 
    sx += 1
    if sx <= w && map[sy][sx] != "#"
      puts "Yes"
    else
      puts "No"
    end
  end
elsif d == "E"
  if m == "R"
    sy += 1 
    sx = sx
    if sy <= h && map[sy][sx] != "#"
      puts "Yes"
    else
      puts "No"
    end
  else
    sy -= 1 
    sx = sx
    if sy >= 0 && map[sy][sx] != "#"
      puts "Yes"
    else
      puts "No"
    end
  end
elsif d == "W"
  if m == "R"
    sy -= 1 
    sx = sx
    if sy >= 0 && map[sy][sx] != "#"
      puts "Yes"
    else
      puts "No"
    end
  else
    sy += 1 
    sx = sx
    if sy <= h && map[sy][sx] != "#"
      puts "Yes"
    else
      puts "No"
    end
  end
end


puts "解答--------------"
=begin 


=end