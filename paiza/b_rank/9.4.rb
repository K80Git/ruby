=begin
問題
1行目の英大文字 X から、2行目の英大文字 Y の範囲に3行目のアルファベット C が含まれていれば"true", そうでなければ"false"と出力してください。
X が Y よりもアルファベット順で後ろになる場合(X = 'G', Y = 'F'のときなど)も"false"と出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

X
Y
C

入力値最終行の末尾に改行が１つ入ります。


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
出力は、 "true" または "false" のどちらかです。

条件
・X, Y, Cはそれぞれ英大文字です。

入力例1
A
D
C

出力例1
true

入力例2
D
D
D

出力例2
true

入力例3
A
D
Z

出力例3
false

=end
puts "回答--------------"

st = gets.chomp
fi = gets.chomp
mido = gets.chomp

st_i = 0
fi_i = 0
mido_i = 0

alfa = ('A'..'Z').to_a

alfa.each_with_index do |al,i|
  if al == st
    st_i = i
  end
end

alfa.each_with_index do |al,i|
  if al == fi
    fi_i = i
  end
end

alfa.each_with_index do |al,i|
  if al == mido
    mido_i = i
  end
end

if st_i <= mido_i && mido_i <= fi_i
  puts true
else
  puts false
end



puts "解答--------------"
=begin 

string = []
3.times do
  string.push(gets.chomp)
end

puts string[0].ord <= string[2].ord && string[2].ord <= string[1].ord
=end