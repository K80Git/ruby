
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題
以下のように、果物の名前と値段が入った配列があります。
この配列を用いて、果物の名前とそれぞれの合計額が出力される
コードを記述してください。
fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

（出力）
appleの合計金額は670円です
orangeの合計金額は300円です
melonの合計金額は2700円です



=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

fruits_price.each do |sum|
  name = sum[0]
  price = sum[1]
end



#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

fruits_price.each do |fruit|
  sum = 0
  fruit[1].each do |price|
    sum += price
  end
  puts "#{fruit[0]}の合計金額は#{sum}円です"
end
最初に、3行目でfruits_priceから["apple", [200, 250, 220]]という値を取り出し、変数fruitに代入します。その後4行目〜7行目で、fruitの1番目の値[200, 250, 220]から値を1つずつ取り出して、自己代入しながらsumを出力します。丁寧に見ると以下のようになります。

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
