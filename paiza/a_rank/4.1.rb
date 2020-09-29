=begin
問題

盤面の情報が与えられます。現在プレイヤーのいるマスは '＊' になっており、そのマスはプレイヤーの陣地です。
プレイヤーは現在の陣地から上下左右に １ マス移動することで到達できるマスをプレイヤーの陣地にします。
プレイヤーの陣地を '＊' にした盤面を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
H W     
S_0     
...     
S_(H-1)


・ 1 行目では、盤面の行数 H , 列数 W が与えられます。
・ 続く H 行のうち i 行目 (0 ≦ i < H) には、盤面の i 行目の文字をまとめた文字列 S_i が与えられ、 S_i の j 文字目は、盤面の i 行目の j 列目に書かれている文字を表します。(0 ≦ j < W)

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
操作後の盤面を H 行で出力してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ H, W ≦ 20
・ S は W 文字の文字列
・ S の各文字は '.' または '*'
・ '*' のマスは １ つ

入力例1
3 3
...
.*.
...

出力例1
.*.
***
.*.

入力例2
10 10
*.........
..........
..........
..........
..........
..........
..........
..........
..........
..........

出力例2
**........
*.........
..........
..........
..........
..........
..........
..........
..........
..........
=end
puts "回答--------------"
num = gets.chomp.split(" ")
h = num[0].to_i-1
w = num[1].to_i-1

map =[]
for i in 0..h 
  ar = gets.chomp.split("")
  map.push(ar)
end

sy=0
sx=0

map.each_with_index do|ms,j|
  ms.each_with_index do |m,i|
    if map[j][i] == "*"
      sy = j
      sx = i
      break
    end
  end
end

if sy > 0 && sy < h && sx > 0 && sx < w #中央
  map[sy-1][sx] = "*" #上 
  map[sy+1][sx] = "*" #下
  map[sy][sx-1] = "*" #左
  map[sy][sx+1] = "*" #右
elsif sy == 0 && sx > 0 && sx < w # 最上段
  map[sy+1][sx] = "*" #下
  map[sy][sx-1] = "*" #左
  map[sy][sx+1] = "*" #右
elsif sy == h && sx > 0 && sx < w # 最下段
  map[sy-1][sx] = "*" #上 
  map[sy][sx-1] = "*" #左
  map[sy][sx+1] = "*" #右
elsif sy > 0 && sy < h && sx == 0 # 左
  map[sy-1][sx] = "*" #上 
  map[sy+1][sx] = "*" #下
  map[sy][sx+1] = "*" #右
elsif sy > 0 && sy < h && sx == w  #右
  map[sy-1][sx] = "*" #上 
  map[sy+1][sx] = "*" #下
  map[sy][sx-1] = "*" #左
elsif sy == 0 && sx == 0 #左上
  map[sy+1][sx] = "*" #下
  map[sy][sx+1] = "*" #右
elsif sy == 0 && sx == w #右上
  map[sy-1][sx] = "*" #上 
  map[sy][sx-1] = "*" #左
elsif sy == h && sx == 0 #左下
  map[sy-1][sx] = "*" #上 
  map[sy][sx+1] = "*" #右
elsif sy == h && sx == w #右下
  map[sy-1][sx] = "*" #上 
  map[sy][sx-1] = "*" #左
end

map.each_with_index do |ms,j|
  ms.each_with_index do |m,i|
    print "#{map[j][i]}"
  end
  print"\n"
end







puts "解答--------------"
=begin 


=end