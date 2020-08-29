
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題
class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

end

上記のコードに追加を行い、以下の出力結果を得られるようにしてください。ただし、クラスとインスタンスを使用するものとします。

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

  def info
    puts "著者:#{@author}"
    puts "タイトル:#{@title}"
    puts "本文:#{@content}"
  end  
end

book1 = Article.new("阿部","Rubyの素晴らしさについて","Awesome Ruby!")

book1.info


#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def author
    @author
  end

  def title
    @title
  end

  def content
    @content
  end

end
article = Article.new("阿部", "Rubyの素晴らしさについて", "Awesome Ruby!")
puts "著者: #{article.author}"
puts "タイトル: #{article.title}"
puts "本文: #{article.content}"


（3〜7行目）initializeメソッドで宣言されたインスタンス変数に、阿部、Rubyの素晴らしさについて、Awesome Ruby!という3つの値が代入されます。
（9〜19行目）上記インスタンス変数の値を返すためのインスタンスメソッドをそれぞれ定義しています。
（22行目）Articleクラスのインスタンスを生成し、変数articleに代入します。その際に実引数として阿部、Rubyの素晴らしさについて、Awesome Ruby!という3つの値を、仮引数author、 title、contentにそれぞれ渡しています。
（23〜25行目）最後に、9〜19行目で定義づけたメソッドを呼び出します。
=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
