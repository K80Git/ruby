=begin
問題
下記の問題をプログラミングしてみよう！
開始時点の x , y 座標と移動の歩数 N が与えられます。
以下の図のように時計回りに渦を巻くように移動を N 歩行った後の x , y 座標 を答えてください。
なお、マスの座標系は下方向が y 座標の正の向き、右方向が x 座標の正の向きとします。



▼　下記解答欄にコードを記入してみよう

入力される値
X Y N


・ 1 行で、開始時点の x , y 座標を表す X , Y, 移動の歩数 N が与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
1行での出力
・ 移動を N 歩行った後の x , y 座標を出力してください。


x y
条件
すべてのテストケースにおいて、以下の条件を満たします。
・ -100 ≦ X, Y ≦ 100
・ 0 ≦ N ≦ 100

入力例1
0 0 3

出力例1
0 1

入力例2
38 47 27

出力例2
41 47

=end
puts "回答--------------"

direc = gets.chomp.split(" ")
xy = [direc[0].to_i, direc[1].to_i]
count = direc[2].to_i

if count >= 72 && count<= 81
  xy[1] -= 4
end

if (count>= 42&&count<= 49)|| count == 71 || count ==82
  xy[1] -= 3
end

if (count >= 20&& count <= 25)|| count== 50 || count ==83
  xy[1] -= 2 
end

if (count >= 6&&count <= 9)|| count ==69|| count ==40|| count ==19|| count ==26|| count ==51|| count ==84
  xy[1] -= 1
end

if (count >= 2&& count<=4)|| count ==67|| count ==38|| count ==17|| count ==11|| count ==28|| count ==53|| count ==86
  xy[1] +=1
end

if (count>=12 &&count <=16)|| count ==66 || count ==37|| count ==29|| count ==54|| count ==87
  xy[1] += 2
end

if (count >=30 &&count<=36)|| count ==65 || count ==55|| count ==88
  xy[1] += 3
end

if (count >= 56 && count<= 64)|| count ==89
  xy[1] += 4
end

if count >=90
  xy[1] += 5
end

if (count>= 81 && count<= 90 ) 
  xy[0] += 5
end

if (count>= 49 && count<= 56 )|| count == 80 || count == 91
  xy[0] += 4
end
if (count>= 25 && count<= 30 )|| count == 79 || count == 48 || count == 57 || count == 92 
  xy[0] += 3
end
if (count>= 9 && count<= 12 )|| count == 78 || count == 47 || count == 24 || count == 31 || count ==58|| count ==93
  xy[0] += 2
end
if (count>= 1 && count<= 2 )|| count == 77 || count == 46 || count == 23 || count == 8 || count ==13|| count ==32|| count ==59|| count ==94
  xy[0] += 1
end
if (count>= 4 && count<= 6 )|| count == 75 || count == 44 || count == 21 || count == 15 || count ==34|| count ==61|| count ==96
  xy[0] -=1
end
if (count>= 16 && count<= 20 )|| count == 74 || count == 43 || count == 62 || count == 97 
  xy[0] -= 2
end

if (count>=36  && count<= 42 )|| count == 73 || count == 63 || count == 98
  xy[0] -=3
end
if (count>= 64 && count<= 72 )|| count == 99
  xy[0] -= 4
end
if count == 100
  xy[0] -=5
end

puts "#{xy[0]} #{xy[1]}"


puts "解答--------------"
=begin 


=end