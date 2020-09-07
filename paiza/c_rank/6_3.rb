puts "問題--------------"
=begin

カウンター魔法を得意とするパイザ君は、同じくカウンター魔法を使うモンスターと戦っています。バトルはターン制で、パイザ君が先攻で、パイザ君とモンスターで交互に魔法を使い合います。パイザ君の魔法は 1 回目と 2 回目に使うときにはダメージ 1 ですが、 3 回目以降の n 回目には、(モンスターから受けた (n - 1) 回目の攻撃のダメージ) + (モンスターから受けた (n - 2) 回目の攻撃のダメージ) のダメージを与えます。モンスターの魔法はこれよりも強力で、 1 回目と 2 回目には同じくダメージ 1 ですが、 3 回目以降の n 回目には、 (パイザ君から受けた (n - 1) 回目の攻撃のダメージ) * 2 + (パイザ君から受けた (n - 2) 回目の攻撃のダメージ) のダメージを与えます。

パイザ君は自分がどれくらいモンスターの攻撃を耐えられるか知りたいと思っています。パイザ君の体力を H として、両者が同じ魔法を使い続けたとき、モンスターの何回目の攻撃でパイザ君の体力が 0 以下になるかを出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
入力は以下のフォーマットで与えられます。

H

1 行目にパイザ君の体力を表す整数 H が与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
モンスターの何回目の攻撃でパイザ君の体力が 0 以下になるかを出力してください。
末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

3 ≤ H ≤ 10^8

入力例1
7

出力例1
4

入力例2
35

出力例2
6

=end
puts "回答--------------"
=begin 
paiHP = gets.to_i

atc_array = [1,1]

for i in 1..50
  leng = atc_array.length
  num = atc_array[leng-2]+atc_array[leng-1]
  atc_array.push(num)
end

dama_array = [1,1]
for i in 1..50
  num = (atc_array[i].to_i * 2) + atc_array[i-1].to_i
  dama_array.push(num)
end

total_damage=[]
dama_num = 0
dama_array.each do |damage|
  dama_num += damage
  total_damage.push(dama_num)
end

while paiHP >= 0




=begin 
count = 0
while 
  count += 1
  paiHP -= dama_array[count-1]
end 

puts count 
=end 
hp = gets.to_i

pai_atac_array = [1,1]
mon_atac_array = [1,1]

for i in 1..50
  pai_leng = pai_atac_array.length
  mon_leng = mon_atac_array.length

  pai_atac_damage = mon_atac_array[mon_leng-1] + mon_atac_array[mon_leng-2]
  mon_atac_damage = (pai_atac_array[pai_leng-1]*2) + pai_atac_array[pai_leng-2]
  pai_atac_array.push(pai_atac_damage)
  mon_atac_array.push(mon_atac_damage)
end

count = 0
while hp > 0
  hp -= mon_atac_array[count]
  count += 1
end

puts count




