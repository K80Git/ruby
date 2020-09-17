=begin
問題

マップの行数 H と列数 W ,障害物を # で、移動可能な場所を . で表した H 行 W 列 のマップ S_1 ... S_H が与えられます。
続けて、現在の座標 sy , sx ,移動の回数 N と N 回の移動の向き d_1...d_N が与えられます。
移動者ははじめ北を向いています。
各移動が可能である場合、移動後の y , x 座標を出力してください。移動できない場合、移動後の座標を出力する代わりに "Stop" を出力して、
以降の移動を打ち切ってください。
移動可能であるということは、以下の図の通り __「移動先が障害物でない　かつ　移動先がマップの範囲外でない」__ ということを意味します。
なお、マスの座標系は左上端のマスの座標を ( y , x ) = ( 0 , 0 ) とし、
下方向が y 座標の正の向き、右方向が x 座標の正の向きとします。


みぎに移動


▼　下記解答欄にコードを記入してみよう

入力される値
H W sy sx N     
S_0     
...     
S_(H-1)     
d_1     
...     
d_N


・ 1 行目には盤面の行数を表す整数 H , 盤面の列数を表す整数 W , 現在の y, x 座標を表す sy sx , 移動する回数 N が与えられます。
・ 続く H 行のうち i 行目 (0 ≦ i < H) には、盤面の i 行目の文字をまとめた文字列 S_i が与えられ、 S_i の j 文字目は、盤面の i 行目の j 列目に書かれている文字を表します。(0 ≦ j < W)
・ 続く N 行のうち i 行目 (1 ≦ i ≦ N) には、i 回目の移動の向き d_i が与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
最大 N 行の出力
・ 各移動が可能である場合、移動後の y , x 座標を出力する。
移動できない場合は移動後の座標を出力する代わりに "Stop" を出力して、以降の移動を打ち切る。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ H,W ≦ 20
・ 1 ≦ N ≦ 100
・ 0 ≦ sy < H , 0 ≦ sx < W
・ S_i は W 文字の文字列
・ マップ上の(sy, sx)のマスは必ず '.'
・ S_i の各文字は '.' または '#'
・ d_i は、L, R のいずれかであり、それぞれ 左・右 を意味します。

入力例1
7 3 2 1 5
..#
...
...
...
..#
.#.
##.
L
L
L
L
L

出力例1
2 0
3 0
3 1
2 1
2 0

入力例2
7 11 1 5 43
.##........
.#......##.
.#....#...#
.###......#
#......###.
..#....###.
#.#........
L
L
R
L
R
L
R
L
L
R
L
R
L
L
L
L
R
R
R
L
R
L
R
L
L
R
L
L
R
L
R
L
R
R
R
R
L
R
L
L
L
R
R

出力例2
1 4
2 4
2 3
Stop
=end
puts "回答--------------"

joken = gets.chomp.split(" ")
h = joken[0].to_i
w = joken[1].to_i
sy = joken[2].to_i
sx = joken[3].to_i
n = joken[4].to_i
d = "N"
map =[]

(1..h).each do
  array = gets.chomp.split("")
  map.push(array)
end

move =[]
(1..n).each do
  array = gets.chomp
  move.push(array)
end

move.each_with_index do |m,i|
  if d == "N"
    if m == "R"
      sy = sy 
      sx += 1
      d = "E"
      if sx <= w && map[sy][sx] != "#"
        puts "#{sy} #{sx}"
      else
        puts "Stop"
        break
      end
    elsif m == "L"
      sy = sy 
      sx -= 1
      d = "W"
      if sx >= 0 && map[sy][sx] != "#"
        puts "#{sy} #{sx}"
      else
        puts "Stop"
        break
      end
    end
  elsif d == "S"
    if m == "R"
      sy = sy 
      sx -= 1
      d = "W"
      if sx >= 0 && map[sy][sx] != "#"
        puts "#{sy} #{sx}"
      else
        puts "Stop"
        break
      end
    else
      sy = sy 
      sx += 1
      d = "E"
      if sx <= w && map[sy][sx] != "#"
        puts "#{sy} #{sx}"
      else
        puts "Stop"
        break
      end
    end
  elsif d == "E"
    if m == "R"
      sy += 1 
      sx = sx
      d = "S"
      if sy <= h && map[sy][sx] != "#"
        puts "#{sy} #{sx}"
      else
        puts "Stop"
        break
      end
    else
      sy -= 1 
      sx = sx
      d = "N"
      if sy >= 0 && map[sy][sx] != "#"
        puts "#{sy} #{sx}"
      else
        puts "Stop"
        break
      end
    end
  elsif d == "W"
    if m == "R"
      sy -= 1 
      sx = sx
      d = "N"
      if sy >= 0 && map[sy][sx] != "#"
        puts "#{sy} #{sx}"
      else
        puts "Stop"
        break
      end
    else #m == "L"
      sy += 1 
      sx = sx
      d = "S"
      if sy <= h && map[sy][sx] != "#"
        puts "#{sy} #{sx}"
      else
        puts "Stop"
        break
      end
    end
  end
end





puts "解答--------------"
=begin 


=end