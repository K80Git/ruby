
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

user_data = [
  {
    user: {
      profile: {
        name: 'George'
      }
    }
  },
  {
    user: {
      profile: {
        name: 'Alice'
      }
    }
  },
  {
    user: {
      profile: {
        name: 'Taro'
      }
    }
  }
]
user_dataを利用して、全てのユーザーの名前だけが出力されるようにRubyでコーディングしてください。
ただし、出力結果は次のようになるものとします。

George
Alice
Taro


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
user_data = [
  {
    user: {
      profile: {
        name: 'George'
      }
    }
  },
  {
    user: {
      profile: {
        name: 'Alice'
      }
    }
  },
  {
    user: {
      profile: {
        name: 'Taro'
      }
    }
  }
]

user_data.each do |user|
  puts user[:user][:profile][:name]
end

#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

user_data.each do |u|
  puts u[:user][:profile][:name]
end

あるいは
user_data.each{ |u| puts u.dig(:user, :profile, :name) }

ハッシュの持っている値の取得には、その値に対応するキーを指定します。以下の書き方で取得ができます。
ハッシュ[取得したい値のキー]

二重ハッシュから特定のデータを取得する場合は、[取得したい値のキー]を取得したいデータまで連続して指定すると取得できます。

発展的な別解として、digメソッドを用いても取得できます。digメソッドはRubyに標準で組み込まれているメソッドで、多重階層にあるハッシュの値をまとめて取得できます。

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
