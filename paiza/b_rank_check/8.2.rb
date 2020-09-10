=begin
問題
指定された配列（リスト）の定義の中で、同じ値が存在した場合はtrueを、そうでない場合はfalseを出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
なし

HND, NRT, KIX, NGO, NGO
を要素に持つ配列（リスト）をプログラムで定義し、使用すること。


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
配列（リスト）の要素に重複があればtrueを、重複がなかったらfalseを出力する。
最後は改行し、余計な文字、空行を含んではいけません。

条件
なし

=end
puts "回答--------------"

array = ["HND", "NRT", "KIX", "NGO", "NGO"]

 array = array.uniq?

puts "解答--------------"
=begin 
array.size.times do |i|
    array.size.times do |j|
        if i != j and array[i] == array[j]
            is_duplicate = true
        end
    end
end

puts is_duplicate


# 解答例2
array = %w[HND NRT KIX NGO NGO]

puts array.size != array.uniq.size

=end