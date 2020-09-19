=begin
問題
マップの行数 H と列数 W ,障害物を # で移動可能な場所を . で表した H 行 W 列のマップ S_1 ... S_H ,現在の座標 sy, sx, 移動の回数 N が与えられます。
プレイヤーははじめ北を向いています。
続けて、 N 回の移動の向き d_1 ... d_N と移動するマス数 l_1 ... l_N が与えられます。
各移動が可能である場合、移動後の y , x 座標 を出力してください。
移動しきれない場合、移動できるところまで移動した後の座標を出力した後に "Stop" を出力して、以降の移動を打ち切ってください。
移動可能であるということは、以下の図の通り
__「今いるマスから移動先のマスまでの間の全てのマスが移動可能である　かつ　移動先がマップの範囲外でない」__ ということを意味します。
なお、マスの座標系は左上端のマスの座標を ( y , x ) = ( 0 , 0 ) とし、
下方向が y 座標の正の向き、右方向が x 座標の正の向きとします。




▼　下記解答欄にコードを記入してみよう

入力される値
H W　sy sx N        
S_0         
...     
S_(H-1)     
d_1 l_1     
...     
d_N l_N


・ 1 行目には盤面の行数を表す整数 H , 盤面の列数を表す整数 W , 現在の y, x 座標を表す sy sx , 移動する回数 N が与えられます。
・ 続く H 行のうち i 行目 (0 ≦ i < H) には、盤面の i 行目の文字をまとめた文字列 S_i が与えられ、 S_i の j 文字目は、盤面の i 行目の j 列目に書かれている文字を表します。(0 ≦ j < W)
・ 続く N 行のうち i 行目 (1 ≦ i ≦ N) には、i 回目の移動の向き d_i と移動するマス数 l_i が与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
最大 N 行の出力
・ 各移動が可能である場合、移動後の y , x 座標 を出力してください。
・ 移動しきれない場合、移動できるところまで移動した後の座標を出力した後に "Stop" を出力して、以降の移動を打ち切ってください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ H, W ≦ 20
・ 1 ≦ N ≦ 100
・ 0 ≦ sy < H, 0 ≦ sx < W
・ 1 ≦ l_i ≦ 20
・ S_i は W 文字の文字列
・ マップ上の(sy, sx)のマスは必ず.
・ S の各文字は '.' または '#'
・ d_i は、 L, R のいずれかであり、それぞれ 左・右 を意味します。

入力例1
10 10 6 4 3
..#.....#.
..........
##.#......
#.##....#.
.##.#.....
........#.
.#......#.
.#........
...#......
#.#.......
L 2
R 1
L 4

出力例1
6 2
5 2
5 0
Stop

入力例2
15 15 6 4 7
.......#.......
....#.......#.#
.......#.....#.
.......#.#...#.
#......#.......
#.........#....
..............#
..#...#....#..#
............#..
..#...##......#
##..#..#.#.....
#..............
............#..
...#...........
.#.........#.#.
L 4
L 3
R 4
R 5
L 3
L 2
R 1

出力例2
6 0
9 0
9 0
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

map = []
(1..h).each do
  num = gets.chop.split("")
  map.push(num)
end

move =[]
(1..n).each do
  num = gets.chomp.split(" ")
  num = [num[0].to_s,num[1].to_i]
  move.push(num)
end

moving_array=[]
move.each do |m|
  if d == "N"
    if m[0] == "R"
      i = sx
      while i < (sx+m[1]) do
        if i > w
          num = [sy,w]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        elsif map[sy][i] == "#"
          num=[sy,(i-1)]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        else
          i += 1
        end
      end
      sx = i
      num = [sy,sx]
      moving_array.push(num)
      d = "E"
    else
      i = sx
      while i > (sx-m[1]) do
        if i < 0
          num = [sy,0]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        elsif map[sy][i] == "#"
          num=[sy,(i+1)]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        else
          i -= 1
        end
      end
      sx = i
      d = "W"
      num = [sy,sx]
      moving_array.push(num)
    end
  elsif d == "S"
    if m[0] == "R"
      i = sx
      while i > (sx-m[1]) do
        if i < 0
          num = [sy,0]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        elsif map[sy][i] == "#"
          num=[sy,(i+1)]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        else
          i -= 1
        end
      end
      sx = i
      d = "W"
      num = [sy,sx]
      moving_array.push(num)
    else
      i = sx
      while i < (sx+m[1]) do
        if i > w
          num = [sy,w]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        elsif map[sy][i] == "#"
          num=[sy,(i-1)]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        else
          i += 1
        end
      end
      sx = i
      num = [sy,sx]
      moving_array.push(num)
      d = "E"
    end
  elsif d == "E"
    if m[0] == "R"
      i = sy
      while i < (sy+m[1]) do
        if i > h
          num = [h,sx]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        elsif map[i][sx] == "#"
          num=[(i-1),sx]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        else
          i += 1
        end
      end
      sy = i
      num = [sy,sx]
      moving_array.push(num)
      d = "S"
    else
      i = sy
      while i > (sy-m[1]) do
        if i < 0
          num = [0,sx]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        elsif map[i][sx] == "#"
          num=[i-1,sx]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        else
          i -= 1
        end
      end
      sy = i
      d = "N"
      num = [sy,sx]
      moving_array.push(num)
    end
  elsif d == "W"
    if m[0] == "R"
      i=0
      i = sy
      while i > (sy-m[1]) do
        if i < 0
          num = [0,sx]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        elsif map[i][sx] == "#"
          num=[i-1,sx]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        else
          i -= 1
        end
      end
      sy = i
      d = "N"
      num = [sy,sx]
      moving_array.push(num)
    else #m == "L"
      i = sy
      while i < (sy+m[1]) do
        if i > h
          num = [h,sx]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        elsif map[i][sx] == "#"
          num=[(i-1),sx]
          moving_array.push(num)
          moving_array.push("Stop")
          break
        else
          i += 1
        end
      end
      sy = i
      num = [sy,sx]
      moving_array.push(num)
      d = "S"
    end
  end
end

moving_array.each do |m|
  if m == "Stop"
    puts "Stop"
    break
  end
  puts "#{m[0]} #{m[1]}"
end


puts "解答--------------"
=begin 


=end