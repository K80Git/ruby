
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題
任意の2つの文字列があります。
どちらかの文字列がもう一方の文字列の最後にある場合はTrueを
ない場合はFalseを出力するプログラムを作りましょう。
（大文字と小文字は区別されません）。

※わからない場合はAPIを利用して問題を解きましょう。
参考URL: https://docs.ruby-lang.org/ja/search/

出力例：
end_other('Hiabc', 'abc') → True
end_other('AbC', 'HiaBc') → True
end_other('abc', 'abXabc') → True

sliceの範囲指定
範囲を指定して要素を切り取る場合は、以下のように記述して使うことができます。

# 要素を定義
array = "Hiabc"

#配列番号（インデックス番号）の-3から-1の範囲の文字列を切り取る
array.slice(-3..-1)
#=> abc
=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

def end_other(a,b)
  a = a.downcase
  b = b.downcase
  
  aLeng = a.length
  bLeng = b.length
  aEnd = a.slice(-(bLeng)..-1)
  bEnd = b.slice(-(aLeng)..-1)
  
  puts aEnd
  puts b

  if a == bEnd || b == aEnd
    puts "True"
  else
    puts "False"
  end
end

a = "abcdefg"
b = "eg"

end_other(a,b)

#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説
def end_other(a, b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length
  if b_down.slice(-(a_len)..- 1) == a_down || a_down.slice(-(b_len)..- 1) == b_down
    puts "True"
  else
    puts "False"
  end
end
解説
大文字と小文字を区別しないという条件のため、2〜3行目で任意の2つの文字列を小文字に変換しています。

4〜6行目でどちらかの文字列がもう一方の文字列の最後にある場合を区別するための処理を行っています。slice(-(a_len)..- 1としているのは、対象の文字列分を切り取るための記述です。

たとえば、以下のようにend_other('Hiabc', 'abc')でメソッドを呼び出し、実行した場合を考えてみましょう。


def end_other(a, b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length
  if b_down.slice(-(a_len)..- 1) == a_down || a_down.slice(-(b_len)..- 1) == b_down
    puts "True"
  else
    puts "False"
  end
end

end_other('Hiabc', 'abc') 
そうすると、2〜5行目で以下のように処理されます。

a_down = hiabc
b_down = abc
a_len = 5
b_len = 3
続いて16行目で、abcの最後にHiabcが含まれているか、Hiabcの最後にabcという文字列が含まれているかを判別しています。

条件式の左辺b_down.slice(-(a_len)..- 1)にこれまでわかっていることを当てはめると、b_down.slice(-5..-1)となります。しかし、b_down = abcとなっているのでインデックス番号-5から-1という条件で切り取ることができません。そのため、この部分はnilとなります。結果、nil == a_downについては不適になるので、falseになります。

続いて条件式の右辺を見てみましょう。同様に、a_down.slice(-(b_len)..- 1)について、これまでわかっていることを当てはめると、a_down.slice(-3..-1)となります。ここで、hiabcという文字列の最後にabcが含まれているかを確認したいので、abcという文字列分を左から数え、hiabcの最後までを範囲指定していることがわかります。そしてa_down = hiabcとなるので、インデックス番号-3から-1という条件で切り取るとabcが残ります。abc == b_downは条件を満たすので、trueとなります。

この結果、最終的にTrueと出力されるようになります。
=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
