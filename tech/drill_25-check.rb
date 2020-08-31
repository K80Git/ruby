
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題

非常に有名なプログラミングの問題です。1〜100までの数字をターミナルに出力してください。ただし、「3の倍数」のときは数字の代わりに文字列でFizzと、「5の倍数」のときはBuzz、両方の倍数である「15の倍数」のときはFizzBuzzと出力してください。

作ってもらうプログラムのひな形は以下です。

question1.rb
def fizz_buzz
  # ここに処理を書き加えてください
end

fizz_buzz

① 以下の4つに条件を分岐しましょう

値が15の倍数である
値が3の倍数である
値が5の倍数である
上の3つの条件のどれにもあてはまらない
②「〇〇の倍数」を導き出す時は剰余演算子を用いましょう

③条件を指定して繰り返し処理をする場合は、whileというメソッドを使いましょう

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

def fizz_buzz
  num = 1
  while (num <= 100) do
    if (num % 3 == 0) && (num % 5 == 0)
      puts "FizzBuzz"
    elsif (num % 3) == 0
      puts "Fizz"
    elsif (num % 5) == 0
      puts "Buzz"
    else
      puts num
    end

    num = num + 1
  end
end

fizz_buzz
  






#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

模範解答
question1.rb

def fizz_buzz
  num = 1
  while (num <= 100) do
    if (num % 3 == 0) && (num % 5 == 0)
      puts "FizzBuzz"
    elsif (num % 3) == 0
      puts "Fizz"
    elsif (num % 5) == 0
      puts "Buzz"
    else
      puts num
    end

    num = num + 1
  end
end

fizz_buzz

解説
この問題は条件分岐と条件の組み合わせを利用します。まずは、1〜100までの数字をターミナルに出力するためのプログラムを書きます。

question1.rb
def fizz_buzz
  num = 1
  while (num <= 100) do
    puts num

    num = num + 1
  end
end

fizz_buzz
これは簡単ですね。そのあと、「3の倍数」のときは数字の代わりに文字列でFizzと、「5の倍数」のときはBuzzと出力するようにします。これはif文を使えば問題ありません。

question1.rb
def fizz_buzz
  num = 1
  while (num <= 100) do
    if (num % 3) == 0    # 3の倍数のとき
      puts "Fizz"
    elsif (num % 5) == 0 # 5の倍数のとき
      puts "Buzz"
    else                 # それ以外のとき
      puts num
    end

    num = num + 1
  end
end

fizz_buzz
実はif文のthenは省略することができます。ここからはthenを省略して書きます。

このままでは両方の倍数である「15の倍数」のときは4行目の「3の倍数であるか」という条件式が真になり、Fizzと表示されてしまいます。なので、if文の最初に「15の倍数」のときはFizzBuzzと出力する条件を追加します。

question1.rb
def fizz_buzz
  num = 1
  while (num <= 100) do
    if (num % 3 == 0) && (num % 5 == 0) # 3の倍数かつ5の倍数のとき
      puts "FizzBuzz"
    elsif (num % 3) == 0                # 3の倍数のとき
      puts "Fizz"
    elsif (num % 5) == 0                # 5の倍数のとき
      puts "Buzz"
    else                                # それ以外のとき
      puts num
    end
    num = num + 1
  end
end

fizz_buzz
ここで4行目では条件式の組み合わせを利用しています。


if (num % 3 == 0) && (num % 5 == 0) # 3の倍数かつ5の倍数のとき
end
もちろん15の倍数であることを利用して以下のように書いても正解です。


if (num % 15 == 0) # 3の倍数かつ5の倍数のとき=15の倍数のとき
end
重要なのは一番上でif (num % 3 == 0) && (num % 5 == 0)の条件を書くことです。そうすれば、それ以下のelsifの条件式は15の倍数ではないことが前提となるからです。

fizz_buzz

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
