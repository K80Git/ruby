
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

配列に任意の値が存在するかどうか、検索するコードを作成しましょう。
任意の値が配列内に存在しない場合は、「値は配列内に存在しません」と表示し、
存在する場合は、配列の何番目にあるかを表示してください。

配列　array=[1,3,5,6,9,10,13,20,26,31]

検索はバイナリーサーチ（2分割検索）を使用して行います。

 バイナリーサーチとは
ソート済みのリストや配列に入ったデータ（同一の値はないものとする）に対する検索を行うにあたって、 中央の値を見て、検索したい値との大小関係を用いて、検索したい値が中央の値の右にあるか、左にあるかを判断して、片側には存在しないことを確かめながら検索していく方法。
1回の処理で選択肢が半分になるので、処理速度の向上が期待できる。

出力例：

検索したい数字を入力してください

5は配列の2番目に存在します 

検索したい数字を入力してください
7
7は配列内に存在しません
ヒント
まず.countメソッドを使用して配列内の値を取得し、変数number_of_elementsとします。
binary_searchメソッド内で配列の要素数を半分にしたものを変数centerとしましょう。
while文を使用して、当てはまるまで計算を繰り返します。

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

array=[1,3,5,6,9,10,13,20,26,31]
edPnt = array.count

def check(array,edPnt,target)
  stPnt = 0
  while stPnt <= edPnt
    centPnt = (stPnt + edPnt)/2
    if array[centPnt] == target
      return centPnt
    elsif array[centPnt] < target
      stPnt = centPnt + 1
    else
      edPnt = centPnt - 1
    end
  end 
  return -1
end

target = gets.to_i

reslt = check(array,edPnt,target)

if reslt == -1
  puts "#{target}は存在しません"
else
  puts "#{target}は#{reslt+1}番目にあります"
end






#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

def binary_search(array, right, target)
  left = 0
  while left <= right
    center = (left + right) / 2
    if array[center] == target
      return center
    elsif array[center] < target
      left = center + 1
    else
      right = center - 1
    end
  end
  return -1 
end

array=[1,3,5,6,9,10,13,20,26,31]

puts "検索したい数字を入力してください"
target = gets.to_i
number_of_elements = array.count

result = binary_search(array, number_of_elements, target)

if result == -1
  puts "#{target}は配列内に存在しません"
else
  puts "#{target}は配列の#{result}番目に存在します "
end


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
