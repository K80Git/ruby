
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題
1〜10までの数値を順番に足し合わせて、最後に全て足した結果をターミナルに出力するプログラムを書いてください。
条件：必ずtimes文を使ってください。


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

int = 0

time do |10|
# time の方法を忘れてしまた。再度勉強が必要

#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説
---
  sum = 0

  10.times do |i|
    sum = sum + i + 1
  end

  puts sum
---
  sum = 0

  10.times do |i|
    sum += i + 1
  end

  puts sum
---

このプログラムの考え方は以下になります。

①合計値を保存しておく変数sumを用意する
②変数sumに1〜10の数値を順番に足していく
③順番に足していく処理をtimes文の繰り返しで置き換える
④変数sumの値をターミナルに出力

①合計値を保存しておく変数sumを用意する
1に2を足し、
その結果に3を足し、
その結果に4を足し、
その結果に5を足し、...と10まで繰り返していきます。

よって常に結果を保存しておく変数が必要になります。これを変数名sumとして定義しておきます。まだ何も足してない状態なので、sumには0を代入しておきます。

②変数sumに1〜10の数値を順番に足していく
変数sumに1〜10の数値を順番に足していくプログラムをそのまま書いてみましょう。

③順番に足していく処理をtimes文の繰り返しで置き換える
times文を使えば、何度も繰り返される同じ処理をまとめることができます。今回まとめられるのはsum += 数値の部分です。

times文は繰り返したい回数.timesと記載して繰り返す数を決めます。今回は1〜10まで順番に足していくため、10回同じような処理が繰り返されます。よって繰り返したい回数は10回です。

数値の部分はどうすればいいでしょうか。繰り返す回数ごとにこの数値は変わります。1回目は1、2回目は2、3回目は3となります。つまり、繰り返しの回数と同じです。
times文では、変数iの中に繰り返しの回数が数値として自動で代入されます。よって、変数iを使えば繰り返しの回数を変数sumに足していくことができます。
ただし、プログラムなので1回目のiの数値は0となります。よってsumに足すのは1増やしたi + 1にしましょう。

④変数sumの値をターミナルに出力
最後にputsメソッドでsumをターミナルに出力すれば終了です。

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------