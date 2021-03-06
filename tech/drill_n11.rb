
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

名前を入力する機能を作成しましょう。
名前以外にピリオド(.)や空白があるとエラーを表示させます。

※わからない場合はAPIを利用して問題を解きましょう。
参考URL: https://docs.ruby-lang.org/ja/search/

出力例：
登録したい名前を入力してください(例)YamadaTaro

YamadaTaro → 登録が完了しました
Yamada.Taro→!エラー!記号は登録できません
Yamada Taro → !エラー!空白は登録できません

ヒント
include?メソッドを使いましょう。

include?
include?メソッドは指定した要素が、配列や文字列内に含まれているかを判定するメソッドです。


array = ["foo", "bar"]
puts array.include?("bar")
# => true
puts array.include?("hoge")
# => false

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

name = "Yamada Taro"

def checker(name)
  if name.include?(" ")
    puts "空白は登録できません"
  elsif name.include?(".")
    puts "記号は登録できません"
  else
    puts "登録完了しました"
  end
end

checker(name)




#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説
解説
def check_name(str) 
  if str.include?(".")
    puts "!エラー!記号は登録できません"
  elsif str.include?(" ")
    puts "!エラー!空白は登録できません"
  else
    puts "登録が完了しました"
  end
end
puts "登録したい名前を入力してください(例)YamadaTaro"
str = gets
check_name(str) 

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
