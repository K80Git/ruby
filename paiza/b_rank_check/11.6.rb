=begin
問題
次のような占いプログラムを作成してください。

「ユーザー」と「ユーザーに対応する血液型」、「血液型」と「血液型に対応する占い結果」が与えられます。

それぞれのユーザーに対応する占い結果を表示してください。

入力例の1つ目は、ユーザーの血液型についてのラッキーカラーの占いです。

入力例の2つ目は、ユーザーの星座についてのラッキーパーソンの占いになっています。
「血液型」として「星座」などのさまざまな文字列を利用できるようにすることで、他の占いにも対応する必要があることに注意してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

n
(ユーザー_1) (ユーザー_1の血液型)
(ユーザー_2) (ユーザー_2の血液型)
(ユーザー_3) (ユーザー_3の血液型)
...
(ユーザー_i) (ユーザー_iの血液型)
...
(ユーザー_n) (ユーザー_nの血液型)
m
(血液型_1) (血液型_1の占い結果)
(血液型_2) (血液型_2の占い結果)
(血液型_3) (血液型_3の占い結果)
...
(血液型_j) (血液型_jの占い結果)
..
(血液型_m) (血液型_mの占い結果)


入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
1から n までの各ユーザーについて順に、ユーザーとその占い結果を半角スペース区切りで出力してください。
最後は改行し、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・1 ≦ n ≦100
・1 ≦ m ≦100
・(ユーザー_i)は、半角英数字からなる1から20文字までの文字列
・(血液型_j)は、半角英数字からなる1から20文字までの文字列
・(血液型_jの占い結果)は、半角英数字からなる1から20文字までの文字列
・(ユーザー_iの血液型)と等しい、(血液型_j)が必ず存在
・i ≠kのとき、(ユーザー_i)と(ユーザー_k)は異なる文字列
・j ≠kのとき、(血液型_j)と(血液型_k)は異なる文字列

入力例1
5
Kyoko B
Rio O
Tsubame AB
KurodaSensei A
NekoSensei A
4
A red
B green
O blue
AB yellow

出力例1
Kyoko green
Rio blue
Tsubame yellow
KurodaSensei red
NekoSensei red

入力例2
5
Kyoko shishiza
Rio futagoza
Tsubame otomeza
KurodaSensei yagiza
NekoSensei mizugameza
5
shishiza the_first_person
yagiza the_second_person
otomeza the_first_cat
mizugameza the_first_dog
futagoza NekoSensei

出力例2
Kyoko the_first_person
Rio NekoSensei
Tsubame the_first_cat
KurodaSensei the_second_person
NekoSensei the_first_dog

入力例3
3
AAA aaa111
BBB bbb222
CCC ccc333
5
aaa111 zzz
bbb222 yyy
ccc333 xxx
ddd444 www
eee555 vvv

出力例3
AAA zzz
BBB yyy
CCC xxx

=end
puts "回答--------------"
users = {}
luck = {}

(1..gets.to_i).each do
  temp = gets.chomp.split(" ")
  users[temp[0]] = temp[1]
end

(1..gets.to_i).each do
  temp = gets.chomp.split(" ")
  luck[temp[0]] = temp[1]
end

users.each do |name,blood|
  puts "#{name} #{luck[blood]}"
end

puts "解答--------------"
=begin 

n = gets.chomp.to_i
user2blood = {}
(1..n).each do
  user, blood = gets.chomp.split(' ')
  user2blood[user] = blood
end

m = gets.chomp.to_i
blood2result = {}
(1..m).each do
  blood, result = gets.chomp.split(' ')
  blood2result[blood] = result
end

users = user2blood.keys
users.each do |user|
  blood = user2blood[user]
  result = blood2result[blood]
  puts "#{user} #{result}"
end
=end