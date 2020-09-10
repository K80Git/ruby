=begin
問題
5行5列の五目並べの盤面が与えられます。

盤面の各マスには、"O"か"X"か"."が書かれています。

"O"と"X"は、それぞれプレイヤーの記号を表します。

同じ記号が縦か横か斜めに連続で5つ並んでいれば、その記号のプレイヤーが勝者となります。

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
O

入力例2
XXOXO
OXOXX
.OXXO
OXOO.
XXXXX

出力例2
X

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

#横
low_check =[]
board.each do |w|
  if w[0] == w[1] && w[1] == w[2] && w[2] == w[3] && w[3] == w[4] && w[0] != "."
    winer = w[0]
  else
    winer = "D"
  end
    low_check.push(winer)
end

tate_check = []
tate_array = []

for i in 0..4
  a = board[0][i]
  b = board[1][i]
  c = board[2][i]
  d = board[3][i]
  e = board[4][i]
  tate =[a,b,c,d,e]
  tate_array.push(tate)
end

tate_array.each do |w|
  if w[0] == w[1] && w[1] == w[2] && w[2] == w[3] && w[3] == w[4] && w[0] != "."
    winer = w[0]
  else
    winer = "D"
  end
  tate_check.push(winer)
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

naname_array = [sl_1,sl_2]
naname_check = []

naname_array.each do |w|
  if w[0] == w[1] && w[1] == w[2] && w[2] == w[3] && w[3] == w[4] && w[0] != "."
    winer = w[0]
  else
    winer = "D"
  end
  naname_check.push(winer)
end

check =[low_check,tate_check,naname_check]
check.flatten!

if check.include?("O")
  puts "O"
elsif check.include?("X")
  puts "X"
else
  puts "D"
end


puts "解答--------------"
=begin 
$board = []

# 盤面の初期化
(1..5).each { $board.push(gets.chomp.split('')) }

def aligned?(o, x)
  if o == 5
    'O'
  elsif x == 5
    'X'
  else
    'D'
  end
end

def row_aligned?
  result = ''

  $board.each do |row|
    o = 0
    x = 0
    (0..4).each do |i|
      if row[i] == 'O'
        o = o + 1
      elsif row[i] == 'X'
        x = x + 1
      else
        break
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end

  result
end

def collum_aligned?
  result = ''

  (0..4).each do |i|
    o = 0
    x = 0
    $board.each do |row|
      if row[i] == 'O'
        o = o + 1
      elsif row[i] == 'X'
        x = x + 1
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end

  result
end

def oblique_aligned?
  result = ''

  (0..1).each do |time|
    i = 0

    if time.zero?
      j = 0
    else
      j = 4
    end

    o = 0
    x = 0
    (1..5).each do
      if $board[i][j] == 'O'
        o = o + 1
      elsif $board[i][j] == 'X'
        x = x + 1
      end

      i = i + 1

      if time.zero?
        j = j + 1
      else
        j = j - 1
      end
    end

    result = aligned?(o, x)
    break if result != 'D'
  end

  result
end

if row_aligned? == 'O' || collum_aligned? == 'O' || oblique_aligned? == 'O'
  puts 'O'
elsif row_aligned? == 'X' || collum_aligned? == 'X' || oblique_aligned? == 'X'
  puts 'X'
else
  puts 'D'
end

=end