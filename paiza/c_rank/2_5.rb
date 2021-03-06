puts "問題--------------"
=begin

時刻を表す長さ 5 の文字列 S が “XX:XX” の形式で与えられます。入力された時刻を時と分に分け、時、分の順番で改行区切りで出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

S

1 行目に文字列 S が与えられます。

S


S は “XX:XX” という形をしており、 ":" の左側は時を、右側は分を表します。時や分が一桁である場合、十の位は 0 で埋められます。また、 00:00 から 23:59 までの 24 時間表記を採用しています。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
入力された時刻を時と分に分け、時、分の順番で改行区切りで出力してください（2行出力する）。その際、入力値の十の位が 0 である場合には一の位だけ出力してください。
末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
入力例1
12:34

出力例1
12
34

入力例2
01:03

出力例2
1
3

=end

puts "回答--------------"

timeStr = gets.chomp

timeArr = timeStr.split(":")

h = timeArr[0].to_i
m = timeArr[1].to_i

puts h
puts m