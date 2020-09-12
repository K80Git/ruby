=begin
問題
次のような「ユーザー」と「ユーザーに対応する血液型」を連想配列（辞書）として定義して、それらのキーと値のペアを順に出力してください。


=end
puts "回答--------------"
users = {'Kyoko' => 'B', 'Rio' => 'O', 'Tsubame' => 'AB', 'KurodaSensei' => 'A', 'NekoSensei' => 'A'}

users.each do|key,val|
  puts "#{key} #{val}"
end

u
puts "解答--------------"
=begin 

user2blood = {'Kyoko' => 'B', 'Rio' => 'O', 'Tsubame' => 'AB', 'KurodaSensei' => 'A', 'NekoSensei' => 'A'}

user2blood.each do |user, blood|
  puts "#{user} #{blood}"
end

=end