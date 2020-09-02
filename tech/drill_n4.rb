
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題
上記のコードに追加を行い、以下の出力結果を得られるようにしてください。ただし、クラスとインスタンスを使用するものとします。
class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

end

著者: 阿部
タイトル: Rubyの素晴らしさについて
本文: Awesome Ruby!
=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------


class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def show 
    puts "著者:" + @author
    puts "タイトル:" + @title
    puts "本文:" + @content
  end
end

book = Article.new("阿部","Rubyの素晴らしさについて","Awesome Ruby!")

book.show


#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
