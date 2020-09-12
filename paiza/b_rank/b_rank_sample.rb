=begin
問題
東京の下町に長テーブルで有名な老舗うなぎ屋がありました。

そのうなぎ屋にはとても大きい長テーブルがあり、テーブルの周りにn個の座席が配置されています。
座席には、時計回りに1, 2, …, nと番号が振られています。
座席はテーブルの周りに配置されているので、座席番号nの座席と1の座席は隣接しています。（下記図を参照の事）



今、m個のグループの人達が座席に順番に座りに来ます。i番目(1≦i≦m)のグループの人数をa_i人とします。
彼らは、長テーブルに並んだ座席の内、ある連続するa_i個の座席に一斉に座ろうとします。

ただしお客さんは江戸っ子なので、それら座席のうち、いずれか一つでも既に先客に座られている座席があった場合、
一人も座らずにグループ全員で怒って帰ってしまいます。江戸っ子は気が早いんでぃ。

入力では、i番目のグループが座ろうとする連続した座席の位置は、整数b_iにより指定されます。
i番目のグループは、座席番号b_iの座席を始点として、そこから時計回りにa_i個分の座席に座ろうとします。

最後のグループが座りに来た後、無事に長テーブルの座席に着席出来ている人数を出力するプログラムを作成してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力はm+1行から成ります。
1行目にはn(座席数)とm(グループ数)が半角スペース区切りで入力されます。
i+1行目(1≦i≦m)には2個の整数a_i(グループの人数)とb_i(着席開始座席番号)が半角スペース区切りで入力されます。


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
最後のグループが座りに来た後、無事に座席に着席出来ている人数を1行で出力してください。

条件
全てのテストケースにおいて、入力される値は以下の条件を満たします。

1≦n≦100
1≦m≦100
1≦a_i≦n
1≦b_i≦n

入力例1
6 3
3 2
1 6
2 5

出力例1
4

入力例2
12 6
4 6
4 8
4 10
4 12
4 2
4 4

出力例2
12

=end
puts "回答--------------"



#seat = Array.new(n,0)

=begin m = 3-1
s_no = 2-1

for i in (s_no)..(s_no+m)
  seat[i] = 1
end

print seat
puts ""
m2 = 1 -1
s_no2 = 6 -1

for i in (s_no2)..(s_no2+m2)
  seat[i] = 1
end

print seat
puts ""
for n in 
m3 = 1 -1
s_no3 = 5 -1

for i in (s_no3)..(s_no3+m3)
  sum = 0
  for j in  (s_no3)..(s_no3+m3)
    sum += seat[j]
  end

  if sum ==0
    seat[i] = 1
  end
end

print seat

=end
count = gets.split(" ")
all_seat = count[0].to_i
all_group = count[1].to_i

all_seat_num = Array.new(all_seat,0)

for i in 1..all_group
  one_group = gets.split(" ")
  member_count = one_group[0].to_i
  select_seat = one_group[1].to_i
  group_seat_array = Array.new(member_count)
  for seat_num in 0..(member_count-1)
    if select_seat + seat_num <= all_seat
      seat = select_seat + seat_num
      group_seat_array[seat_num] = seat
    else
      seat = select_seat + seat_num - all_seat
      group_seat_array[seat_num] = seat
    end
  end

  already_seat_count = 0
  group_seat_array.each do |seat_num|
    already_seat_count += all_seat_num[seat_num-1]
  end

  if already_seat_count == 0
    group_seat_array.each do |seat_num|
      all_seat_num[seat_num-1] = 1
    end
  end
end

get_seat_count = 0
all_seat_num.each do |i|
  get_seat_count += i
end

puts get_seat_count



puts "解答--------------"
=begin 


=end