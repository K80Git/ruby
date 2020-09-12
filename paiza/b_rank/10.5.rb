=begin
問題

5行5列の五目並べの盤面が与えられます。

盤面の各マスには、"O"か"X"か"."が書かれています。

"O"と"X"は、それぞれプレイヤーの記号を表します。

同じ記号が斜めに連続で5つ並んでいれば、その記号のプレイヤーが勝者となります。

勝者の記号を1行で表示してください。
勝者がいない場合は、引き分けとして、"D"を表示してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

s_1
s_2
s_3
s_4
s_5


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
勝者の記号を1行で表示してください。
勝者がいない場合は、引き分けとして、"D"を表示してください。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・s_iの文字数は5文字
・s_iに含まれる文字は"O"か"X"か"."のいずれか
・勝者が2人になる盤面が与えられることはありません

入力例1
XXOXO
OXOXX
OOOOO
OXOX.
XOXXO

出力例1
D

入力例2
XXOXO
OXOXX
.OXXO
OXOO.
XXXXX

出力例2
D

入力例3
...X.
...X.
...X.
...X.
OOOO.

出力例3
D

=end
puts "回答--------------"

board = []
for i in 1..5
  low = gets.chomp.split("")
  board.push(low)
end

sl_1 = []
a = board[0][0]
b = board[1][1]
c = board[2][2]
d = board[3][3]
e = board[4][4]
sl_1 = [a,b,c,d,e]

sl_2 = []
a = board[0][4]
b = board[1][3]
c = board[2][2]
d = board[3][1]
e = board[4][0]
sl_2 = [a,b,c,d,e]

tate_array = [sl_1,sl_2]

check_array = []
tate_array.each do |w|
  if w[0] == w[1] && w[1] == w[2] && w[2] == w[3] && w[3] == w[4] && w[0] != "."
    winer = w[0]
  else
    winer = "D"
  end
  check_array.push(winer)
end

if check_array.include?("O")
  puts "O"
elsif check_array.include?("X")
  puts "X"
else
  puts "D"
end




puts "解答--------------"
=begin 
board = []
result = 'D'

# 盤面の初期化
(1..5).each do
  board.push(gets.chomp.split(''))
end

(1..2).each do |time|
  o = 0
  x = 0

  i = 0

  if time == 1
    j = 0
  else
    j = 4
  end

  (1..5).each do
    if board[i][j] == 'O'
      o = o + 1
    elsif board[i][j] == 'X'
      x = x + 1
    else
      break
    end

    i = i + 1

    if time == 1
      j = j + 1
    else
      j = j - 1
    end
  end

  if o == 5
    result = 'O'
    break
  elsif x == 5
    result = 'X'
    break
  end
end

puts result

=end