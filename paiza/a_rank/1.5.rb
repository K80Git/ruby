=begin
問題
マップの行数 H と列数 W とマップを表す H 行 W 列の文字列 S_1 ... S_H が与えられるので、
隣接する上下左右のマスが全て '#' であるマスの y , x 座標 を答えてください。
なお、マスの座標系は左上端のマスの座標を ( y , x ) = ( 0 , 0 ) とし、
下方向が y 座標の正の向き、右方向が x 座標の正の向きとします。

▼　下記解答欄にコードを記入してみよう

入力される値
H W     
S_0     
...     
S_(H-1)


・ 1 行目には盤面の行数を表す整数 H , 盤面の列数を表す整数 W が与えられます。
・ 続く H 行のうち i 行目 (0 ≦ i < H) には、盤面の i 行目の文字をまとめた文字列 S_i が与えられ、 S_i の j 文字目は、盤面の i 行目の j 列目に書かれている文字を表します。(0 ≦ j < W)

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
・ 1 行以上 H×W 行以下の出力
条件を満たすマスの y , x 座標を出力してください。
左上 (y = 0,x = 0) のマスから順に、x 座標 , y 座標の順で増加するように出力してください。詳しくは入出力例を参考にしてください。


y_0 x_0        
...
条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ H, W ≦ 20
・ S は W 文字の文字列
・ S の各文字は '.' または '#'
・ 条件を満たすマスが少なくとも 1 つ以上存在します

入力例1
3 3
##.
###
...

出力例1
0 0
0 2

入力例2
10 10
##########
..........
##########
##########
..........
#.#.#.#.#.
.#.#.#.#.#
#.#.#.#.#.
.#.#.#.#.#
..........

出力例2
6 0
6 2
6 4
6 6
6 8
7 1
7 3
7 5
7 7
7 9

=end
puts "回答--------------"

count = gets.chomp.split(" ")
h = (count[0].to_i - 1)
w = (count[0].to_i - 1)

bord = []
(1..(h+1)).each do
  temp = gets.chomp.split("")
  bord.push(temp)
end

right = []
#1行目左角
if bord[0][1] == "#" && bord[1][0]=="#"
  temp=[0,0]
  right.push(temp)
end

#1行目右角
if bord[0][w-1] =="#" && bord[1][w]=="#"
  temp=[0,w]
  right.push(temp)
end

#最終行左角
if bord[h][1] == "#"&& bord[h-1][0]=="#"
  temp=[h,0]
  right.push(temp)
end

#最終行右角
if bord[h][w-1] =="#" && bord[h-1][w]=="#"
  temp=[h,w]
  right.push(temp)
end

#1行目について
for i in 1..(w-1)
  if bord[1][w] == "#" && (bord[0][i-1] == "#" && bord[0][i+1] == "#")
    temp=[0,w]
    right.push(temp)
  end
  if bord[h-1][i] == "#" && (bord[h][i-1] == "#" && bord[h][i+1] == "#")
    puts "#{h} #{w}"
  end
end

#左列
for i in 1..(h-1)
  if bord[i][1] =="#" && bord[i-1][0] =="#" &&bord[i+1][0] =="#" 
    temp=[i,0]
    right.push(temp)
  end
  if bord[i][w-1] =="#" && bord[i-1][w] =="#" &&bord[i+1][w] =="#" 
    temp=[i,w]
    right.push(temp)
  end
end

for i in 1..(h-1)
  for j in 1..(w-1)
    if (bord[i][j-1]=="#" && bord[i][j+1]=="#")&&(bord[i-1][j]=="#" && bord[i+1][j]=="#")
      temp=[i,j]
      right.push(temp)
    end
  end
end

right.sort!

right.each do |r|
  puts "#{r[0]} #{r[1]}"
end

puts "解答--------------"
=begin 


=end