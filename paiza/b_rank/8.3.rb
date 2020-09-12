=begin
問題
指定された配列（リスト）の定義の中で、同じ要素の数をカウントして、その数を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
なし

"HND", "NRT", "KIX", "NGO", "NGO", "NGO", "NGO", "NGO"
を要素に持つ配列（リスト）をプログラムで定義し、使用すること。
ただし、2つ以上同じ要素が出現するのは、1種類の文字列についてだけです。


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
同じ要素の数をカウントして、その数を出力してください。
最後は改行し、余計な文字、空行を含んではいけません。

=end
puts "回答--------------"

array = ["HND", "NRT", "KIX", "NGO", "NGO", "NGO", "NGO", "NGO"]
array_uniq = array.uniq

count_array = []
array_uniq.each do |str|
  num = 0
  array.each do |low|
    if str == low
      num += 1
    end
  end
  count_array.push(num)
end
count =0
count_array.each do |con|
  if con != 1
    count += con
  end
end

puts count
  

puts "解答--------------"
=begin 
array = ['HND', 'NRT', 'KIX', 'NGO', 'NGO', 'NGO', 'NGO', 'NGO']
count = {}

array.each do |element|
  if count[element]
    count[element] = count[element] + 1
  else
    count[element] = 1
  end
end

count.each do |_key, value|
  if value != 1
    puts value
  end
end

=end