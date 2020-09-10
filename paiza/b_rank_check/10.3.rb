=begin
問題
5行5列の五目並べの盤面が与えられます。

盤面の各マスには、"O"か"X"か"."が書かれています。

"O"と"X"は、それぞれプレイヤーの記号を表します。

同じ記号が横に連続で5つ並んでいれば、その記号のプレイヤーが勝者となります。

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
・勝者が2人になる盤面が、与えられることはありません。

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
O.O.X
OXX.X
O.X.X
OO..X
X.XOX

出力例3
D

=end
puts "回答--------------"

check_array = []

for i in 1..5
  line = gets.chomp.split("")
  if line[0] == line[1] &&line[1] == line[2]&&line[2] == line[3]&&line[3] == line[4] && line[0] != "."
    winer = line[0]
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
array = ['O', 'X']
result = 'D'

(1..5).each do
  string = gets.chomp.split('')

  array.each do |a|
    cnt = 0
    string.each do |s|
      if s == a
        cnt = cnt + 1
      end
    end
    if cnt >= 5
      result = a
    end
  end
end

=end