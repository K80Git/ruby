
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題



=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------

class Fruites
  sum = 0

  def initialize(name,price)
    @name = name
    @price = price
  end

  def Fruites.get_sum
    @prices = Fruites.price
    
    prices.each do|price|
      sum += price
    end
    puts "合計金額は#{sum}円です"
  end

end

apple = Fruites.new("りんご",120)
orange = Fruites.new("オレンジ",200)
strawberry = Fruites.new("イチゴ",60)

Fruites.get_sum


#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説

  class Fruits
    @@sum = 0

    def self.get_sum
      puts "合計の価格は#{@@sum}円です"
    end

    def initialize(name, price)
      @name = name
      @price = price
      @@sum = @@sum + price
    end
  end

  apple = Fruits.new("リンゴ", 120)
  orange = Fruits.new("オレンジ", 200)
  strawberry = Fruits.new("イチゴ", 60)

  Fruits.get_sum

=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
