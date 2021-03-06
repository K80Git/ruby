
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

以下の配列から、数を探して何番目に含まれているか結果を返すメソッドをsearchとeach_with_indexを用いて作成してください。

1
input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
ヒント
 search

（使用例）

search(12, input)
=> 4番目にあります

search(7, input)
=> その数は含まれていません
 each_with_index
each_with_indexはRubyに標準で組み込まれているメソッドの1つです。要素の繰り返し処理と同時に、その要素が何番目に処理されたのかも表すことができます。

以下のように書きます。


配列名.each_with_index  do |item, i|

end
具体的には以下のように使うことができます。


fruits = ["メロン", "バナナ", "アップル"]

fruits.each_with_index do |item, i|
 puts "#{i}番目のフルーツは、#{item}です。"
end
これを実行すると、以下のような出力結果が得られます。


0番目のフルーツは、メロンです。
1番目のフルーツは、バナナです。
2番目のフルーツは、アップルです。


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]

num = gets.to_i

def search(num,input)
  if input.include?(num)
    input.each_with_index do |inte,i|
      if inte == num
        puts "#{i+1}番目にあります"
      end
    end
  else
    puts "その数値は含まれていません"
  end
end

search(num,input)

#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説
def search(target_num, input)

  input.each_with_index do |num, index|
    if num == target_num
      puts "#{index + 1}番目にあります"
      return
    end
  end
  puts "その数は含まれていません"
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
search(11, input)

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
