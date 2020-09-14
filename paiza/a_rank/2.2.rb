=begin
問題
開始時点の y , x 座標 と移動の回数 N が与えられます。
続く N 行で移動の方角 d_1 ... d_N が与えられるので、与えられた順に移動をしたときの各移動後の y , x 座標 を答えてください。
ただし、図の通り、上側（ y 軸の負の向き）を北とします。

なお、マスの座標系は左上端のマスの座標を ( y , x ) = ( 0 , 0 ) とし、
下方向が y 座標の正の向き、右方向が x 座標の正の向きとします。



▼　下記解答欄にコードを記入してみよう

入力される値
Y X N       
d_1     
...     
d_N


・ 1 行目には、開始時点の y , x 座標を表す Y , X, 移動の回数 N が与えられます。
・ 続く N 行 (1 ≦ i ≦ N) には、盤面の i 回目の移動の方角を表す文字 d_i が与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
N 行での出力
・ 各移動後の y , x 座標を出力してください。


y_1 x_1
...
y_N x_N
条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 0 ≦ Y, X, N ≦100
・ d_i は、N, S, E, W のいずれかでそれぞれ 北・南・東・西 を意味する。

入力例1
0 0 1
N

出力例1
-1 0

入力例2
5 10 4
N
W
E
S

出力例2
4 10
4 9
4 10
5 10



=end
puts "回答--------------"

stat = gets.chomp.split(" ")
y = stat[0].to_i
x = stat[1].to_i
count = stat[2].to_i

move =[y,x]
array =[]
(1..count).each do
  temp = gets.chomp
  array.push(temp)
end

array.each do |a|
  if a == "N"
    move[0] -= 1
    puts "#{move[0]} #{move[1]}"
  end
  if a == "W"
    move[1] -= 1
    puts "#{move[0]} #{move[1]}"
  end
  if a == "E"
    move[1] += 1
    puts "#{move[0]} #{move[1]}"
  end
  if a == "S"
    move[0] += 1
    puts "#{move[0]} #{move[1]}"
  end
end

puts "解答--------------"
=begin 


=end