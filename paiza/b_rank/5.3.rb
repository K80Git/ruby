=begin
問題
指定された配列（リスト）を定義し、配列（リスト）の要素をインデックス順に１行ずつ出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
なし

"Nara", "Shiga", "Hokkaido", "Chiba"
を要素に持つ配列（リスト）をプログラムで定義し、使用すること。


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
配列（リスト）の要素をインデックス順に１行ずつ、全て表示してください。

Nara
Shiga
Hokkaido
Chiba

最後は改行し、余計な文字、空行を含んではいけません。

条件
なし



=end
puts "回答--------------"

pref = ["Nara", "Shiga", "Hokkaido", "Chiba"]

puts pref

puts "解答--------------"
=begin 

cities = ['Nara', 'Shiga', 'Hokkaido', 'Chiba']

cities.each do |city|
  puts city
end

=end