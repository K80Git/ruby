
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

今日の曜日を表示するコードをDateクラスを使用して記述してください。
ただし、金曜日だった場合だけ以下のように表示の内容を変えてください。

（出力内容）
「今日は月曜日」
「今日は金曜日だ ！！！」

DateクラスとはRubyの標準ライブラリの機能です。Dateクラスを使うには以下一文を記述します。

1
require "date"
次に、Dateクラスを用いて「今日の曜日」を取得する場合は以下のように記述します。

1
Date.today.wday
wdayは曜日を0(日曜日)から6(土曜日)の整数で取得することができるDateクラスに用意されているメソッドです。

たとえば、以下のように使うことができます。

require "date"
day = Date.today.wday
puts day
これを実行すると、曜日に合わせた数字が出力されます。たとえば、木曜日だとすれば4が出力されることになります。



=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------


require "date"

day = Date.today.wday
week= ["「今日は日曜日」","「今日は月曜日」","「今日は火曜日」","「今日は水曜日」","「今日は木曜日」","「今日は金曜日だ！！！」","「今日は土曜日」"]

puts week[day]


#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説
---
  require "date"

  day = Date.today.wday
  days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

  if day == 5
    puts "今日は#{days[day]}だ！！！"
  else
    puts "今日は#{days[day]}"
  end
---
今回はRubyで日付を扱うため、RubyのライブラリにあるDateクラスを使用します。

（1行目）Dateクラスをライブラリから呼び出します。
（3行目）wdayメソッドを用いて曜日を0（日曜日）から6（土曜日）の整数にしたときの「今日」の値を取得します。
（4行目）0番目に日曜日から始まる文字列を定義します。
（6〜10行目）dayの値が5（金曜日）か否かで条件分岐させます。たとえば、今日が金曜日だった場合はday=5となり、daysの5番目の値である金曜日が出力されるようになります。

（１ヶ所違うごとに-2点）

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
